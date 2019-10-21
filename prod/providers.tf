provider "google" {
    credentials = "${file("../../../../plinthos-sa.json")}"
    project = "plinthos"
    region = "europe-west2"
    zone = "europe-west2a"
}