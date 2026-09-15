# Velari TypeScript Template

A minimal TypeScript repository template that installs and runs TypeScript locally. It uses native ECMAScript modules through `"type": "module"` and TypeScript's `NodeNext` module settings. It also supports direct TypeScript execution with `tsx`. Do not install TypeScript globally for this project.

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

This initializes npm, installs TypeScript and `tsx` as local development dependencies, sets the package to native ESM with `"type": "module"`, and adds the `build`, `dev`, `typecheck`, and `watch` npm scripts.

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

Source files can import other TypeScript files with explicit `.ts` extensions:

```ts
import { add } from "./math.ts";
```

The compiler uses `rewriteRelativeImportExtensions` to emit matching `.js` imports in `dist/`.

Run any TypeScript file directly without building:

```sh
make run FILE=examples/sample/index.ts
```

Or use npm directly:

```sh
npm run dev -- examples/sample/index.ts
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
- `package.json`: npm project metadata, native ESM mode, local development dependencies, and npm scripts for build, generic direct TypeScript execution, typecheck, and watch.
- `package-lock.json`: Locked npm dependency versions.
- `examples/`: TypeScript example source files compiled by `make build`.
- `README.md`: Project overview and usage instructions.
- `AGENTS.md`: Instructions for coding agents working in this repository.
- `.codex/rules/`: Modular Codex-facing repository conventions referenced by `AGENTS.md`.
- `node_modules/`: Local npm dependencies created by `make install`; ignored by git.
- `dist/`: Default TypeScript build output when configured; ignored by git.
- `outputs/`: Generated output folders; ignored by git and removed by `make clean`.
