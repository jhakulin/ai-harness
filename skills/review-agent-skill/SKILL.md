---
name: review-agent-skill
description: Use this skill when reviewing a new or changed agent skill, skill proposal, or SKILL.md file against this repository's current skill guideline. Use when checking whether a skill is ready, identifying skill-quality issues, or reviewing changes before adding or updating a skill. Do not use for application code review, general documentation review, or agent persona review unless the artifact is specifically an agent skill.
---

# Review Agent Skill

## Overview

Review an agent skill against the current repository skill guideline and report only issues that materially affect skill quality, invocation, reliability, maintainability, or usefulness.

## Workflow

1. Identify the artifact under review.
   - Use the provided proposal, `SKILL.md`, or skill directory.
   - If the artifact is missing, ask for it.

2. Read `guidelines/skill-guideline.md`.
   - Treat it as the source of truth for review criteria.
   - Do not rely on memory of earlier guideline versions.

3. Inspect the skill in context.
   - If reviewing an existing repository skill, list `skills/*/SKILL.md`, compare skill names and frontmatter descriptions for overlap or naming conflicts, and read `AGENTS.md` for repository-level requirements.
   - If reviewing a proposal, evaluate only what is present and call out missing information as an assumption.

4. Produce findings.
   - Report issues that affect invocation, scope, workflow execution, guardrails, output quality, verification, duplication, or maintainability.
   - Do not report cosmetic preferences unless they affect agent behavior.

5. Give an acceptance judgment.
   - Use one of: `Ready`, `Needs revision`, `Split or merge recommended`, or `Not a skill`.
   - Tie the judgment to the guideline and findings.

## Output Format

Write findings in a neutral, factual register. State the issue as an observation, its effects plainly, and the fix as recommendation.
Precise descriptive words that carry information are fine, avoid empty words that only convey feeling; the severity label conveys importance.
Do not soften warnings into open questions, and do not add praise, apology or filler.

```text
# Skill Review: [name]

## Judgment

[Ready | Needs revision | Split or merge recommended | Not a skill]

## Findings

- [Severity] [Title]
  Location: [file path, section, or proposal excerpt]
  Issue: [What is wrong]
  Why it matters: [Practical effect on skill behavior]
  Suggested fix: [Concrete change]

## Open Questions

- [Question or assumption, if any]
```

## Guardrails

- Do not rewrite the skill unless asked.
- Do not duplicate the guideline in the review.
- Do not invent review criteria outside the current guideline and repository guidelines.
- Do not approve a vague workflow just because the writing is polished.
- Prefer a short review with strong findings over an exhaustive line edit.
- Keep findings neutral and factual.
- Use precise descriptive words that carry information. Avoid empty ranking words; the severity label conveys importance.

## Verification

Before finishing:

- Use the current `guidelines/skill-guideline.md` as the review criteria.
- Check the artifact against the guideline's expectations for scope, trigger, workflow, output, guardrails, and verification.
- Ensure each finding is tied to the guideline or repository guidelines.
- Ensure cosmetic preferences are excluded unless they affect skill behavior or maintainability.
