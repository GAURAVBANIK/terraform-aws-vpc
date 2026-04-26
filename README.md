# 🚀 Terraform AWS VPC Project

## 📌 Overview

This project provisions a **production-style AWS network infrastructure** using Terraform.

It demonstrates:

* Infrastructure as Code (IaC)
* Modular and reusable Terraform design
* Dynamic resource creation using `for_each`
* Scalable subnet architecture across Availability Zones

---

## 🏗️ Architecture

The project creates:

* ✅ Custom VPC
* ✅ Internet Gateway (IGW)
* ✅ Public Subnets (multi-AZ)
* ✅ Route Table + Associations
* ✅ Dynamic subnet provisioning using variables

---

## ⚙️ Tech Stack

* **Terraform**
* **AWS (EC2, VPC, Networking)**
* **HCL (HashiCorp Configuration Language)**

---

## 📂 Project Structure

```
terraform_aws_vpc_project/
│
├── main.tf            # Core infrastructure resources
├── variables.tf       # Input variables
├── terraform.tfvars   # Variable values
├── provider.tf        # AWS provider config
├── output.tf          # Outputs
├── .gitignore
```

---

## 🔥 Key Concepts Used

### 1. Infrastructure as Code

All AWS resources are defined declaratively using Terraform.

---

### 2. Dynamic Resource Creation

```hcl
for_each = toset(var.avz)
```

* Creates multiple subnets automatically
* Scales based on input values
* Eliminates repetitive code

---

### 3. CIDR Management

Each subnet must have a unique CIDR block.

Example approach:

```hcl
cidr_block = cidrsubnet(var.vpc_cidr, 8, index(var.avz, each.key))
```

---

### 4. Tagging Strategy

```hcl
tags = {
  Name = "${var.vpc_name}-vpc"
}
```

* Makes infrastructure identifiable
* Follows industry naming standards

---

## 🚀 How to Run

### 1. Initialize Terraform

```bash
terraform init
```

---

### 2. Validate

```bash
terraform validate
```

---

### 3. Plan

```bash
terraform plan
```

---

### 4. Apply

```bash
terraform apply
```

---

### 5. Destroy (Cleanup)

```bash
terraform destroy
```

---

## ⚠️ Common Issues & Fixes

### ❌ Subnet CIDR Conflict

**Error:**

```
InvalidSubnet.Conflict
```

**Fix:**
Ensure each subnet gets a unique CIDR using `cidrsubnet()`.

---

### ❌ AMI Not Found

Make sure the AMI ID matches your region.

---

## 💡 What I Learned

* Structuring Terraform projects for scalability
* Using `for_each` for dynamic infrastructure
* Managing AWS networking components (VPC, Subnets, IGW)
* Debugging real-world Terraform errors

---

## 📸 Sample Output

* Multiple subnets created across AZs
* Fully functional VPC with internet access

---

## 🔮 Future Improvements

* Add private subnets + NAT Gateway
* Convert into reusable Terraform module
* Add CI/CD pipeline (GitHub Actions)
* Integrate with Kubernetes cluster (EKS)

---

## 📢 Author

**Gaurav Banik**
Aspiring DevOps Engineer 🚀

---

## ⭐ Support

If you found this useful:

* Star the repo ⭐
* Share on LinkedIn 🔗

---


