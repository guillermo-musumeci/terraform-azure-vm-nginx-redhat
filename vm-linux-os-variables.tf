###############################
## Linux Distros - Variables ##
###############################

##### RedHat Enterprise Linux #####
variable "redhat-publisher" {
  type        = string
  description = "Publisher ID for RedHat Enterprise Linux" 
  default     = "RedHat" 
}

variable "redhat-offer" {
  type        = string
  description = "Offer ID for RedHat Enterprise Linux" 
  default     = "RHEL" 
}

##### CentOS Linux #####
variable "centos-publisher" {
  type        = string
  description = "Publisher ID for CentOS Linux" 
  default     = "OpenLogic" 
}

variable "centos-offer" {
  type        = string
  description = "Offer ID for CentOS Linux" 
  default     = "CentOS" 
}

