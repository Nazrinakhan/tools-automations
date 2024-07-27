
 variable "tools" {
    default = {

        github-runner = {
            instance_type = "t3.small"
            policy_name = [
                "AdministratorAccess"
            ]
          }


        }
  }

variable "hosted_zone_id" {
    default = "Z03416193I6UORBOGZ0Y"
    }