variable "prefix" {
  type = string
  default = "learning"

}
variable "rgname" {
  type = string
  description = "name of the resource group"
  default = "test"
}
variable "location" {
  type = string
  description = "location where we are deploying application"
  default = "eastus"
}
variable "tags" {
  type = map
  default = {
    app = "demo",
    support = "devops"
  }
}
variable "account_tier" {
  type = string
  default = "Standard"
}
variable "account_replication_type" {
  type = string
  default = "LRS"
}