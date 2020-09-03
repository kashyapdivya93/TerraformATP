resource "oci_database_autonomous_database" "DuATP" {
  #Required
  admin_password           = "Bangalore@123"
  compartment_id           = "ocid1.compartment.oc1..aaaaaaaafumsqmpg74h244arldrn72gasogwmp64snq2f5zn46swyjqdntda"
  cpu_core_count           = "1"
  data_storage_size_in_tbs = "1"
  db_name                  = var.db_name
  display_name            = "DUATP"
  license_model           = var.db_license_model
  db_version              = "19c"
  db_workload             = "OLTP"
  is_auto_scaling_enabled = "false"
  
}


output "ADB_Service_Console_URL" {
  value = oci_database_autonomous_database.DuATP.service_console_url
}