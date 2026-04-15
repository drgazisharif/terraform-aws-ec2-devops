# 🚀 Terraform AWS EC2 DevOps Project

A beginner-to-intermediate Infrastructure as Code (IaC) project using Terraform to deploy a fully working AWS EC2 web server.

Terraformを使用してAWS EC2上に完全に動作するウェブサーバーを自動構築する、初級〜中級レベルのInfrastructure as Code (IaC) プロジェクトです。

---

## 👤 Author / 作成者

**Gazi Mohammad Sharif / ガジ モハマド シャリフ**

---

## 📌 Project Description / プロジェクト概要

This project demonstrates Infrastructure as Code (IaC) using Terraform to deploy an AWS EC2 instance with an Apache web server.

このプロジェクトはTerraformを使用してAWS EC2インスタンスを構築し、Apacheウェブサーバーを自動デプロイするIaCの実践です。

The website is automatically deployed using a separate `user-data.sh` script.

ウェブサイトは `user-data.sh` スクリプトを使用して自動デプロイされます。

---

## ⚙️ Tech Stack / 技術スタック

* Terraform
* AWS EC2
* Apache Web Server
* Ubuntu Linux

---

## 🚀 Features / 機能

* EC2 instance creation using Terraform
  TerraformによるEC2インスタンス作成

* Modular Terraform structure (modules/ec2)
  モジュール構造によるTerraform設計

* Security Group (SSH + HTTP)
  セキュリティグループ（SSH + HTTP）

* Automatic Apache installation via user_data
  user_dataによるApache自動インストール

* Auto-deployed website
  自動デプロイされたウェブサイト

* Bilingual website (English + Japanese)
  英語・日本語対応ウェブサイト

---

## 📂 Project Structure / プロジェクト構成

```
terraform-demo/
│── main.tf
│── variables.tf
│── user-data.sh
│── modules/
│    └── ec2/
│         ├── main.tf
│         ├── variables.tf
│         └── outputs.tf
│── README.md
```

---

## 🌐 Output / 出力結果

After deployment, open:

デプロイ後、以下にアクセス：

```
http://YOUR_EC2_PUBLIC_IP
```

Public IP is dynamically assigned by AWS.

パブリックIPはAWSにより動的に割り当てられます。

---

## 🧠 What I Learned / 学んだこと

* Terraform basics
* AWS EC2 provisioning
* Infrastructure as Code (IaC)
* Terraform modules (modular design)
* user_data scripting
* Debugging cloud infrastructure
* Git & GitHub workflow

---

## 🔍 Troubleshooting / トラブルシューティング

Steps used during debugging:

1. Check Terraform output
2. Verify Security Group (ports 22, 80)
3. SSH into EC2
4. Check Apache status
5. Verify `/var/www/html/index.html`
6. Check logs (`cloud-init`)

---

## 📌 How to Run / 実行方法

```bash
terraform init
terraform apply
terraform destroy
```

---

## ⚠️ Notes

* Do NOT upload `.tfstate`, `.terraform`, or `.pem` files
* Use `.gitignore` for security

---
