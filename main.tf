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