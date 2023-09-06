variable "RGName" {
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
variable "storageAccountName" {
  type = string
}
variable "replicationType" {
  type = string
}
variable "AccountKind" {
  type = string
}