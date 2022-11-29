data "google_billing_account" "acct" {
  display_name = "My Billing Account"
  open         = true
}

output "id" {
  value = data.google_billing_account.acct.id
}

output "name" {
  value = data.google_billing_account.acct.name
}

output "display_name" {
  value = data.google_billing_account.acct.display_name
}



resource "google_project" "GCP-project" {
  name            = "GCP-project"
  project_id      = "gcp-project-370102"
  billing_account = data.google_billing_account.acct.id
}

output "project_id" {
  value = google_project.GCP-project.id
}


resource "null_resource" "set-project" {
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = "gcloud config set project ${google_project.GCP-project.project_id}"
  }
}



resource "null_resource" "enable-apis" {
  depends_on = [
    google_project.GCP-project,
    null_resource.set-project
  ]
  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "local-exec" {
    command = <<-EOT
        gcloud services enable compute.googleapis.com
        gcloud services enable dns.googleapis.com
        gcloud services enable storage-api.googleapis.com
        gcloud services enable container.googleapis.com
        gcloud services enable file.googleapis.com
        gcloud services enable compute.googleapis.com
    EOT
  }
}