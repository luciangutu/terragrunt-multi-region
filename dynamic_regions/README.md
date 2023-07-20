# Deploying infra to AWS in multiple regions using terragrunt
PoC of dynamic multi-region deployment on AWS with Terragrunt and Terraform

The TF providers code is generated from Terragrunt
This setup will deploy one SSM Parameter in the specified AWS Region.

To deploy to two regions:
```bash
for region in eu-west-1 us-east-1
do
  export AWS_REGION=$region
  terragrunt init
  terragrunt plan
  terragrunt apply
  terragrunt destroy
done
```