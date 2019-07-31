## Fraud Detection Using Machine Learning

Setup end to end demo architecture for predicting fraud events with Machine Learning using `Amazon SageMaker` and `Terraform`.
This repo supports the original article posted on [Medium](https://medium.com/@qtangs/machine-learning-infrastructure-with-amazon-sagemaker-and-terraform-a-case-of-fraud-detection-ab6896144781).

## Terraform version

Ensure your `Terraform` version is as follows (some modifications would be required if you run other `Terraform` versions):
```sh
$ terraform --version
Terraform v0.11.14
+ provider.archive v1.2.2
+ provider.aws v2.21.1
+ provider.template v2.1.2
```
To download `Terraform`, visit https://releases.hashicorp.com/terraform/

## Setup steps

From `terraform` folder:
1. Copy `terraform_backend.tf.template` to `terraform_backend.tf` and modify values accordingly. You need to manually create an S3 bucket or use an existing one to store the Terraform state file.
2. Copy `terraform.tfvars.template` to `terraform.tfvars` and modify values accordingly. You don't need to create any buckets specified in here, they're to be created by terraform apply.
3. Run the followings:
```sh
export AWS_PROFILE=<your desired profile>

terraform init
terraform validate
terraform plan -out=tfplan
terraform apply --auto-approve tfplan
```


## Clean up

```
terraform plan -destroy -out=tfplan
terraform apply tfplan
```

## Original source
https://github.com/awslabs/fraud-detection-using-machine-learning

Original CloudFormation script can be found at `cloudformation` folder (renamed from `deployment`).


## License

This library is licensed under the Apache 2.0 License. 
