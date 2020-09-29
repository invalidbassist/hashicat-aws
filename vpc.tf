module "vpc" {
  source = "app.terraform.io/mmabry-training/vpc/aws"

  name = "mmabry-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  enable_classiclink = false
  enable_classiclink_dns_support = false
  enable_dns_hostnames = true
  enable_dns_support = true

}


# module "vpc" {
#   source  = "app.terraform.io/mmabry-training/vpc/aws"
#   version = "2.42.0"
  
#   database_subnet_assign_ipv6_address_on_creation = false
#   default_secrutiy_group_egress =
# }

    #      "attributes": {
    #         "arn": "arn:aws:ec2:us-east-1:002462470552:vpc/vpc-0595c632c259c70e0",
    #         "assign_generated_ipv6_cidr_block": false,
    #         "cidr_block": "10.0.0.0/16",
    #         "default_network_acl_id": "acl-049b357c53868d9d6",
    #         "default_route_table_id": "rtb-0e295aed1014c787b",
    #         "default_security_group_id": "sg-09b520336b2e0174e",
    #         "dhcp_options_id": "dopt-0f125226685719fd8",
    #         "enable_classiclink": false,
    #         "enable_classiclink_dns_support": false,
    #         "enable_dns_hostnames": true,
    #         "enable_dns_support": true,
    #         "id": "vpc-0595c632c259c70e0",
    #         "instance_tenancy": "default",
    #         "ipv6_association_id": "",
    #         "ipv6_cidr_block": "",
    #         "main_route_table_id": "rtb-0e295aed1014c787b",
    #         "owner_id": "002462470552",
    #         "tags": {
    #           "name": "mmabry-vpc"
    #         }
    #       },
    #       "private": "eyJzY2hlbWFfdmVyc2lvbiI6IjEifQ=="
    #     }
    #   ]
    # },