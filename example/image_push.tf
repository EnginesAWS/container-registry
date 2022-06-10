resource "null_resource" "push_images" {
  provisioner "local-exec" {
    command = "/tmp/script.sh"
    interpreter = ["bash"]
  }
  depends_on = [
    aws_ecr_repository_policy.demo-repo-policy
  ]
}
