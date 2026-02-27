variable "instance_name" {
  description = "the name of instance"
  type        = string

}
variable "instance_labels" {
  description = "the labels of instance"
  type        = map(string)

  validation {
    condition     = alltrue([for k, v in var.instance_labels : can(regex("^[a-z0-9_-]+$", k))])
    error_message = "Las llaves de los labels deben ser minúsculas sin espacios."
  }

}
variable "instance_tags" {
  description = "network tags"
  type        = map(string)

  validation {
    condition     = alltrue([for k, v in var.instance_tags : can(regex("^[a-z0-9_-]+$", k))])
    error_message = "Las llaves de los tags deben ser minúsculas y no contener espacios."
  }

}

variable "instanace_type" {
  description = "what is the image of the instanace"
  type        = string

}
variable "instance_iamge" {
  description = "the name of image"
  type        = string

}
variable "instance_zone" {
  description = "the name of zone "
  type        = string

}
variable "instance_vpc" {
  description = "the name of vpc"
  type        = string

}
variable "instance_subnet" {
  description = "the name of vpc"
  type        = string

}
