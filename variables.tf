variable "application" {
  type        = string
  description = "Application or Service Name"
}

variable "application_short" {
  type        = string
  description = "Short Name for Application or Service"
  validation {
    condition     = length(var.application_short) <= 5
    error_message = "The given argument can be a maximum of 5 characters long."
  }
}

variable "appcontact" {
  type        = string
  description = "Application Contact Person (like Application Owner)"
  validation {
    condition     = can(regex(".+@.+\\.\\w+", lower(var.appcontact)))
    error_message = "The given argument is not a valid email address."
  }
  default = null
}

variable "teccontact" {
  type        = string
  description = "Technical Contact Person (like Support)"
  validation {
    condition     = can(regex(".+@.+\\.\\w+", lower(var.teccontact)))
    error_message = "The given argument is not a valid email address."
  }
}

variable "service_class" {
  type    = string
  default = null
}

variable "protection_class" {
  type    = number
  default = null
}

variable "project_start_date" {
  type    = string
  default = null
  validation {
    condition     = can(regex("\\d{2}\\.\\d{2}\\.\\d{4}", var.project_start_date))
    error_message = "The given argument has to be a valid date (e.g. 01.01.2021)."
  }
}

variable "cost_center" {
  type    = string
  #default = "340006"
  validation {
    condition     = length(var.cost_center) == 4
    error_message = "The given argument has to be 6 characters long."
  }
}

variable "cost_bearer" {
  type    = string
  default = "default"
  # validation {
  #   condition     = can(regex("\\d+[A-Z]+", var.cost_bearer))
  #   error_message = "The given argument has to be a valid cost bearer (e.g. 3420AZUREMGMT)."
  # }
}

variable "disaster_recovery" {
  type    = string
  default = null
  validation {
    condition     = var.disaster_recovery == "Mission-critical" || var.disaster_recovery == "Critical" || var.disaster_recovery == "Essential" || var.disaster_recovery == null
    error_message = "The given argument can only be one of 'Mission-critical, Critical, Essential'."
  }
}

variable "operation_period" {
  type    = string
  default = null
}

variable "environment" {
  type = string
  validation {
    condition     = var.environment == "Core" || var.environment == "Produktion" || var.environment == "Stage" || var.environment == "Development" || var.environment == "Test" || var.environment == "Evaluation"
    error_message = "The given argument can only be one of 'Core, Produktion, Stage, Development, Test, Evaluation'."
  }
}