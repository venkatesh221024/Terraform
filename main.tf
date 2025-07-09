resource "local_file" "mypet" {
  filename = var.filename
  content  = var.content
}


resource "random_pet" "mypet23" {
  prefix   = var.prefix
  length   = var.length
  
}

