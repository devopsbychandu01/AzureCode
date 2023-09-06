variable "rgname" {
  type = string
  description = "name of the resource group"
}
variable "location" {
  type = string
  description = "location where we are deploying application"
}
variable "tags" {
  type = map
}
variable "vNetName" {
  type = string
}
variable "AddressSpace" {
  type = string
}
variable "subnet1Name" {
  type = string
}
variable "subnet1Address" {
  type = string
}
variable "subnet2Name" {
  type = string
}
variable "subnet2Address" {
  type = string
}