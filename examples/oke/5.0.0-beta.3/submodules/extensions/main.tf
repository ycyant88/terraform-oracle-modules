terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "8.29.0"
    }
  }
}

provider "oci" {
  # Configuration options
}

module "oke" {
  source                               = "oracle-terraform-modules/oke/oci"
  version                              = "5.0.0-beta.3"
  bastion_host                         = var.bastion_host
  bastion_user                         = var.bastion_user
  calico_apiserver_install             = var.calico_apiserver_install
  calico_install                       = var.calico_install
  calico_mode                          = var.calico_mode
  calico_mtu                           = var.calico_mtu
  calico_staging_dir                   = var.calico_staging_dir
  calico_typha_install                 = var.calico_typha_install
  calico_typha_replicas                = var.calico_typha_replicas
  calico_url                           = var.calico_url
  calico_version                       = var.calico_version
  cluster_autoscaler_helm_values       = var.cluster_autoscaler_helm_values
  cluster_autoscaler_helm_values_files = var.cluster_autoscaler_helm_values_files
  cluster_autoscaler_helm_version      = var.cluster_autoscaler_helm_version
  cluster_autoscaler_install           = var.cluster_autoscaler_install
  cluster_autoscaler_namespace         = var.cluster_autoscaler_namespace
  cni_type                             = var.cni_type
  expected_node_count                  = var.expected_node_count
  gatekeeper_helm_values               = var.gatekeeper_helm_values
  gatekeeper_helm_values_files         = var.gatekeeper_helm_values_files
  gatekeeper_helm_version              = var.gatekeeper_helm_version
  gatekeeper_install                   = var.gatekeeper_install
  gatekeeper_namespace                 = var.gatekeeper_namespace
  kubernetes_version                   = var.kubernetes_version
  metrics_server_helm_values           = var.metrics_server_helm_values
  metrics_server_helm_values_files     = var.metrics_server_helm_values_files
  metrics_server_helm_version          = var.metrics_server_helm_version
  metrics_server_install               = var.metrics_server_install
  metrics_server_namespace             = var.metrics_server_namespace
  multus_daemonset_url                 = var.multus_daemonset_url
  multus_install                       = var.multus_install
  multus_namespace                     = var.multus_namespace
  multus_version                       = var.multus_version
  operator_host                        = var.operator_host
  operator_user                        = var.operator_user
  pods_cidr                            = var.pods_cidr
  prometheus_helm_values               = var.prometheus_helm_values
  prometheus_helm_values_files         = var.prometheus_helm_values_files
  prometheus_helm_version              = var.prometheus_helm_version
  prometheus_install                   = var.prometheus_install
  prometheus_namespace                 = var.prometheus_namespace
  prometheus_reapply                   = var.prometheus_reapply
  region                               = var.region
  ssh_private_key                      = var.ssh_private_key
  state_id                             = var.state_id
  vcn_cidrs                            = var.vcn_cidrs
  worker_pools                         = var.worker_pools
}
