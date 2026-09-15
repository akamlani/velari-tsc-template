# Velari TypeScript Template

A minimal TypeScript repository template that installs and runs TypeScript locally. Do not install TypeScript globally for this project.

## Requirements

- Node.js
- npm
- make

## Setup

Show the available Makefile targets:

```sh
make help
```

Install local project dependencies:

```sh
make install
```

This initializes npm, installs TypeScript as a local development dependency, and adds the `build`, `typecheck`, and `watch` npm scripts.

## Usage

Show all Makefile commands:

```sh
make help
```

Show local tool versions:

```sh
make info
```

Compile with the local TypeScript compiler:

```sh
make build
```

Or use npm directly:

```sh
npm run build
```

Run a type check without writing output:

```sh
make typecheck
```

Or use npm directly:

```sh
npm run typecheck
```

Watch for TypeScript changes:

```sh
make watch
```

Or use npm directly:

```sh
npm run watch
```

Remove generated files:

```sh
make clean
```

## File Structure

- `Makefile`: Project commands for setup, TypeScript usage, and cleanup.
- `package.json`: npm project metadata, local development dependencies, and npm scripts.
- `package-lock.json`: Locked npm dependency versions.
- `README.md`: Project overview and usage instructions.
- `AGENTS.md`: Instructions for coding agents working in this repository.
- `node_modules/`: Local npm dependencies created by `make install`; ignored by git.
- `dist/`: Default TypeScript build output when configured; ignored by git.
- `outputs/`: Generated output folders; ignored by git and removed by `make clean`.
