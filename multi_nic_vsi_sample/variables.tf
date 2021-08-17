##############################################################################
# Variable block - See each variable description
##############################################################################

##############################################################################
# vnf_cos_image_url - Vendor provided Ubuntu image COS url.
#                             The value for this variable is enter at offering
#                             onbaording time.This variable is hidden from the user.
##############################################################################
variable "vnf_cos_image_url" {
  default     = ""
  description = "The COS image object SQL URL for Ubuntu qcow2 image."
}

##############################################################################
# subnet_ids - Subnet where resources are to be provisioned.
##############################################################################
variable "subnet_id1"{
  default = ""
  description =  "The id of the subnet to which Ubuntu VSI's first interface belongs to"
}

variable "subnet_id2"{
  default = ""
  description = "The id of the subnet to which Ubuntu VSI's second interface belongs to"
}

##############################################################################
# ssh_key_name - The name of the public SSH key to be used when provisining Ubuntu VSI.
##############################################################################
variable "ssh_key_name" {
  default     = ""
  description = "The name of the public SSH key to be used when provisining Ubuntu VSI."
}

##############################################################################
# vnf_vpc_image_name - The name of the Ubuntu custom image to be provisioned in your IBM Cloud account.
##############################################################################
variable "vnf_vpc_image_name" {
  default     = "ubuntu18-04"
  description = "The name of the Ubuntu custom image to be provisioned in your IBM Cloud account."
}

##############################################################################
# vnf_vpc_image_name - The name of your Ubuntu Virtual Server to be provisioned
##############################################################################
variable "vnf_instance_name" {
  default     = "ubuntu18-04-vsi"
  description = "The name of your Ubuntu Virtual Server to be provisioned."
}

##############################################################################
# vnf_profile - The profile of compute CPU and memory resources to be used when provisioning Ubuntu VSI.
##############################################################################
variable "vnf_profile" {
  default     = "bx2-2x8"
  description = "The profile of compute CPU and memory resources to be used when provisioning Ubuntu VSI. To list available profiles, run `ibmcloud is instance-profiles`."
}

variable "region" {
  default     = "us-south"
  description = "The value of the region of VPC."
}

#####################################################################################################
# api_key - This is the ibm_cloud_api_key which should be used only while testing this code from CLI. 
# It is not needed while testing from Schematics
######################################################################################################
/*
variable "api_key" {
  default     = ""
  description = "holds the user api key"
}*/

##############################################################################
# vnf_securtiy_group - The security group to which the VSI interface belongs to.
##############################################################################
variable "vnf_security_group" {
  default     = "ubuntu-security-group"
  description = "The security group for VNF VPC"
}

variable "TF_VERSION" {
 default = "1.0.3"
 description = "terraform engine version to be used in schematics"
}
