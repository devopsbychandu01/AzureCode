variable "ResourceGroupName" {
  type = string
  description = "name of the resource Group"
}
variable "location" {
  type = string
  description = "location of the resource Group"
}
variable "tags" {
  type = map
  description = "tags"
}