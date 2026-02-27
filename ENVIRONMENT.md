# ENVIRONMENT.md

This file captures the known-good local environment and command patterns for WordPress plugin work.

## OS + Shell
- OS: Windows 11
- Shell used by agent: PowerShell
- Some scripts run under bash (`SHELL := /bin/bash` in Makefiles)

## Core Tooling
- Docker Desktop + Docker Engine running
- GNU Make (Windows install)
- PHP CLI installed
- WP-CLI installed
- `jq` installed
- `zip` command available (wrapper backed by 7-Zip)
- Git + GitHub CLI (`gh`) authenticated

## Known Paths (this workstation)
- Make:
  - `C:\Users\shaun\AppData\Local\Microsoft\WinGet\Packages\ezwinports.make_Microsoft.Winget.Source_8wekyb3d8bbwe\bin\make.exe`
- PHP:
  - `C:\Users\shaun\AppData\Local\Microsoft\WinGet\Packages\PHP.PHP.8.2_Microsoft.Winget.Source_8wekyb3d8bbwe\php.exe`
- WP-CLI:
  - `C:\Users\shaun\tools\wp-cli\wp.cmd`
  - `C:\Users\shaun\tools\wp-cli\wp-cli.phar`
- Utility bin folder (on user PATH):
  - `C:\Users\shaun\tools\bin`

## Standard Workflow Commands
- Start stack: `make up`
- Reset WP + plugin: `make reset`
- Run smoke tests: `make test`
- Build plugin zip: `make pack`
- Bump version: `make bump VERSION=x.y.z`
- Full release gate: `make release VERSION=x.y.z`

## Notes for Smooth Runs
- Use `curl.exe` in PowerShell to avoid alias conflicts.
- In this environment, if `make` is not found in a session, use absolute path above.
- Keep version synchronized across header/constant/changelog/pack script.
- Prefer non-interactive git and CLI commands.

## Reuse Guidance
- Keep this file in each plugin repo (copied/adapted from starter).
- Add plugin-specific environment quirks to `LEARNINGS.md` with date-stamped notes.
