resource "null_resource" "pwsh" {
  provisioner "local-exec" {
    command = <<EOH
wget -q https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb
export DEBIAN_FRONTEND=noninteractive
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update >/dev/null
sudo apt-get install -y powershell >/dev/null
sudo pwsh -command "Install-Module -Name SqlServer -Force"
EOH
  }
}
