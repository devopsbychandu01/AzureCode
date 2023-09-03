variable "prefix" {
  type = string
  default = "learning"

}
variable "rgname" {
  type = string
  description = "name of the resource group"
  default = "dev"
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