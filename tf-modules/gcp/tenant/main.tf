data "google_organization" "org" {
  domain = var.domain
}

resource "google_folder" "tenant" {
  display_name = "${var.org_name}-${var.tenant_name}"
  parent       = data.google_organization.org.name
}

resource "google_folder_iam_binding" "read_only" {
  folder  = "folders/${google_folder.tenant.name}"
  role    = "roles/viewer"
  members = var.read_only_members
}

resource "google_folder_iam_binding" "admin" {
  folder  = "folders/${google_folder.tenant.name}"
  role    = "roles/editor"
  members = var.admin_members
}

resource "google_project" "tenant" {
  name       = "${var.org_name}-${var.tenant_name}"
  project_id = "${var.org_name}-${var.tenant_name}-00"
  folder_id  = google_folder.tenant.name
}
