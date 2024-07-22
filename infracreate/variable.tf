variable "instance_type" {}
variable "name" {}

variable "tools" {
    default = {

        github-runner = {
            instance_type = "t3.smaill"

         }


        }
    }