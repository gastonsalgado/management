module "dev_tier" {
    source = "../tf-modules/gcp/tier"

    org                = "gs"
    domain             = "gs.com"
    name               = "dev"
    read_only_members  = []
    read_write_members = []
    admin_members      = []
}

module "stg_tier" {
    source = "../tf-modules/gcp/tier"

    org                = "gs"
    domain             = "gs.com"
    name               = "stg"
    read_only_members  = []
    read_write_members = []
    admin_members      = []
}

module "prd_tier" {
    source = "../tf-modules/gcp/tier"

    org                = "gs"
    domain             = "gs.com"
    name               = "prd"
    read_only_members  = []
    read_write_members = []
    admin_members      = []
}
