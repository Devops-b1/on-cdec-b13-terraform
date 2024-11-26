resource "aws_lb_target_group" "tg_home" {
  name     = "tg-home"
  port     = 80
  protocol = "HTTP"
  health_check {
    path = "/"
    port = 80
    protocol = "TCP"
  }
}

resource "aws_lb_target_group" "tg_laptop" {
  name     = "tg-laptop"
  port     = 80
  protocol = "HTTP"
  health_check {
    path = "/laptop/"
    port = 80
    protocol = "TCP"
  }
}

resource "aws_lb_target_group" "tg_mobile" {
  name     = "tg-mobile"
  port     = 80
  protocol = "HTTP"
  health_check {
    path = "/mobile/"
    port = 80
    protocol = "TCP"
  }
}

resource 