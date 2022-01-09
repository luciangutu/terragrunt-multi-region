variable "create_parameter" {
  description = "Controls if SSM parameter should be created"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "type" {
  description = "The type of the parameter. Valid types are String, StringList and SecureString."
  type        = string
  default     = "String"
}

variable "value" {
  description = "The value of the parameter."
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the parameter."
  type        = string
  default     = ""
}
