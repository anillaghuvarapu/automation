# Terraform Multi-Environment Setup Using Workspaces

This project demonstrates how to manage multiple environments (`dev`, `qa`, and `prod`) using Terraform Workspaces.

---

## 📁 Files

- `main.tf` – Main configuration.
- `variable.tf` – Variables declaration.
- `dev.auto.tfvars` – Variables for `dev` environment.
- `qa.auto.tfvars` – Variables for `qa` environment.
- `prod.auto.tfvars` – Variables for `prod` environment.

---

## 🚀 Getting Started

### Step 1: Initialize Terraform

```bash
terraform init
```

---

## 🌐 Creating and Managing Workspaces

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

## ⚙️ Apply Configuration

Terraform will automatically pick the correct `.auto.tfvars` file based on the current workspace.

```bash
terraform apply -auto-approve
```

---

## 🧹 Destroy Infrastructure

Destroy resources in the current workspace:

```bash
terraform destroy -auto-approve
```

---

## ✋ Manual tfvars File Usage (Alternative Method)

Instead of using `.auto.tfvars`, you can manually specify a `.tfvars` file:

```bash
terraform apply -var-file="dev.auto.tfvars"
terraform apply -var-file="qa.auto.tfvars"
terraform apply -var-file="prod.auto.tfvars"
```

To destroy using a specific vars file:

```bash
terraform destroy -var-file="dev.auto.tfvars" -auto-approve
```

> ✅ This method works independently of the workspace.

---

## 📌 Notes

- Terraform Workspaces allow isolated state files for multiple environments.
- `.auto.tfvars` files are loaded automatically without needing the `-var-file` flag.
- Manually using `-var-file` provides more control but requires you to specify the right file.

---

## 🔄 Switching Between Environments (Recap)

```bash
terraform workspace select qa
terraform apply -auto-approve
```

Or manually:

```bash
terraform apply -var-file="qa.auto.tfvars"
```

---

## 👤 Author

Maintained by [Your Name]. Created to demonstrate safe and organized multi-environment infrastructure provisioning using Terraform.
