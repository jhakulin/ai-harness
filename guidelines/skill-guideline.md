# Skill Guideline

A skill is a focused operational instruction set that helps an agent perform a repeatable task consistently. It should define when it applies, what workflow to follow, what boundaries to respect, and what output to produce.

## Core Principles

1. **Write workflows, not essays.** A skill should tell the agent what to do, in what order, and how to know when it is done.
2. **Keep each skill narrow.** One skill should cover one repeatable task family.
3. **Make invocation predictable.** The frontmatter description should clearly say when the skill applies and when it does not.
4. **Use progressive disclosure.** Keep the main `SKILL.md` focused; move long examples, policies, schemas, and scripts to referenced files.
5. **Define verification.** Every skill should include quality checks before the agent finishes.
6. **Treat skills like code.** Review, test, version, and prune them.

## Recommended Skill Structure

Use this structure as the default shape for new skills. Keep the template itself in a separate reusable file.

Recommended template file: `templates/minimal-skill-template.md`

```md
---
name: skill-name
description: Use this skill when [specific trigger/context], especially when [risk, repetition, complexity, or company process]. Do not use when [false positive].
---

# Skill Name

## Overview

Explain what this skill does and what outcome it should produce.

The overview should be short. It should help the agent understand the purpose of the workflow, not provide broad background documentation.

## Workflow

For steps that are easy to skip, underdo, or interpret loosely, add a clear completion criterion such as `Done when...`.

1. Understand the request, goal, inputs, constraints, and expected output.
2. Inspect relevant context before inventing details.
3. Follow the task-specific process:
   - [Action]
   - [Action]
   - [Action]
4. Produce the required output.
5. Verify the result before finishing.

## Output Format

Define the expected output for this skill.

Use a fixed format when consistency matters. Otherwise, match the user request or target system.

## Guardrails

Define important boundaries, safety rules, approval requirements, and common mistakes to avoid.

- Do not [common mistake].
- Ask for approval before [risky action].
- Prefer [company standard] over [discouraged pattern].

## Verification

Before finishing, confirm:

- [ ] The output directly satisfies the request.
- [ ] Relevant context was checked.
- [ ] The output follows the required format.
- [ ] Any assumptions, risks, or blockers are visible.
```

## Skill Scope

Prefer small, focused skills.

A skill should cover one repeatable workflow or one closely related task family. Split a skill when it contains multiple unrelated outcomes, multiple owners, many branches, or a name that needs `and`.

Avoid broad skills that define general assistant behavior. Put that guidance in system instructions, repository guidance, policy documents, or multiple smaller skills instead.

## Supporting Files

Use supporting files for material that is useful but not always needed.

Recommended structure:

```text
skill-name/
├── SKILL.md
├── references/
│   └── policy-or-guidance.md
├── examples/
│   └── example-output.md
├── scripts/
│   └── helper.py
└── assets/
    └── template.md
```

Rules:

- Keep the core workflow in `SKILL.md`.
- Put long examples in `examples/`.
- Put policies, schemas, and detailed references in `references/`.
- Put executable helpers in `scripts/`.
- Reference supporting files directly from `SKILL.md`; avoid nested reference chains.

## Red Flags

Use these as review signals. Not every skill needs a dedicated `Red Flags` section, but every skill should avoid these problems.

- The description says only "helps with".
- The skill covers multiple unrelated tasks.
- The workflow is advice instead of ordered steps.
- The frontmatter description does not include clear triggers, boundaries, or false positives.
- The output format is unclear when consistency matters.
- There are no verification checks.
- The skill depends on hidden tools, credentials, or files.
- The skill asks the agent to do risky actions without approval.
- Long background text appears before the actionable workflow.
- Multiple skills would trigger for the same request.

## Verification

Before accepting a new or changed skill, confirm:

- [ ] Name is specific, lowercase, and hyphenated.
- [ ] Frontmatter description includes clear triggers, boundaries, false positives, and task-specific keywords.
- [ ] The workflow is ordered and actionable.
- [ ] The output format is defined or explicitly delegated to the user/requested target format.
- [ ] The skill has quality checks or completion criteria.
- [ ] Required tools, scripts, and dependencies are explicit.
- [ ] Required permissions are explicit.
- [ ] Risky or irreversible actions require explicit approval.
- [ ] Supporting files are referenced only when needed and directly from `SKILL.md`.
- [ ] The skill does not overlap unnecessarily with another skill.
- [ ] The skill can be tested with representative examples.

## Sources

- Agent Skills specification: https://agentskills.io/specification
- Claude skill authoring best practices: https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices
- Addy Osmani, Agent Skills: https://addyosmani.com/blog/agent-skills/
- Addy Osmani, planning-and-task-breakdown skill: https://github.com/addyosmani/agent-skills/blob/main/skills/planning-and-task-breakdown/SKILL.md
- Reddit discussion on practical skill use: https://www.reddit.com/r/GithubCopilot/comments/1qthc9m/what_are_the_best_agent_skills_to_use_right_now/
- Bibek Poudel, The SKILL.md Pattern: https://bibek-poudel.medium.com/the-skill-md-pattern-how-to-write-ai-agent-skills-that-actually-work-72a3169dd7ee
