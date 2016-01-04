provider "google" {
  account_file = ""
  credentials = "${file("${var.credentials}")}"
  project = "${var.project}"
  region  = "${var.region}"
}
