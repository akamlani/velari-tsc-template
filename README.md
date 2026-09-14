# Velari TypeScript Template

A minimal TypeScript repository template that installs and runs TypeScript locally. Do not install TypeScript globally for this project.

## Requirements

- Node.js
- npm
- make

## Setup

Install local project dependencies:

```sh
make install
```

This runs `npm init -y` and installs TypeScript as a local development dependency.

## Usage

Show local tool versions:

```sh
make info
```

Compile with the local TypeScript compiler:

```sh
make build
```

Run a type check without writing output:

```sh
make typecheck
```

Watch for TypeScript changes:

```sh
make watch
```

Remove generated files:

```sh
make clean
```

## File Structure

- `Makefile`: Project commands for setup, TypeScript usage, and cleanup.
- `package.json`: npm project metadata and local development dependencies.
- `package-lock.json`: Locked npm dependency versions.
- `README.md`: Project overview and usage instructions.
- `AGENTS.md`: Instructions for coding agents working in this repository.
- `node_modules/`: Local npm dependencies created by `make install`; ignored by git.
- `dist/`: Default TypeScript build output when configured; ignored by git.
- `outputs/`: Generated output folders; ignored by git and removed by `make clean`.
