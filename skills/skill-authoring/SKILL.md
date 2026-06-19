---
name: skill-authoring
description: Create or improve reusable software-development agent skills in this repository. Use when adding a new skill, revising an existing SKILL.md, defining skill triggers, or deciding whether a workflow deserves a reusable skill.
---

# Skill Authoring

## Goal

Create skills that help agents repeat a software-development workflow reliably without adding unnecessary repository structure.

## Process

1. Identify the concrete task the skill supports.
2. Write the trigger in the `description` field: what it does and when to use it.
3. Keep the body procedural: steps, decision points, expected outputs, and validation.
4. Add supporting files only when the skill cannot stay clear and concise in `SKILL.md`.
5. Validate the repository with `node scripts/validate-repo.js`.

## Quality Bar

A skill is worth adding when it captures a repeatable workflow that would otherwise be re-explained or inconsistently performed.

Do not add a skill for generic engineering advice, vague principles, or one-off preferences.

## Minimal Template

```markdown
---
name: example-skill
description: What the skill does. Use when a specific trigger or task appears.
---

# Example Skill

## Goal

State the outcome.

## Process

1. Do the first required action.
2. Do the next required action.
3. Verify the result.

## Output

Describe what the agent should produce.
```
