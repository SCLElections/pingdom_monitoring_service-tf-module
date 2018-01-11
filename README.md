# pingdom_monitoring_service-tf-module
Terraform module for creating Pingdom checks

## Example

```hcl-terraform
module "monitoring" {
  source     = "git@github.com:SCLElections/pingdom_monitoring_service-tf-module"
  domain     = "ca-commercial.com"
  contactids = "11281991"
}

```

## Input Variables
* **domain** - **[string]** - (required) - Domain for the pingdom check.
* **contactids** - **[string]** - (required) - Which teams/people to contact in case the check fails.
* **https** - **[boolean]** - (default: true) - Switch between http or https checks.
* **integrationids** - **[string]** - (default: [46564]) - Pingdom integrations ids.
* **production** - **[boolean]** - (default: true) - Used to for count on resources
