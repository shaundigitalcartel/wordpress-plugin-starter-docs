# wordpress-plugin-starter-docs

Reusable docs and workflow helpers for all WordPress plugin repos.

## Included
- `LEARNINGS.template.md`
- `TESTING.template.md`
- `DESIGN.template.md`
- `init-plugin-docs.sh`
- `ENVIRONMENT.md`

## Usage in a plugin repo
1. Copy these files into your plugin repo (or add as a git submodule/subtree).
2. Run:
```bash
bash init-plugin-docs.sh .
```
3. This creates:
- `LEARNINGS.md`
- `TESTING.md`
- `DESIGN.md`

## Suggested release flow
- `make bump VERSION=x.y.z`
- `make test`
- `make pack`
- `make release VERSION=x.y.z`

## Notes
- Keep templates generic and update here first.
- Pull template updates into each plugin repo as needed.
