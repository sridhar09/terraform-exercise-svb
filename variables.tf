# This is variable definition
variable "student_alias" {
  type = string
  description = "Alias of the Students participating in terraform course"
}

variable "filename" {
  default = "student.alias"
  type = string
  description = "filename of the s3 object"
}