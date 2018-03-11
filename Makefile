SHELL := /bin/bash

help: ## Prints help for targets with comments
	@grep -E '^(# ----|[$$/0-9)(.a-zA-Z_-]+:.*?## .*$$)' Makefile | awk 'BEGIN {FS = ":.*?## "}; {if($$1 ~ /^#/) {print "---------------"} else { printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}}'

