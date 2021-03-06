# 
gcp_project_id = "intercorp-266323"

cluster_name = "intercorp"

# 
gcp_location = "us-east4"

daily_maintenance_window_start_time = "03:00"

node_pools = [
  {
    name                       = "default"
    initial_node_count         = 1
    autoscaling_min_node_count = 2
    autoscaling_max_node_count = 3
    management_auto_upgrade    = true
    management_auto_repair     = true
    node_config_machine_type   = "n1-standard-1"
    node_config_disk_type      = "pd-standard"
    node_config_disk_size_gb   = 100
    node_config_preemptible    = false
  },
]

vpc_network_name = "vpc-network"

vpc_subnetwork_name = "vpc-subnetwork"

vpc_subnetwork_cidr_range = "10.0.16.0/20"

cluster_secondary_range_name = "pods"

cluster_secondary_range_cidr = "10.16.0.0/12"

services_secondary_range_name = "services"

services_secondary_range_cidr = "10.1.0.0/20"

master_ipv4_cidr_block = "172.16.0.0/28"

access_private_images = "false"

http_load_balancing_disabled = "false"

master_authorized_networks_cidr_blocks = [
  {
    cidr_block = "0.0.0.0/0"

    display_name = "default"
  },
]
