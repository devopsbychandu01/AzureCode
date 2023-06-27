variable "resourceGroupName" {
  type = string
  description = "Name of the Resource Group"
}
variable "location" {
  type = string
  description = "location of the resource group"
}
variable "tags" {
  type = map
  description = "tag information"
}