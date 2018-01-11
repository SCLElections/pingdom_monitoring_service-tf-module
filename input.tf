variable "domain" {
  description = "Domain for the pingdom check."
}

variable "contactids" {
  description = "Which teams/people to contact in case the check fails."
}

variable "https" {
  description = "Switch between http or https checks."
  default     = true
}

variable "integrationids" {
  type        = "list"
  description = "Enable slack notifications."
  default     = [46564]
}

variable "production" {
  default = true
}
