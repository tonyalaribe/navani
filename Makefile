help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

css:
	npx tailwindcss-cli@latest build static/assets/css/tailwind.css -c static/assets/css/tailwind.config.js -o static/assets/css/tailwind.min.css

