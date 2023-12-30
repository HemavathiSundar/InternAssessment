#Write a Terraform script to create a local file with the content "Hello, Terraform" and output a success message.

provider "local" {}

resource "null_resource" "create_file" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "echo 'Hello, Terraform' > output.txt"
  }
}

output "success_message" {
  value = "File created successfully! Check output.txt."
}
