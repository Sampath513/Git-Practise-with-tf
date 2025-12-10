terraform {
    backend "s3" {
        bucket = "xyz-project-bucket-12-23"
        key = "xyz-project/dev/terraform.tfstate"
        dynamodb_table = "xyz-project-dynamodb-table"
        region = "us-east-1"
    }
}