resource "aws_s3_bucket" "xyz_bucket" {
    bucket = "xyz-project-bucket-12-23"
    acl    = "private"
    versioning {
        enabled = true
    }
}