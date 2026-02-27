# LEARNINGS.md — <Plugin Name>

This is the persistent engineering memory for this plugin.
Read before edits. Append key learnings after changes.

## Project
- Plugin: <Plugin Name>
- Slug: <plugin-slug>
- Repository: <repo-url>
- Owner: <owner>

## Architecture
- Entry point:
- Admin UI:
- REST/API:
- Data/storage:
- Assets:

## Security
- Capabilities required:
- Nonces:
- Input sanitization patterns:
- Output escaping patterns:
- Sensitive data rules:
- Admin notice policy: suppress unrelated wp-admin/plugin notices on our plugin screen to keep UX focused.

## Versioning
- Current version:
- Version bump rule: bump semver on every shipped update.
- Synchronize version in:
  - Plugin header version
  - Plugin version constant
  - Pack script zip filename
  - Changelog heading
  - Any user-facing version docs
- Packaging rule: zip should contain a single root folder matching plugin slug (for example `plugin-slug/...`) so uploads replace existing installs cleanly.

## Testing
- Local stack:
- Smoke checks:
- Regression-prone paths:
- Admin-AJAX smoke check should assert response is JSON (never raw `0`).

## Release
- Required flow:
  - bump version
  - run tests
  - package zip
  - run pre-release checks
  - commit/push

## Known Issues
- <none>

## Learnings Log
- YYYY-MM-DD: <decision/fix and why>
