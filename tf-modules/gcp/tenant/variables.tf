variable "domain" {
  type        = string
  description = "The domain name of the Organization."
}

variable "org_name" {
  type        = string
  description = "The name of the Organization."
}

variable "tenant_name" {
  type        = string
  description = "The name of the Tenant."
}

variable "read_only_members" {
  type        = lis(string)
  description = "Members with read only access."
}

variable "admin_members" {
  type        = lis(string)
  description = "Members with admin access."
}
