/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "gcp_project" {
  description = "Name of the Google Cloud project to deploy to"
}

variable "gcp_region" {
  description = "GCP region to create resources in"
  default     = "us-central1"
}

variable "gcp_zone" {
  description = "GCP zone to create resources in"
  default     = "us-central1-f"
}

variable "infrastructure_id" {
  description = "Unique indentifier for the deployment"
}

variable "container_base_image" {
  description = "Base GCP container image"
  default = "cos-cloud/cos-stable"
}

variable "turbinia_creation_date" {
  description = "The creation date of this Turbinia instance"
  default = ""
}

variable "turbinia_created_by" {
  description = "The user who created this Turbinia instance"
  default = ""
}

variable "turbinia_docker_image_server" {
  description = "Turbinia server docker image"
  default = "us-docker.pkg.dev/osdfir-registry/turbinia/release/turbinia-server:latest"
}

variable "turbinia_docker_image_worker" {
  description = "Turbinia worker docker image"
  default = "us-docker.pkg.dev/osdfir-registry/turbinia/release/turbinia-worker:latest"
}

variable "turbinia_server_machine_type" {
  description = "Machine type for Turbinia server"
  default     = "n1-standard-2"
}

variable "turbinia_worker_machine_type" {
  description = "Machine type for Turbinia worker."
  default     = "n1-standard-16"
}

variable "turbinia_server_disk_size_gb" {
  description = "Disk size for Turbinia server machine."
  default     = 200
}

variable "turbinia_server_count"{
  description = "Number of Turbinia server machines to run."
  default     = 1  
}

variable "turbinia_worker_disk_size_gb" {
  description = "Disk size for Turbinia worker machine."
  default     = 200
}

variable "turbinia_worker_count" {
  description = "Number of Turbinia worker machines to run."
  default     = 2
}

variable "turbinia_pip_source" {
  description = "Source package to use for Pip."
  default     = "turbinia"
}

variable "turbinia_output_directory" {
  description = "Local path to write Turbinia output to."
  default     = "/var/lib/turbinia/output"
}

variable "turbinia_tmp_directory" {
  description = "Local path to write Turbinia temporary output to."
  default     = "/var/lib/turbinia/tmp"
}

variable "vpc_network" {
  description = "The VPC network the stack will be configured in"
  default = "default"
}

variable "debug_logs" {
  description = "Whether to enable debug logs on the worker/server"
  default = ""
}
