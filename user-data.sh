#!/bin/bash
apt update -y
apt install -y apache2
systemctl enable apache2
systemctl start apache2

cat <<HTML > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>🚀 Terraform Project</title>
</head>
<body>
<h1>🚀 Terraform Project</h1>
<p>Hello from Gazi | こんにちは</p>
</body>
</html>
HTML