# Create GCP project for Proof of Concept projects

This is my personal setup to deploy PoC projects quickly and streamline cleanup.

#### Goals:

1. Organised Deployment of PoCs
2. Cron tasks to schedule cleanup resources created in the PoC.
3. Use Remote backends so that others can try this with their own setup.
   <br>

<br>

#### Instructions:

Add GCP_BILLING_ACCOUNT_ID to project with following command.

```
cat > terraform.tfvars<< EOF
billing_account_id = "[GCP_BILLING_ACCOUNT_ID]"
EOF
```

<details>
<summary>Gettting Access to run Terraform on Google Cloud Terraform</summary>

###### Authenticate to GCP using ADC

```
gcloud auth application-default login
```

</details>
<br>

<details>
<summary>Tools, Cleanup</summary>

##### Miscellaneous Housekeeping

> Update gcloud components

```
sudo gcloud components update -y
```

> Gcloud setup
> Reinitialise with a completely new configuration.

```
gcloud init
```

> Terraform destroy

```
terraform destroy -auto-approve
```

</details>
<br>

<details>
<summary>Terraform Commands</summary>

##### Terraform setup

> Setup TF

```
terraform init
terraform fmt
terraform validate
```

> Apply TF configuration

```
terraform apply -auto-approve
```

> Check TF output

```
$ terraform output
```

</details>
<br>
