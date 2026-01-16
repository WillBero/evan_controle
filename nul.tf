provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  # erreur : tag name manquant (TFLint recommande d'avoir des tags)
}

resource "aws_s3_bucket" "bad_bucket" {
  bucket = "MY_BUCKET" # erreur : bucket name devrait être en lowercase
  acl    = "public-read" # erreur de sécurité : TFLint signale ACL public
}
