# Deploying infra to AWS in multiple regions using TF native code
PoC of multi-region deployment on AWS with Terragrunt and Terraform


This setup is using a module and it will deploy the same SSM Parameter in three AWS Regions.
We have duplicate code since we cannot use (yet) the for_each or "providers" with variables.

```bash
terragrunt init
terragrunt plan
terragrunt apply
terragrunt destroy