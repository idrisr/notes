# Virtual Private Cloud

http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Introduction.html

# VPCs and Subnets

A virtual private cloud (VPC) is a virtual network dedicated to your AWS
account. It is logically isolated from other virtual networks in the AWS cloud.
You can launch your AWS resources, such as Amazon EC2 instances, into your VPC.
You can configure your VPC; you can select its IP address range, create subnets,
and configure route tables, network gateways, and security settings.

A subnet is a range of IP addresses in your VPC. You can launch AWS resources
into a subnet that you select. Use a public subnet for resources that must be
connected to the Internet, and a private subnet for resources that won't be
connected to the Internet. For more information about public and private
subnets, see VPC and Subnet Basics.

To protect the AWS resources in each subnet, you can use multiple layers of
security, including security groups and network access control lists (ACL). For
more information, see Security.

#### `unable to resolve host ip-XXX-XXX-XXX-XXX`
https://forums.aws.amazon.com/message.jspa?messageID=495274

This can be solved by allowing DNS hostnames at the VPC level. Go the the VPC
management console, select the VPC, click on Actions, select Edit DNS Hostnames
and select Yes.
