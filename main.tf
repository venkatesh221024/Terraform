resource "local_file" "mypet" {
  filename = "terraform pets.txt"
  content  = "i hate pets"
}


resource "random_pet" "mypet23" {
prefix = "prefix"
separator = "."
length = "1"
}

