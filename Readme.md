# Terraform


## Infrastructure as Code 

Three tier infra - 1 project - 2 Month
AWS - VPC, Subnet, IGW, NAT, EC2, Loadbalncer, AS, RDS, Route53, Cloudfront
after 1 year - 
Difficult Manage 
Documentation / Designs
Manually | Data integrity
Two cloud engineer - best practices - Reliable
2 Project - 2 month
-------

Coding - Terraform, Cloud Formation, Shell Script, Ansible, etc

OpenSource - IAC tool
HashiCorp
Terraform - Configuration

Language: Terraform Language

Blocks
-----
Resource
Data
Output
Variable
Provider
Terraform
Module

extension: .tf, .tf.json

Data types:
string: "Shubham kalsait", "1234235"
number: 143973249 
bool: true/false, 0/1
list: ["apple", "banana", "apple", 131643,"mango"] mutable
tuple: ("apple", "banana", "apple", 131643,"mango") immutable
set: {"apple", "banana", 131643, "mango"} mutable
map: {fruit = "apple", name = "shubham", address = "Hinganghat" }


## Installation Terraform


## Terraform Lifecycle

Write Code - Terraform configuration .tf

terraform init - initialise terraform provider, download lib, download plugins, initialize modules, variables varify
.terraform/  
.terraform.lock.hcl - 

terraform plan - Blueprint infrastructure
+ (Add resource) - (Delete Resource) ~ (Change Resource) 

terraform apply - Create infrastructure
terraform.tfstate - infra state, terraform refer tfstate first 
terraform.tfstate.backup
terraform destroy - delete complete infra



pedefined tf conf

ec2
rds
route53
lb
as
vpc
s3
iam


Resume intro naukri
project
QNA
Documents 

WHAT WHY HOW?

Linux - Command, Syntax, example
- How to check configuration?
RAM - free -h 
PRocess - lscpu, top 
HDD - df -hT

TOP - 
time uptime load average 1 5 15
task 
cpu
mem
swap

PID PPID PRI NICE CPU MEM RES SHARE STATE COMmAND

df -hT

disk  fs   utilization mount

Words in file (wc)

SED - 
AWK - 


top 5 highly utlized partition
df -hT | awk '(print $3)' | sort | head -5

404 logs 
cat /var/logs/httpd/error.log | awk '(print $3)' | sort | grep 404 | wc -l


AWS Service (Resources) / Resources (Steps/types)
---

IAM - 
Roles vs policies
MFA
What is IAM

S3 -
What are the properties of s3
s3 lifecycle 
s3 storage classes
how to save cost in infra
how to host static website

ec2 -
troubleshoot 1/2, 0/2
AMI types
Volume types
LB - types
AS - 
instancetype

VPC
VPC Peering
VPC Endpoint
VPC NatGateway
Natgateway V/C Nat instance

CloudWatch 
Alarms, Logs, events

RDS
Advantages 

Route53 -
DNS / routing policy



DevOps
------

Git
----
Merge
Conflict
Push
RollBack








