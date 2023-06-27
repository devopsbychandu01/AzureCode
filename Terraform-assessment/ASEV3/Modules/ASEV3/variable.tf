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
variable "ASEName" {
  type = string
}
variable "loadBalancer" {
  type = string
}
variable "subnet_id" {
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