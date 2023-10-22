data "google_organization" "org" {
  domain = var.domain
}

resource "google_folder" "tier" {
  display_name = "${var.org_name}-${var.tier_name}"
  parent       = data.google_organization.org.name
}

resource "google_folder_iam_binding" "read_only" {
  folder  = "folders/${google_folder.tier.name}"
  role    = "roles/viewer"
  members = var.read_only_members
}

resource "google_folder_iam_binding" "admin" {
  folder  = "folders/${google_folder.tier.name}"
  role    = "roles/editor"
  members = var.admin_members
}

resource "google_project" "tier" {
  name       = "${var.org_name}-${var.tier_name}"
  project_id = "${var.org_name}-${var.tier_name}-00"
  folder_id  = google_folder.tier.name
}
