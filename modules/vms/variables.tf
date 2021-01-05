variable "region" {
  description = "region"
}

variable "timezone" {
  description = "timezone for scale set"
}

variable "start_time" {
  description = "time for VM scale up to start each day"
}

variable "stop_time" {
  description = "time for VM scale down to stop each day"
}