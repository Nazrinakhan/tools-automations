module "tool-infra-create" {
    for_each = var.tools
    source = "./infracreate"
    name = each.key
    instance_type = each.value["instance_type"]
    }