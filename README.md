# Velari TypeScript Template

A minimal TypeScript repository template that installs and runs TypeScript locally. It uses native ECMAScript modules through `"type": "module"` and TypeScript's `NodeNext` module settings. Do not install TypeScript globally for this project.

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

The build uses `tsconfig.json`, compiles TypeScript files under `examples/`, and writes JavaScript output to `dist/`. The compiler keeps `rootDir` as `.` so output paths mirror the repository structure.

Use explicit `.js` extensions for relative TypeScript imports so the emitted JavaScript runs correctly in Node ESM:

```ts
import { add } from "./math.js";
```

Run the compiled sample:

```sh
node dist/examples/sample/index.js
```

This template does not define a `start` script by default. Run compiled samples directly with `node` after building, or add a project-specific npm script when the runtime entrypoint is known.

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
- `tsconfig.json`: TypeScript compiler configuration for local examples. It keeps `rootDir` as `.` and emits compiled files under `dist/`.
- `package.json`: npm project metadata, native ESM mode, local development dependencies, and npm scripts for build, typecheck, and watch.
- `package-lock.json`: Locked npm dependency versions.
- `examples/`: TypeScript example source files compiled by `make build`.
- `README.md`: Project overview and usage instructions.
- `AGENTS.md`: Instructions for coding agents working in this repository.
- `node_modules/`: Local npm dependencies created by `make install`; ignored by git.
- `dist/`: Default TypeScript build output when configured; ignored by git.
- `outputs/`: Generated output folders; ignored by git and removed by `make clean`.
