# Conventions

## Repository Scope

This repository defines reusable AI agent skills and, later, agent descriptions for software development.

## Skill Rules

- Put each skill in `skills/<skill-name>/SKILL.md`.
- Use lowercase hyphenated names.
- Keep `SKILL.md` short enough to be read in one pass.
- Include only procedural knowledge that improves repeated execution.
- Avoid generic advice that a capable coding agent already knows.
- Add references, scripts, or assets only when they are directly needed.

## Agent Rules

Agents are not added yet. When added, each agent should describe:

- Purpose
- When to use it
- Inputs it needs
- Work it should perform
- Output format
- Boundaries and escalation rules

## Change Rules

- Start with the smallest useful artifact.
- Explain why a new file or folder is needed before adding it.
- Prefer evolving existing conventions over introducing new categories.
