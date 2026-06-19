# Agent Instructions

Use this repository as the canonical source for reusable software-development agent skills and agent descriptions.

## Operating Rules

- Read `docs/conventions.md` before adding or changing skills or agents.
- Keep changes minimal and grounded in an explicit user need.
- Do not copy large external repositories or frameworks into this repository.
- Do not add tool-specific integration folders unless explicitly requested.
- Prefer improving one existing skill over adding overlapping skills.

## Skill Format

Each skill lives in `skills/<name>/SKILL.md` and must include YAML frontmatter:

```yaml
---
name: example-skill
description: What the skill does. Use when...
---
```

Skill names use lowercase letters, digits, and hyphens.
