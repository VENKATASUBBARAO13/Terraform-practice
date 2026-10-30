# Terraform Practice

A hands-on learning repository documenting my day-by-day practice with **Terraform** and **AWS**. It contains small, focused configurations that explore Infrastructure as Code (IaC), from basic provider setup to reusable modules, remote state, provisioners, Lambda automation, and advanced Terraform expressions.

> This is a learning and experimentation repository. Each day/folder contains an independent exercise; review the configuration and update environment-specific values before running it.

## Repository Structure

| Folder | Topics covered |
|---|---|
| `Day-01-practicing/` | Terraform and AWS provider setup, version constraints, and a first configuration |
| `Day-02-practicing/` | Input variables, variable values, and outputs |
| `Day-03-Practicing/` | Working with variables, provider configuration, and outputs |
| `Day-04-practicing/` | Backend configuration and state management concepts |
| `Day-05-practicing/` | Custom AWS networking, S3 lifecycle rules, and RDS practice |
| `Day-06-practicing/` | Reusable EC2 and S3 modules, module calls, and IAM user/policy practice |
| `Day-07-practicing/` | Resource dependencies and root/child modules for network and compute |
| `Day-08-Provisioners/` | Terraform provisioners, remote commands, and file operations |
| `Day-09-practicing/` | Terraform workspaces, Lambda practice, and importing existing resources |
| `Day-10-practicing/` | Provider aliases/profiles, data sources, locals, user data, and scheduled Lambda execution |
| `Day-11-practicing/` | Dynamic security-group rules, conditional expressions, `count`, and `for_each` |
| `Day-12-practicing/` | OpenTofu basics and Terraform-to-OpenTofu migration practice |
| `all-tools-installations/` | Shell script for installing development/DevOps tools |

## Tools & Technologies

- **Infrastructure as Code:** Terraform, OpenTofu
- **Cloud platform:** Amazon Web Services (AWS)
- **AWS services practiced:** EC2, VPC/networking, IAM, S3, RDS, and Lambda
- **Languages and scripting:** HCL, Bash, Python
- **Workflow:** Terraform initialization, planning, applying, outputs, and state management

## Prerequisites

Before running the examples, make sure you have:

1. [Terraform](https://developer.hashicorp.com/terraform/install) installed (or [OpenTofu](https://opentofu.org/docs/intro/install/) for the OpenTofu exercises).
2. An AWS account and AWS CLI installed.
3. AWS credentials configured locally using an AWS profile or environment variables.
4. Basic familiarity with AWS resources and command-line usage.

Check the installed tools:

```bash
terraform version
aws --version
aws sts get-caller-identity
```

## Running an Exercise

Run commands from the specific exercise directory containing the Terraform configuration. For example:

```bash
cd Day-01-practicing

# Download required providers and initialize the working directory
terraform init

# Check the configuration
terraform validate

# Preview the infrastructure changes
terraform plan

# Create or update the infrastructure
terraform apply
```

When you finish experimenting, remove resources created by that exercise:

```bash
terraform destroy
```

Some folders have their own variables, provider configuration, modules, or prerequisites. Read the `.tf` files and any accompanying scripts in that folder before executing commands. Use the same directory for `plan`, `apply`, and `destroy`.

## Important Notes

- **Review before applying:** `terraform apply` can create billable AWS resources. Always inspect the plan first.
- **Credentials:** Never commit AWS access keys, secret keys, session tokens, or other credentials.
- **Variables:** Check `terraform.tfvars` and variable defaults. Replace account-, region-, AMI-, CIDR-, and resource-specific values as needed.
- **State files:** Terraform state can contain sensitive information. Do not commit state files, plan files, or local Terraform working data.
- **Clean up:** Run `terraform destroy` when an exercise is complete and verify that no unwanted AWS resources remain.
- **Independent exercises:** The numbered folders are separate practice examples, not one combined deployment. Follow each folder's own configuration.

## Learning Goals

Through these exercises, I am building practical experience with:

- Writing and organizing Terraform configuration
- Defining providers, versions, variables, and outputs
- Managing Terraform state and backends
- Creating AWS infrastructure with reusable modules
- Understanding resource dependencies and provisioners
- Using workspaces, data sources, locals, and user data
- Automating AWS Lambda workflows
- Applying dynamic blocks, conditions, `count`, and `for_each`
- Exploring OpenTofu and migration concepts

## Author

**Venkata Subbarao**

- GitHub: [@VENKATASUBBARAO13](https://github.com/VENKATASUBBARAO13)
- LinkedIn: [Venkata Subbarao](https://www.linkedin.com/in/ventrapragada-venkata-subbarao/)

---

⭐ This repository is part of my ongoing Cloud and DevOps hands-on learning journey.
