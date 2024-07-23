   terraform {
     backend "s3" {
       bucket = "naifah"
       key    = "tools/terraform.tfstate"
       region = "us-east-1"
     }
   }