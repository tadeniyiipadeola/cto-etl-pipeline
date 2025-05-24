.PHONY: hcp-auth setup-vault-env

hcp-auth:
	@echo "Authenticating to HCP Vault..."
	@hcp auth login --organization-id=$(HCP_ORG)
	@echo ">>> HCP authentication complete."


setup-vault-env:
	@echo "Setting Vault environment variables..."
	@export VAULT_ADDR=$$(hcp vault cluster get $(HCP_VAULT_CLUSTER) \
		--project-id=$(HCP_PROJECT) \
		--output=json | jq -r '.vault_uri')
	@export VAULT_NAMESPACE=$(VAULT_NAMESPACE)
	@export VAULT_TOKEN=$$(hcp vault auth token)