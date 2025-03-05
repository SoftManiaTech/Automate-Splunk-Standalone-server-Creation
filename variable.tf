variable "instance_name" {
  type        = string
  description = "Name of the Splunk instance"
}

variable "region" {
  type        = string
  description = "AWS region for deployment"
}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH access"
}

variable "ami_map" {
  type        = map(string)
  description = "AMI ID mapping for each region"
  default = {
    "ap-southeast-1"  = "ami-08f75f3652f7d91ef"
    "us-east-2"       = "ami-092484aa52514c4fd"
    "us-west-2"       = "ami-0f59e596bfab2d9cf"
    "us-east-1"       = "ami-09041c38b0523b954"
    "us-west-1"       = "ami-0f6eefa9bcd20c6fe"
    "ap-south-1"      = "ami-0ce2b421400012344"
    "ap-southeast-2"  = "ami-073d1f71ff3f1b969"
    "ap-northeast-3"  = "ami-0c21205c1ccc847b2"
    "ap-northeast-2"  = "ami-0eddf325ed0603e40"
    "ap-northeast-1"  = "ami-03fe4f0017a618b75"
    "ca-central-1"     = "ami-0ea202e2fd68e541a"
    "eu-central-1"    = "ami-0b43a36b3d38be336"
    "eu-west-1"       = "ami-079f8d6cfabe5a428"
    "eu-west-2"       = "ami-0b6374030d6461abe"
    "eu-west-3"       = "ami-0265048c92cbd07fa"
    "eu-north-1"      = "ami-084f0bd811ba09257"
  }
}

variable "instance_type" {
  type        = string
  description = "Instance type for the Splunk server"
  default     = "t2.medium"
}

variable "storage_size" {
  type        = number
  description = "Size of the root volume in GB"
  default     = 50
}

variable "elastic_ip_needed" {
  type        = bool
  description = "Whether to assign an Elastic IP to the instance"
  default     = true
}

variable "ssh_public_key" {
  type        = string
  description = "SSH public key for authentication"
}