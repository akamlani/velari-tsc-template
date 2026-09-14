.PHONY: install info build typecheck watch clean

NPM := npm
NPX := npx --no-install
TSC := $(NPX) tsc

install:
	$(NPM) init -y
	$(NPM) install --save-dev typescript

info:
	node --version
	$(NPM) --version
	$(TSC) --version

build:
	$(TSC)

typecheck:
	$(TSC) --noEmit

watch:
	$(TSC) --watch

clean:
	rm -rf dist
	find . -not -path './.git/*' -type d -name "outputs" -exec rm -rf {} +
	find . -not -path './.git/*' -name "*.out" -delete
	find . -not -path './.git/*' -name ".DS_Store" -delete
