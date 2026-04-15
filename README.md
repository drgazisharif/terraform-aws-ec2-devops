# 🚀 Terraform AWS EC2 DevOps Project

A beginner-to-intermediate Infrastructure as Code (IaC) project using Terraform to deploy a fully working AWS EC2 web server.

Terraformを使用してAWS EC2上に完全に動作するウェブサーバーを自動構築する、初級〜中級レベルのInfrastructure as Code (IaC) プロジェクトです。

---

## 👤 Author / 作成者

Gazi Mohammad Sharif / ガジ モハマド シャリフ

---

## 📌 Project Description / プロジェクト概要

This project demonstrates Infrastructure as Code (IaC) using Terraform to deploy an AWS EC2 instance with an Apache web server.

このプロジェクトはTerraformを使用してAWS EC2インスタンスを構築し、Apacheウェブサーバーを自動デプロイするInfrastructure as Code (IaC)の実践です。

This project is for learning and demonstration purposes.

このプロジェクトは学習およびデモ目的です。

The website is automatically deployed using Terraform `user_data`.

ウェブサイトはTerraformの`user_data`を使用して自動的にデプロイされます。

---

## ⚙️ Tech Stack / 技術スタック

- Terraform  
- AWS EC2  
- Apache Web Server  
- Ubuntu Linux  

---

## 🚀 Features / 機能

- EC2 instance creation using Terraform  
  TerraformによるEC2インスタンス作成  

- Security Group (SSH + HTTP)  
  セキュリティグループ（SSH + HTTP）  

- Automatic Apache installation  
  Apacheの自動インストール  

- Auto-deployed website  
  自動デプロイされたウェブサイト  

- Bilingual website (English + Japanese)  
  英語・日本語対応ウェブサイト  

---

## 🌐 Output / 出力結果

After deployment, open browser:

デプロイ後、以下のURLにアクセス：

http://YOUR_EC2_PUBLIC_IP

The public IP is dynamically assigned by AWS and may change if the EC2 instance is terminated or recreated.

パブリックIPアドレスはAWSによって動的に割り当てられ、EC2インスタンスの削除や再作成時に変更される場合があります。

Elastic IP can be used to maintain a fixed public IP address.

Elastic IPを使用することで、固定のパブリックIPアドレスを維持することができます。

---

## 🧠 What I Learned / 学んだこと

- Terraform basics / Terraformの基礎  
- AWS EC2 provisioning / AWS EC2構築  
- Infrastructure as Code (IaC)  
- Cloud automation / クラウド自動化  
- DevOps workflow basics / DevOps基礎  

---

## 📌 How to Run / 実行方法

terraform init  
terraform apply  
terraform destroy
