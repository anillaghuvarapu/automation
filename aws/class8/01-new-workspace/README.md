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

### Step 2: Create Workspaces

```bash
terraform workspace new dev
terraform workspace new qa
terraform workspace new prod
```

### Step 3: Switch Workspace

```bash
terraform workspace select dev   # or qa / prod
```

### Step 4: Apply

```bash
terraform apply -auto-approve
```

Terraform will automatically pick:
- `dev.auto.tfvars` for `dev`
- `qa.auto.tfvars` for `qa`
- `prod.auto.tfvars` for `prod`

### Step 5: Destroy

To destroy infrastructure in the current workspace:

```bash
terraform destroy -auto-approve
```

---

## 📌 Notes

- Workspaces isolate state files.
- Ideal for managing different environments.
- No need to manually specify `.tfvars` files when using `.auto.tfvars`.

---

## 🔄 Switching Between Environments

```bash
terraform workspace list
terraform workspace select qa
terraform apply -auto-approve
```

---

## 👤 Author

Maintained by [Your Name]. Created for demoing safe and organized infrastructure provisioning using Terraform.
