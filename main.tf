resource "null_resource" "pwsh" {
  provisioner "local-exec" {
    command = <<EOH
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell
pwsh --help
EOH
  }
}
