# Terraform

## IAM & Admin

- Service Accounts:
    * CREATE SERVICE ACCOUNT
        - service_account_name: "terraform-runner"
    * CREATE AND CONTINUE
    * SELECT A ROLE
        - Cloud_Storage: "Storage Admin"
    * ADD ANOTHER ROLE
        - BigQuery: "BigQuery Admin"
    * ADD ANOTHER ROLE
        - Compute_Engine: "Compute Admin"
    * CONTINUE
    * DONE
    
    - service_account_name: "terraform-runner"
        * Actions:
            * Manage_keys
                - ADD_KEY: "create new key"
                    - Key_type: "JSON"
        * DONE

## Local Terminal Settings
```bash
export GOOGLE_CREDENTIALS='/workspaces/data-engineer-zoomcamp-2024/01-introduction/terraform/keys/my-creds.json'
```