resource "null_resource" "example" {
  provisioner "local-exec" {
    command = <<EOT
      mkdir -p /home/sunita/testdir1
      mkdir -p /home/sunita/testdir2
      touch /home/sunita/testdir1/file1.txt
      touch /home/sunita/testdir2/file2.txt
    EOT
  }
}







