# Agent Instructions

This repository is a small TypeScript template. Keep changes focused and avoid adding framework or build-tool assumptions unless the user asks for them.

## Project Structure

Refer to `README.md` for the canonical file structure. Update the README first when adding, removing, or changing top-level project files or generated-output conventions.

## Modular Rules

Additional Codex-facing repository conventions live in `.codex/rules/`. Read and follow the relevant rule files before working in their area:

- For frontend work, read and follow `.codex/rules/style_frontend.md`.

## TypeScript Usage

- Always install and use TypeScript locally through npm.
- Do not use global TypeScript installs or global `tsc` assumptions.
- Treat this template as native ESM. Keep `package.json` set to `"type": "module"` unless the user explicitly asks for CommonJS.
- This template supports direct TypeScript imports. Use explicit `.ts` extensions in relative TypeScript source imports, for example `import { add } from "./math.ts";`.
- Keep `allowImportingTsExtensions` and `rewriteRelativeImportExtensions` together so source can import `.ts` files while emitted JavaScript points at `.js` files.
- Use the local `tsx` dependency for direct TypeScript execution. Keep the `dev` npm script generic (`tsx`) and pass entrypoint files as arguments.
- Use `make help` to inspect the available workflow commands.
- `make install` initializes npm, installs local TypeScript and `tsx`, sets `"type": "module"`, and writes the standard npm scripts with `npm pkg set`.
- `make build` relies on `tsconfig.json`; keep its `include`, `rootDir`, and `outDir` settings aligned with the file structure in `README.md`.
- Keep `rootDir` as `.` unless the user explicitly asks to change the emitted `dist/` layout.
- Do not assume `npm start` exists. This template runs compiled samples directly with `node` unless a project-specific runtime entrypoint is added.
- Do not hardcode a TypeScript entrypoint in package scripts or Makefile targets unless the user asks for a project-specific entrypoint. Use `make run FILE=...` for direct execution.
- Prefer the Makefile targets for common workflows:
  - `make help`
  - `make install`
  - `make info`
  - `make build`
  - `make run`
  - `make typecheck`
  - `make watch`
  - `make clean`

## Cleanup

Use `make clean` for generated files. It removes `dist`, `outputs` directories, `*.out` files, and `.DS_Store` files while excluding `.git`.
