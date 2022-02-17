terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.16.0"
    }
  }
}
provider "docker" {
  host = "unix:///var/run/docker.sock"
}
resource "docker_container" "nginx" {
  image = var.nginx_image_id
  name  = var.nginx_container_name
  ports {
    internal = 80
    external = var.nginx_host_port
  }
}
