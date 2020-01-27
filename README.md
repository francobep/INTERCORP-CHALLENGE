# INTERCORP-CHALLENGE

## Startup environment.

### Install Terraform.

```

wget "https://releases.hashicorp.com/terraform/0.12.20/terraform_0.12.20_linux_amd64.zip"
unzip -d terraform terraform_0.12.20_linux_amd64.zip
mv terraform/terraform /usr/bin/

```

### Install GCLOUD CLI.
* Requires valid account and a project.

```
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-231.0.0-linux-x86_64.tar.gz
tar zxvf google-cloud-sdk-231.0.0-linux-x86_64.tar.gz google-cloud-sdk
cd google-cloud-sdk
./google-cloud-sdk/install.sh
```
### Init GCLOUD

```
gcloud services enable storage-api.googleapis.com
gcloud services enable cloudresourcemanager.googleapis.com
gcloud services enable compute.googleapis.com
gcloud services enable container.googleapis.com
gcloud services enable iam.googleapis.com

gcloud iam service-accounts create terraform
gcloud projects add-iam-policy-binding elegant-door-738 --member "serviceAccount:terraform@elegant-door-738.iam.gserviceaccount.com" --role "roles/owner"
gcloud iam service-accounts keys create key.json --iam-account terraform@elegant-door-738.iam.gserviceaccount.com
export GOOGLE_APPLICATION_CREDENTIALS="$PWD/key.json"
```
### GCS for Terraform State Files

```
gsutil mb -l us-east4 gs://intercorpchallenge-terraform-state
```
### Initialize Terraform 

```
terraform init -backend-config=bucket=intercorpchallenge-terraform-state
```
