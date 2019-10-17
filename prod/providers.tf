provider "google" {
    credentials = "${file("../../../../plinthos-sa.json")}"
    project = "plinthos"
    region = "europe-west1"
    zone = "europe-west1a"
}