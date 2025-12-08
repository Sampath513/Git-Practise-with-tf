resource "aws_s3_bucket" "xyz_bucket" {
    bucket = "xyz-project-bucket-12-23"
    acl    = "private"
    versioning {
        enabled = true
    }
}
resource "aws_dynamodb_table" "xyz_dynamodb_table" {
    name = "xyz-project-dynamodb-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}
resource "aws_instance" "my_instance" {
    ami = var.ami
    instance_type = var.instance_type
   // count = 2
   // for_each = [ "value" ]
   //subnet_id = "subnet-0bb1c79de3EXAMPLE"
   //vpc_security_group_ids = [ "sg-085912345678492fb" ]
    tags = {
        Name = "MyInstance"
    }
}