variable "VnetName" {
    type = string
    description = "(optional) describe your variable"
}
variable "location" {
  type = string
  description = "location of the resource group"
}
variable "tags" {
  type = map
  description = "tag information"
}
variable "resourceGroupName" {
  type = string
  description = "tag information"
}
variable "VnetCIDR" {
  type = list
  description = "tag information"
}
variable "SubnetCIDR" {
  type = list
  description = "tag information"
}
variable "SubneNetName" {
  type = string
  description = "tag information"
}