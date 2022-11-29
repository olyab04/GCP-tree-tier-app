resource "google_compute_network" "vpc-network-team3" {
  name                    = "vpc-network-team3" # var.vpc_name
  auto_create_subnetworks = "false"
  routing_mode            = "GLOBAL"
}