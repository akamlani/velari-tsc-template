.PHONY: help install info build typecheck watch clean

NPM := npm
NPX := npx --no-install
TSC := $(NPX) tsc

help:
	@echo "Available targets:"
	@echo "  make install    Initialize npm, install local TypeScript, and add npm scripts"
	@echo "  make info       Show Node, npm, and local TypeScript versions"
	@echo "  make build      Compile TypeScript using npm run build"
	@echo "  make typecheck  Type-check TypeScript without emitting files"
	@echo "  make watch      Run TypeScript in watch mode"
	@echo "  make clean      Remove generated files and folders"

install:
	$(NPM) init -y
	$(NPM) install --save-dev typescript
	$(NPM) pkg set scripts.build="tsc"
	$(NPM) pkg set scripts.typecheck="tsc --noEmit"
	$(NPM) pkg set scripts.watch="tsc --watch"

info:
	node --version
	$(NPM) --version
	$(TSC) --version

build:
	$(NPM) run build

typecheck:
	$(NPM) run typecheck

watch:
	$(NPM) run watch

clean:
	rm -rf dist
	find . -not -path './.git/*' -type d -name "outputs" -exec rm -rf {} +
	find . -not -path './.git/*' -name "*.out" -delete
	find . -not -path './.git/*' -name ".DS_Store" -delete
