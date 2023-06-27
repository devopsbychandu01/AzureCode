variable "ProjectName" {
  type = string
  description = "NameOfTheProject"
}
variable "location" {
  type = string
  description = "Location Details"
}
variable "tags" {
  type = map
  description = "Tag details"
}
variable "Environment" {
  type = string
  description = "environment details"
}
variable "VnetName" {
  type = string
}
variable "VnetCIDR" {
  type = list
}
variable "SubneNetName" {
  type = string
}
variable "SubnetCIDR" {
  type = list
}
variable "ASEName" {
  type = string
}
variable "loadBalancer" {
  type = string
}
variable "zone_redundant" {
  type = string
}
variable "clustesetting1" {
  type = string
}
variable "clustesetting2" {
  type = string
}
variable "clustesetting3" {
  type = string
}
variable "clusterValue1" {
  type = string
}
variable "clusterValue2" {
  type = string
}
variable "clusterValue3" {
  type = string
}