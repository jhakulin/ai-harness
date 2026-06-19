# Great Skills Guideline

A great skill makes the agent more reliable by turning repeated work into a small, explicit, verifiable process. It should help the agent reliably perform one repeatable task with the right trigger, workflow, guardrails, and output format.

This guideline is generic and reusable for company skill registries that use `SKILL.md`-style agent skills.

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

Use a fixed format when consistency matters. Adapt the format when the task, user request, or target system requires something else.

Generic example:

# [Result Title]

## Summary
[Short summary of the result]

## Main Output
[The actual answer, plan, review, draft, code change, or artifact]

## Risks or Open Questions
- [Risk, blocker, assumption, or unknown]

## Verification
- [Check completed]
- [Check completed]

## Guardrails

- Do not [common mistake].
- Do not [unsafe or low-quality behavior].
- Ask for approval before [risky action].
- Prefer [company standard] over [discouraged pattern].

## Verification

Before finishing, confirm:

- [ ] The output directly satisfies the request.
- [ ] Relevant context was checked.
- [ ] Assumptions, risks, and blockers are visible.
- [ ] The output follows the required format.
```

## Sizing Guidelines

Use skill size to keep workflows reliable.

| Size | Scope | Guidance |
|------|-------|----------|
| XS | One small transformation or check | Usually does not need a skill unless repeated often |
| S | One focused workflow | Ideal skill size |
| M | One task family with clear branches | Acceptable if the process is still easy to follow |
| L | Multiple workflows or many branches | Split into smaller skills |
| XL | Broad assistant behavior | Do not create as a single skill |

Break a skill down further when:

- The name contains `and`.
- The workflow has multiple unrelated outcomes.
- The skill needs more than one page of core instructions.
- Different teams would own different parts.
- Another skill would need to override large parts of it.

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
- Put policies, schemas, and deep references in `references/`.
- Put executable helpers in `scripts/`.
- Reference supporting files only when they are needed.

## Common Rationalizations

| Rationalization | Reality |
|-----------------|---------|
| "The model already knows this." | Skills are for consistency, not just knowledge. |
| "The skill should cover everything." | Broad skills create invocation conflicts and context bloat. |
| "Examples are enough." | Examples help, but the workflow must still be explicit. |
| "Quality is obvious." | Agents need concrete verification checks. |
| "We can fix it later." | Stale skills silently degrade agent behavior. |

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
- [ ] Description says when to use the skill and when not to use it.
- [ ] Frontmatter description includes clear triggers and boundaries.
- [ ] The workflow is ordered and actionable.
- [ ] The output format is defined or explicitly delegated to the user/requested target format.
- [ ] The skill has quality checks or completion criteria.
- [ ] Risky actions require explicit approval.
- [ ] Supporting files are referenced only when needed.
- [ ] The skill does not overlap unnecessarily with another skill.
- [ ] The skill can be tested with representative examples.


## Sources

- Agent Skills specification: https://agentskills.io/specification
- Claude skill authoring best practices: https://platform.claude.com/docs/en/agents-and-tools/agent-skills/best-practices
- Addy Osmani, Agent Skills: https://addyosmani.com/blog/agent-skills/
- Addy Osmani, planning-and-task-breakdown skill: https://github.com/addyosmani/agent-skills/blob/main/skills/planning-and-task-breakdown/SKILL.md
- Reddit discussion on practical skill use: https://www.reddit.com/r/GithubCopilot/comments/1qthc9m/what_are_the_best_agent_skills_to_use_right_now/
- Bibek Poudel, The SKILL.md Pattern: https://bibek-poudel.medium.com/the-skill-md-pattern-how-to-write-ai-agent-skills-that-actually-work-72a3169dd7ee
