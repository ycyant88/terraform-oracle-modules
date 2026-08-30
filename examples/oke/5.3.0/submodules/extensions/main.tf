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
  version                              = "5.3.0"
  bastion_host                         = var.bastion_host
  bastion_user                         = var.bastion_user
  cilium_helm_values                   = var.cilium_helm_values
  cilium_helm_values_files             = var.cilium_helm_values_files
  cilium_helm_version                  = var.cilium_helm_version
  cilium_install                       = var.cilium_install
  cilium_namespace                     = var.cilium_namespace
  cilium_reapply                       = var.cilium_reapply
  cluster_autoscaler_helm_values       = var.cluster_autoscaler_helm_values
  cluster_autoscaler_helm_values_files = var.cluster_autoscaler_helm_values_files
  cluster_autoscaler_helm_version      = var.cluster_autoscaler_helm_version
  cluster_autoscaler_install           = var.cluster_autoscaler_install
  cluster_autoscaler_namespace         = var.cluster_autoscaler_namespace
  cluster_private_endpoint             = var.cluster_private_endpoint
  cni_type                             = var.cni_type
  create_service_account               = var.create_service_account
  dcgm_exporter_helm_values            = var.dcgm_exporter_helm_values
  dcgm_exporter_helm_values_files      = var.dcgm_exporter_helm_values_files
  dcgm_exporter_helm_version           = var.dcgm_exporter_helm_version
  dcgm_exporter_install                = var.dcgm_exporter_install
  dcgm_exporter_namespace              = var.dcgm_exporter_namespace
  dcgm_exporter_reapply                = var.dcgm_exporter_reapply
  expected_autoscale_worker_pools      = var.expected_autoscale_worker_pools
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
  mpi_operator_deployment_url          = var.mpi_operator_deployment_url
  mpi_operator_install                 = var.mpi_operator_install
  mpi_operator_namespace               = var.mpi_operator_namespace
  mpi_operator_version                 = var.mpi_operator_version
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
  rdma_cni_plugin_daemonset_url        = var.rdma_cni_plugin_daemonset_url
  rdma_cni_plugin_install              = var.rdma_cni_plugin_install
  rdma_cni_plugin_namespace            = var.rdma_cni_plugin_namespace
  rdma_cni_plugin_version              = var.rdma_cni_plugin_version
  region                               = var.region
  service_accounts                     = var.service_accounts
  sriov_cni_plugin_daemonset_url       = var.sriov_cni_plugin_daemonset_url
  sriov_cni_plugin_install             = var.sriov_cni_plugin_install
  sriov_cni_plugin_namespace           = var.sriov_cni_plugin_namespace
  sriov_cni_plugin_version             = var.sriov_cni_plugin_version
  sriov_device_plugin_daemonset_url    = var.sriov_device_plugin_daemonset_url
  sriov_device_plugin_install          = var.sriov_device_plugin_install
  sriov_device_plugin_namespace        = var.sriov_device_plugin_namespace
  sriov_device_plugin_version          = var.sriov_device_plugin_version
  ssh_private_key                      = var.ssh_private_key
  state_id                             = var.state_id
  vcn_cidrs                            = var.vcn_cidrs
  whereabouts_daemonset_url            = var.whereabouts_daemonset_url
  whereabouts_install                  = var.whereabouts_install
  whereabouts_namespace                = var.whereabouts_namespace
  whereabouts_version                  = var.whereabouts_version
  worker_pools                         = var.worker_pools
}
