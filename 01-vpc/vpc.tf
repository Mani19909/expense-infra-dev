module "vpc" {
    source = "github.com/Mani19909/terraform-infrastructure//terraform-vpc/terraform-aws-vpc?ref=main"
    project_name = var.project_name
    common_tags = var.common_tags
    public_subnet_cidrs = var.public_subnet_cidrs
    Private_subnet_cidrs = var.Private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    is_peering_required = var.is_peering_required
}