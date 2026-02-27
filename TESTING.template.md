# TESTING.md — <Plugin Name>

This file defines the standard test process for this plugin.

## Environments
- Local Docker stack: required
- Staging site: recommended before production
- Production: validate with read-only checks first

## Quick Commands
- `make up`
- `make reset`
- `make test`
- `make pack`
- `make release VERSION=x.y.z`

## Minimum Smoke Tests
1. Plugin activates without fatal errors.
2. Admin page loads and assets render.
3. Required endpoints/actions return expected status and schema.
4. Permission checks reject unauthorized users.
5. Data export/download paths work for authorized admin.
6. Versioned package zip is generated with expected filename.

## Admin-AJAX Checks (if used)
1. Action hook is registered (`has_action`).
2. Nonce is validated.
3. Capability checks return 403 when unauthorized.
4. Response is structured JSON (never raw `0`/HTML on success).

## REST Checks (if used)
1. Authenticated success path.
2. Unauthorized/forbidden path.
3. Query parameter validation returns 400 for invalid input.
4. Large payload format checks (pagination/streaming).

## Regression Checklist
- Theme/asset cache busting still works after deploy.
- Version strings are synchronized.
- Changelog includes new version.
- Generated zip installs cleanly on target WP site.

## Release Gate
Release is blocked unless all are true:
- Tests pass.
- Package exists.
- Pre-release checks pass.
- No uncommitted required files.
