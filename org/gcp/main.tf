module "dev_tenant" {
    source = "../tf-modules/gcp/tenant"

    org                = "gs"
    name               = "dev"
    read_only_members  = []
    read_write_members = []
    admin_members      = []
}

module "stg_tenant" {
    source = "../tf-modules/gcp/tenant"

    org                = "gs"
    name               = "stg"
    read_only_members  = []
    read_write_members = []
    admin_members      = []
}

module "prd_tenant" {
    source = "../tf-modules/gcp/tenant"

    org                = "gs"
    name               = "prd"
    read_only_members  = []
    read_write_members = []
    admin_members      = []
}
