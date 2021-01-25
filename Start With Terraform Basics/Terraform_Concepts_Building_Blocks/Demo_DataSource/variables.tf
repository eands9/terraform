variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default="us-west-2"
}

variable "Security_Group"{
    type=list
    default=["sg-24076","sg-0001","sg-0002"]
}

variable "AMIS"{
    type=map
    default={
        us-east-1 = "ami-0f593aebffc0070e1"
        us-east-2 = "ami-096cdd827d38ca4d8"
    }
}

