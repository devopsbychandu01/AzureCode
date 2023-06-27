variable "resourceGroupName" {
  type = string
  default = "prod"
}
variable "location" {
  type = string
  default = "East US"
}

variable "storageAccountName" {
  type = string
  default = "devopsbychandu78mi"
}

variable "accountType" {
  type = string
  default = "Stadard"
}

variable "replicationType" {
  type = string
  default = "LRS"
}