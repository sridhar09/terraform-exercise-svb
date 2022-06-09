locals {
  bucket_name = "sm-di-${var.student_alias}"
}

data "aws_s3_bucket_object" "magic_number" {
  bucket = local.bucket_name
  key    = "preset/${var.student_alias}.txt"
}

resource "aws_s3_object" "my_object" {
  bucket = local.bucket_name
  key    = var.filename
  content = "This bucket is reserved for ${var.student_alias} ***ONLY***\n The content type of the magic number file is ${data.aws_s3_bucket_object.magic_number.content_type}" # Usage of variable
}
