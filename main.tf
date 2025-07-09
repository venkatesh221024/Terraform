resource "local_file" "file1-local" {
  filename = var.filename
  content = var.content
}
resource "random_pet" "terrafpet" {
  prefix = var.prefix
  length = var.length
}
