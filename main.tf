module "student_alias" {
  source = "../exercise1"
  student_alias = var.student_alias
}

module "new_file" {
  source = "../exercise1"
  student_alias = var.student_alias
  filename = module.student_alias.magic_number_content_type
}


resource "null_resource" "abc" {

}