terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone      = "ru-central1-d"
  folder_id = "b1gmpeprede2rhbon5bu"
}

provider "random" {
}
