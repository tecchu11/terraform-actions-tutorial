module "image" {
  source = "../../modules/image"
  nginx_image_version = "1.21.1"
}
module "container" {
  source               = "../../modules/container"
  nginx_image_id       = module.image.nginx_image_id
  nginx_container_name = "env_stg_container"
  nginx_host_port      = "8081"
}
