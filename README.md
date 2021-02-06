# Deploying an Azure RedhHat or CentOS Linux VM with Nginx using Terraform

Blog --> https://gmusumeci.medium.com/how-to-deploy-a-redhat-or-centos-linux-vm-with-nginx-in-azure-using-terraform-8366ba6dd5d5

Update the **source_image_reference** on this section of the **linux-vm-main.tf** file, to configure the distro and version of Linux.

```
source_image_reference {
  publisher = var.centos-publisher
  offer     = var.centos-offer
  sku       = "7_8-gen2" 
  version   = "latest"
}
```

---

# Linux Distros on Azure

Below is a list of Publisher and Offer combinations of endorsed Linux Distros on Azure, use them to list SKUs available.

**RedHat Enterprise Linux (RHEL):**

```
Publisher = "RedHat"
Offer = "RHEL"
```

**CentOS Linux:**

```
Publisher = "OpenLogic"
Offer = "CentOS"
```

---

# Bootstrapping the Linux Server to Install Nginx Open Source (only valid for RHEL and CentOS)

Execute a bash script to install to Nginx:

```
#! /bin/bash
sudo yum update -y
sudo yum install epel-release -y
sudo yum install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
```

----

# How to Find Azure Linux VM Images for Terraform using PowerShell

Login into Azure: 

```
Connect-AzAccount
```

The process starts by defining our Azure region using a variable:

```
$Location = "West Europe"
```

Then we define the **Publisher** and the **Offer** using variables: 

```
$Publisher = "OpenLogic"
$Offer = "CentOS"
```

Finally, we list all SKUs for this OS:

```
Get-AzVMImageSku -Location $Location -PublisherName $Publisher -Offer $Offer | Select Skus
```
