variable "filename" {
  default = "pets.txt"
  type    = string
}
variable "content" {
  default = "This is pets information with ariables"
  type    = string
}
variable "prefix" {
  default = "mrs"
  type    = string
}
variable "length" {
  default = "12"
  type    = number
}
variable "pet_count" {
  type    = number
  default = "5"

}
variable "has_pets" {
  type    = bool
  default = true
}
variable "list" {

  type    = list(string)
  default = ["cat,dog"]
}
variable "pet_map" {
  type = map(string)
  default = {
    "pet1" = "cat"
    "pet2" = "dog"
  }
}
variable "pet_info" {

  type = object({
    name  = string
    age   = number
    breed = string
  })

  default = {
    name  = "fin"
    age   = 2
    breed = "labrador"
  }
}
