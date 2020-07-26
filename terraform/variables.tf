# Default Tags
variable "default_resource_group" {
  description = "Default value to be used in resources' Group tag."
  default     = "fraud-detection"
}

variable "default_created_by" {
  description = "Default value to be used in resources' CreatedBy tag."
  default     = "terraform"
}

# AWS Settings
variable "aws_region" {
  default = "eu-west-2"
}

variable "aws_profile" {
  default = "default"
}

# Parameters
variable "function_bucket_name" {
  description = "Name of the S3 bucket hosting the code for fraud_detection Lambda function."
}

variable "function_version" {
  description = "Version of the fraud_detection Lambda function to use."
}

variable "s3_bucket_name_1" {
  description = "New bucket for storing the Amazon SageMaker model and training data."
}

variable "s3_bucket_name_2" {
  description = "New bucket for storing processed events for visualization features."
}

variable "kinesis_firehose_prefix" {
  description = "Kinesis Firehose prefix for delivery of processed events."
  default     = "fraud-detection/firehose/"
}
