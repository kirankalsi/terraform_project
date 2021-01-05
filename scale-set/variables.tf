variable "environment" {
  description = "environment"
}

variable "region" {
  description = "region"
}

variable "timezone" {
  description = "timezone for scale set"
}

variable "out_hour" {
  type = number
  description = "out of hours"
}  

variable "out_minute" {
  type = number
  description = "out of hours - minutes"
}  

variable "in_hour" {
  type = number
  description = "in hours"
}  

variable "in_minute" {
  type = number
  description = "in_hours - minutes"
}  