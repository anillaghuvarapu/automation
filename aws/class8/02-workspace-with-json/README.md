# Terraform Multi-Environment Setup Using Workspaces and tfvars.json

This project demonstrates how to manage multiple environments (`dev`, `qa`, and `prod`) using **Terraform Workspaces** and variables defined in both `.auto.tfvars` and `.tfvars.json` formats.

---

## 📁 Files

- `main.tf` – Main configuration
- `variable.tf` – Input variable declarations
- `dev.tfvars.json` – JSON variables for dev environment
- `qa.tfvars.json` – JSON variables for qa environment
- `prod.tfvars.json` – JSON variables for prod environment

---

## 🚀 Getting Started

### Step 1: Initialize Terraform

```bash
terraform init
```

---

## 🌐 Creating and Using Workspaces

### Create Workspaces

```bash
terraform workspace new dev
terraform workspace new qa
terraform workspace new prod
```

### List All Workspaces

```bash
terraform workspace list
```

### Switch Between Workspaces

```bash
terraform workspace select dev   # or qa / prod
```

---

## ⚙️ Apply Configuration Using tfvars.json

### Using `-var-file` to Manually Provide tfvars.json

```bash
terraform apply -var-file="dev.tfvars.json" -auto-approve
terraform apply -var-file="qa.tfvars.json" -auto-approve
terraform apply -var-file="prod.tfvars.json" -auto-approve
```

---

## 🧹 Destroy Infrastructure

Destroy using workspace:

```bash
terraform workspace select dev
terraform destroy -var-file="dev.tfvars.json" -auto-approve
```

---

## 📌 Notes

- Terraform workspaces isolate the state of each environment.
- You can use `.tfvars.json` instead of `.auto.tfvars` to manually control which file is applied.
- The `-var-file="file.tfvars.json"` flag ensures you're applying the correct environment-specific variables.
- Workspaces help avoid accidental overwrites between environments.

---

## 🔁 Switching and Applying (Recap)

```bash
terraform workspace select qa
terraform apply -var-file="qa.tfvars.json" -auto-approve
```

To destroy:

```bash
terraform destroy -var-file="qa.tfvars.json" -auto-approve
```

---

## 👤 Author

Maintained by [Your Name]. This setup is ideal for safe, modular, and environment-isolated infrastructure provisioning using Terraform.
