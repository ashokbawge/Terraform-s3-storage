variable "aws_region" {
       description = "The AWS region to create things in." 
       default     = "ap-south-1" 
}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  '''-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAkL/PfOnX4TsW1Jr0GESzaD6LT959oTRmkW5HpUTc1D2FjXrI
OcFfeIYmfsmu5vM2BDeGOXPJTzPk2HHUdou9HlGyFsjmerUh2BGcwPCTZe86zgmU
VPktL0P4x1lHK3NDLSrJN8EZKxWR9MUKucyKTeessdmFBeO5U/ip7UuT2mVdNVo6
+keCspJ6r0XooBTqzsygNc+OaR9cgEGXsZPcs81XKm+qtFpp+TVp+REub2fHTUWx
/q21vKA6R6sqaknQLQPxiJsdF9vjPQzZlGIiLHJhCr5VgEiDtC47aaS1JJGhs+fN
RHBscjnMzheYCNjx8rh+mI0c4Wiekkdi2v/oNQIDAQABAoIBAHkZUBCUXvza/529
SYvoJiSHduvKG1a7zTfMiHo3I30ZP1t/JnZTVnkx2pDmUMJ9JWrfvRbhzMDLjKCc
kwDepcjw1kqDp3dvhLINAhTU8KwuOgdYMlXo5amOd1roUUeDtebazd8sWM8Xy7V5
CCErg2Xr9ioQ7l5gB5O+DQQu37KtIDM1P9SGX1283KPdc65dkUDWwxgZ/YmT46VN
QD3ireyIYuGaFbiXmW4bT49QyDfdNk5RHA+Lyq2MxDRsnmD7OgGoIjqvvR3mCI88
t/xWX2RmFNdyVFkr1l8d+SNctZGDMd+UfRAaawY3RI8yQj4rNHiBVjhYhVOZgs2H
WAyPcaECgYEA+RlpHHgAdDo0OrL84jKBjBFzVNuJ7S8+Xnf6r2T/79+2cOu83waY
siSVnYQ96z1KSCm8ClI/t2LPq+nT7F5xSbsov6xOLk+uYzW8LifFhEdS6hQLVh4T
Y4udPFy4dKql1A8LZbGQbd0jbvgwb0HYkc1nFX8owk9OXAFsjC1zaTkCgYEAlMJb
8UV7EzakBcvWsPUAKmlclOjfxDyahpn8IT4MTvUIbGHocQ70q+SlHRVdW1m4ipgf
S/EteIK1eztbHcQoq3Ays+6fP80biT1HYb8HRM0Q0RVcMi5BBkcvOse8xvQbXX+z
71CKFBXJ6DN3lwo4SNubwd5uq1Xo5/n8x6wIot0CgYEA2NJyeLJHiuOi1Lk5f1aB
Br+lyOYzXz3xJt9+WC8sy8nJju7S/rpKLT3E8U/Labh2sOuK3t0K0wByTWyB58up
BomfhX9gqdT3sSlzvCUoOuSuWkvKNlKFg+9hlMoMUJi9MSFLRWBSnB6RmiT0W9NP
xFGq+b4uZzwKs/EVX8qsG5kCgYEAhpom33VjG8uBNs1ugcfuUnHrl8HvV30OxWRn
wxyFvpvw90DQNhy2PyMwU9SVGKdiV+W1y916q2R6GftnQtPPiPCIsE7mQbCxjcio
4kUbqqFy6f1N4wn/RFL85U79/Xe7myqGAbD6f5oHi9emCkDxFNvBX/aIZPfjOqP0
mieL2PECgYB1VyYjxy1iToax02Bol3bAlrw5qMtufFFkYi7szDTcqXvUx7AsHayM
EGlBYlGY/GiaOpuu/7iUFTAHiP9vlMudxjM44M9l32jNIVKvL3Bhjf0vNTBNOjMw
hkfweuLuVufEjEylPB5bEGraXI7qwY4ikhT+DuF9c6mLTkSLEp1K+Q==
-----END RSA PRIVATE KEY-----''' 
}

variable "instance_type" { 
    description = "instance type for ec2" 
    default     =  "t2.micro" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "jenkins-sgroup-dec-2021" 
}

variable "tag_name" { 
    description = "Tag Name of for Ec2 instance" 
    default     = "my-ec2-instance" 
} 
variable "ami_id" { 
    description = "AMI for Ubuntu Ec2 instance" 
    default     = "ami-0e6329e222e662a52" 
}
variable "versioning" {
    type        = bool
    description = "(Optional) A state of versioning."
    default     = true
}
variable "acl" {
    type        = string
    description = " Defaults to private "
    default     = "private"
}
variable "bucket_prefix" {
    type        = string
    description = "(required since we are not using 'bucket') Creates a unique bucket name beginning with the specified prefix"
    default     = "muawsbucker1"
}
variable "tags" {
    type        = map
    description = "(Optional) A mapping of tags to assign to the bucket."
    default     = {
        environment = "DEV"
        terraform   = "true"
    }
}
