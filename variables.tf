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

variable "gcp_ubuntu_1804_image" {
  description = "Ubuntu version 18.04 image"
  default     = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "infrastructure_id" {
  description = "Unique indentifier for the deployment (default: random ID)"
  default     = ""
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
  description = "The docker image to use for the Turbinia Server"
  default = "us-docker.pkg.dev/osdfir-registry/turbinia/release/turbinia-server:latest"
}

variable "turbinia_docker_image_worker" {
  description = "The docker image to use for the Turbinia Worker"
  default = "us-docker.pkg.dev/osdfir-registry/turbinia/release/turbinia-worker:latest"
}

variable "vpc_network" {
  description = "The VPC network the stack will be configured in"
  default = "default"
}

variable "debug_logs" {
  description = "Whether to enable debug logs on the worker/server"
  default = ""
}
