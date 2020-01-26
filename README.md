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
gcloud init
```
