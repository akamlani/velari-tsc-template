.PHONY: help install info build run typecheck watch clean

NPM := npm
NPX := npx --no-install
TSC := $(NPX) tsc

help:
	@echo "Available targets:"
	@printf "  %-31s %s\n" "make install" "Initialize npm, install local TypeScript tooling, and add npm scripts"
	@printf "  %-31s %s\n" "make info" "Show Node, npm, and local TypeScript versions"
	@printf "  %-31s %s\n" "make build" "Compile TypeScript using npm run build"
	@printf "  %-31s %s\n" "make run FILE=path/to/file.ts" "Execute any TypeScript file directly using npm run dev"
	@printf "  %-31s %s\n" "make typecheck" "Type-check TypeScript without emitting files"
	@printf "  %-31s %s\n" "make watch" "Run TypeScript in watch mode"
	@printf "  %-31s %s\n" "make clean" "Remove generated files and folders"

install:
	$(NPM) init -y
	$(NPM) install --save-dev typescript tsx
	$(NPM) pkg set type="module"
	$(NPM) pkg set scripts.build="tsc"
	$(NPM) pkg set scripts.dev="tsx"
	$(NPM) pkg set scripts.typecheck="tsc --noEmit"
	$(NPM) pkg set scripts.watch="tsc --watch"

info:
	node --version
	$(NPM) --version
	$(TSC) --version

build:
	$(NPM) run build

run:
ifndef FILE
	$(error Set FILE to the TypeScript file to run, for example: make run FILE=examples/sample/index.ts)
endif
	# FILE is intentionally user-provided so this template does not hardcode an entrypoint.
	$(NPM) run dev -- $(FILE)

typecheck:
	$(NPM) run typecheck

watch:
	$(NPM) run watch

clean:
	rm -rf dist
	find . -not -path './.git/*' -type d -name "outputs" -exec rm -rf {} +
	find . -not -path './.git/*' -name "*.out" -delete
	find . -not -path './.git/*' -name ".DS_Store" -delete
