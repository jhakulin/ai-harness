# agents-skills

Minimal, tool-neutral source repository for software-development agent descriptions and reusable agent skills.

The repository is intentionally small at first. Add new skills and agents only when there is a concrete use case, a clear trigger, and a repeatable workflow worth preserving.

## Structure

```text
AGENTS.md                  Shared instructions for Codex-style agents
CLAUDE.md                  Shared instructions for Claude
docs/conventions.md        Repository authoring rules
skills/<skill>/SKILL.md    Reusable skill definitions
scripts/validate-repo.js   Lightweight repository validator
```

## Skills

- `skills/skill-authoring`: Use this when creating or improving skills in this repository.

## Principles

- Keep skills simple, reusable, reliable, and extensible.
- Prefer one canonical source over per-tool duplication.
- Add tool-specific adapters only after the shared format proves insufficient.
- Do not add lifecycle agents, commands, hooks, or integrations without a specific need.

## Validation

```bash
node scripts/validate-repo.js
```
