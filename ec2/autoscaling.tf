resource "aws_security_group" "my_sg" {
    name = "allow-http-public"
    description = "allow HTTP Port"
    ingress {
        from_port        = 80
        to_port          = 80
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}

resource "aws_launch_configuration" "lc_home" {
    image_id = var.image_id
    instance_type = var.instance_type
    key_name = var.key_pair
    security_groups = aws_security_group.my_sg.id
    user_data = <<EOF
    #!/bin/bash
    yum install httpd -y
    systemctl start httpd
    systmectl enable httpd
    echo "<h1> Hello World </h1> <br> <h2> Welcome to Cloudblitz </h2>" > /var/www/html/index.html
    EOF
}

resource "aws_launch_configuration" "lc_laptop" {
    image_id = var.image_id
    instance_type = var.instance_type
    key_name = var.key_pair
    security_groups = aws_security_group.my_sg.id
    user_data = <<EOF
    #!/bin/bash
    yum install httpd -y
    systemctl start httpd
    systmectl enable httpd
    mkdir /var/www/html/laptop
    echo "<h1> This is Laptop Page" > /var/www/html/laptop/index.html
    EOF
}

resource "aws_launch_configuration" "lc_mobile" {
    image_id = var.image_id
    instance_type = var.instance_type
    key_name = var.key_pair
    security_groups = aws_security_group.my_sg.id
    user_data = <<EOF
    #!/bin/bash
    yum install httpd -y
    systemctl start httpd
    systmectl enable httpd
    mkdir /var/www/html/mobile
    echo "<h1> SALE SALE SALE on mobile Page" > /var/www/html/mobile/index.html
    EOF
}

# name
# launch configuration
# group size
# sclaing policy (condition (CloudWatch - Alarm), action)

resource "aws_autoscaling_group" "asg_home" {
  name                 = "asg-home"
  max_size             = 5
  min_size             = 2
  desired_capacity     = 2
  launch_configuration = aws_launch_configuration.lc_home.name
  vpc_zone_identifier  = [var.subnet_id_1, var.subnet_id_2]
}

resource "aws_autoscaling_policy" "asg_policy" {
  autoscaling_group_name = aws_autoscaling_group.asg_home.name
  name                   = "asg_policy_home"
  policy_type            = "PredictiveScaling"
  predictive_scaling_configuration {
    metric_specification {
      target_value = 50
      predefined_load_metric_specification {
        predefined_metric_type = "ASGTotalCPUUtilization"
      }
      customized_scaling_metric_specification {
        metric_data_queries {
          id = "scaling"
          metric_stat {
            metric {
              metric_name = "CPUUtilization"
              namespace   = "AWS/EC2"
              dimensions {
                name  = "AutoScalingGroupName"
                value = "my-test-asg"
              }
            }
            stat = "Average"
          }
        }
      }
    }
  }
}