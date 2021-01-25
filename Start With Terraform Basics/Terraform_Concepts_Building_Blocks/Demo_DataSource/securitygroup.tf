data "aws_ip_ranges" "us_west_ip_range" {
    regions=["us-west-1","us-west-2"]
    services=["ec2"]
}

resource "aws_security_group" "sg-custom-us-west" {
    name="sg-custom_us_west"

    ingress={
        from_port="443"
        to_port="443"
        protocal="tcp"
        cidr_blocks=data.aws_ip_ranges.us_west_ip_range.cidr_blocks
    }

    tags={
        CreateDate=data.aws_ip_ranges.us_west_ip_range.create_date
        SyncToken=data.aws_ip_ranges.us_west_ip_range.sync_token
    }
}