# Agent Instructions

This repository is a small TypeScript template. Keep changes focused and avoid adding framework or build-tool assumptions unless the user asks for them.

## Project Structure

Refer to `README.md` for the canonical file structure. Update the README first when adding, removing, or changing top-level project files or generated-output conventions.

## TypeScript Usage

- Always install and use TypeScript locally through npm.
- Do not use global TypeScript installs or global `tsc` assumptions.
- Use `make help` to inspect the available workflow commands.
- `make install` initializes npm, installs local TypeScript, and writes the standard npm scripts with `npm pkg set`.
- `make build` relies on `tsconfig.json`; keep its `include`, `rootDir`, and `outDir` settings aligned with the file structure in `README.md`.
- Keep `rootDir` as `.` unless the user explicitly asks to change the emitted `dist/` layout.
- Do not assume `npm start` exists. This template runs compiled samples directly with `node` unless a project-specific runtime entrypoint is added.
- Prefer the Makefile targets for common workflows:
  - `make help`
  - `make install`
  - `make info`
  - `make build`
  - `make typecheck`
  - `make watch`
  - `make clean`

## Cleanup

Use `make clean` for generated files. It removes `dist`, `outputs` directories, `*.out` files, and `.DS_Store` files while excluding `.git`.
