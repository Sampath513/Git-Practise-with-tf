terraform {
    backend "s3" {
        bucket = "xyz-project-bucket-12-23"
        key = "xyz-project/terraform.tfstate"
        dynamodb_table = "xyz-project-dynamodb-table"
        region = "us-east-1"
    }
}