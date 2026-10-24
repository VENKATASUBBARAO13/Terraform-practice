resource "aws_instance" "name" {
    ami = "ami-08c46876c64a927b8"
    instance_type = "t2.medium"
    availability_zone = "us-east-1b"
    tags = {
        Name = "subbarao"
    }

  
}

# new, list, show, select and delete Terraform workspaces.

# Subcommands:
#     delete    Delete a workspace
#     list      List Workspaces
#     new       Create a new workspace
#     select    Select a workspace
#     show      Show the name of the current workspace