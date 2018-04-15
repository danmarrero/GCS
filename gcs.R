## Google Cloud Compute Engine
## VM RStudio Server

options(googleAuthR.scopes.selected = "https://www.googleapis.com/auth/cloud-platform")

project <- "ecomm-197702"
zone <- "us-central1-a"
account_key <- "gcs-key.json"

Sys.setenv(
  GCE_AUTH_FILE = account_key,
  GCE_DEFAULT_PROJECT_ID = project,
  GCE_DEFAULT_ZONE = zone
)

library(googleComputeEngineR)

gce_global_project(project)
gce_global_zone(zone)

vm <- gce_vm(template = "rstudio",
             name = "rstudio-server",
             username = "dmarrero",
             password = "dmarrero",
             predefined_type = "f1-micro")
