# terragrunt-multi-region
PoC of multi-region deployment on AWS with Terragrunt


This setup will deploy the same SSM Parameter in three AWS Regions.
See regions variable from terragrunt.hcl file.
The SSM module is not full - it has only minimal parameters configured.

```bash
terragrunt init
terragrunt plan
terragrunt apply
terragrunt destroy
```
