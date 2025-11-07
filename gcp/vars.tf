# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "tfe_gcp_audience" {
  type        = string
  default     = ""
  description = "The audience value to use in run identity tokens if the default audience value is not desired."
}

variable "tfe_hostname" {
  type        = string
  description = "The hostname of the tfe or TFE instance you'd like to use with GCP"
}

variable "tfe_organization_name" {
  type        = string
  description = "The name of your Terraform Cloud organization"
}

variable "tfe_project_name" {
  type        = string
  default     = "Default Project"
  description = "The project under which a workspace will be created"
}

variable "tfe_workspace_name" {
  type        = string
  default     = "my-gcp-workspace"
  description = "The name of the workspace that you'd like to create and connect to GCP"
}

variable "gcp_project_id" {
  type        = string
  description = "The ID for your GCP project"
}

variable "gcp_service_list" {
  description = "APIs required for the project"
  type        = list(string)
  default = [
    "iam.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "sts.googleapis.com",
    "iamcredentials.googleapis.com"
  ]
}

variable "company" {
  description = "DCS Company Acronym"
  type = string  
}