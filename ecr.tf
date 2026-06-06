resource "aws_ecr_repository" "flask_app" {

  name = "project03-flask-app"

  image_scanning_configuration {
    scan_on_push = true
  }

  force_delete = true

  tags = {
    Name = "project03-flask-app"
  }
}