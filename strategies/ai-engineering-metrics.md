# AI Engineering Metrics

## Purpose

This document defines lightweight metrics for understanding AI use in engineering and whether it improves delivery, quality, learning, and governance.

The goal is not to measure AI for its own sake. The goal is to answer practical questions with evidence teams can collect without heavy reporting.

## Measurement Principles

- Prefer metrics teams already have: PR data, work item data, CI results, incident data, and short surveys.
- Measure trends over time, not one-off numbers.
- Measure value and risk together.
- Do not use lines of code as a success metric.
- Do not treat AI usage volume as proof of productivity.
- Keep team-level metrics useful for improvement, not only leadership reporting.

## 1. Are people using AI?

These metrics show adoption and reach.

Lightweight metrics:

- Percentage of engineers using approved AI tools weekly or monthly.
- Percentage of teams using AI in normal engineering work.
- Number of AI-assisted PRs or work items.
- Number of agent sessions or runs, where tooling makes this easy.
- Number of teams with repository AI instructions, such as `AGENTS.md`.
- Number of reusable prompts, skills, workflows, or guardrails shared.

How to collect:

- Monthly pulse survey.
- Tool usage reports.
- Optional PR or work item label, such as `ai-assisted`.
- Shared AI asset registry.

Caution:

Adoption shows that AI is being used. It does not prove that AI is improving outcomes.

## 2. Where is AI used in the workflow?

These metrics show which engineering activities AI supports.

Lightweight metrics:

- AI used for codebase exploration.
- AI used for planning or solution comparison.
- AI used for implementation.
- AI used for debugging.
- AI used for refactoring.
- AI used for test generation.
- AI used for documentation.
- AI used for code review.
- AI used for specs, acceptance criteria, or verification notes.

How to collect:

- Monthly survey with checkboxes.
- Optional PR template checkbox.
- Team retrospective notes.
- Agent workflow logs.

Useful question:

> Is AI being used only for code generation, or is it improving planning, testing, review, and learning as well?

## 3. Is work moving faster?

These metrics show whether AI helps delivery flow.

Lightweight metrics:

- Median task cycle time.
- Median PR cycle time.
- Median time from PR open to merge.
- Median time to first working draft.
- Median time to resolve bugs.
- Time to onboard to an unfamiliar codebase or component.
- Completed work items for comparable work types.

How to collect:

- Issue tracker data.
- Git/PR data.
- CI and deployment timestamps.
- Team self-report for time-to-first-draft or onboarding cases.

Caution:

Faster delivery is only positive if quality, reviewability, and maintainability do not degrade.

## 4. Is quality stable or improving?

These metrics show whether AI-assisted delivery preserves quality.

Lightweight metrics:

- Escaped defects.
- Reopened work items.
- Rollbacks.
- Failed deployments.
- Production incidents.
- CI failure rate for AI-assisted PRs.
- Security findings in AI-assisted changes.
- Flaky tests introduced.
- Review comments related to correctness, design, or maintainability.

How to collect:

- Incident and defect tracking.
- Deployment records.
- CI history.
- PR review data.
- Security scanning results.

Useful question:

> Are we delivering faster because we are more effective, or because quality work has moved into review, debugging, and operations later?

## 5. Is AI output backed by proof?

These metrics show whether teams verify AI-assisted work.

Lightweight metrics:

- Percentage of AI-assisted PRs with tests.
- Percentage of AI-assisted PRs with manual verification notes.
- Percentage of AI-assisted PRs with screenshots, traces, logs, or API examples.
- Percentage of AI-assisted PRs with acceptance criteria linked or included.
- Percentage of high-risk AI-assisted changes with explicit human approval.
- Percentage of agent-generated PRs passing CI before human review.

How to collect:

- PR template fields.
- CI status.
- Review checklist.
- Work item links.

Recommended PR template fields:

```text
AI-assisted: yes/no
Verification proof: tests / manual notes / screenshot / trace / logs / not applicable
Human reviewed: yes/no
```

Useful question:

> Can the reviewer see evidence that the AI-assisted change works?

## 6. Is AI reducing or increasing review burden?

These metrics show whether AI produces useful work or creates cleanup work.

Lightweight metrics:

- Median PR review time.
- Number of review rounds per PR.
- Percentage of AI-assisted PRs requiring major rewrite.
- Percentage of agent-generated PRs accepted after review.
- Percentage of agent-generated PRs closed without merge.
- Average time to make an agent output mergeable.
- Common repeated review comments on AI-assisted work.

How to collect:

- PR metadata.
- Review labels, such as `major-rework` or `agent-output-rejected`.
- Lightweight team retrospective.
- Agent workflow logs.

Useful question:

> Did AI reduce implementation effort while increasing review and correction effort?

## 7. Are engineers becoming more capable with AI?

These metrics show learning and fluency.

Lightweight metrics:

- Self-rated confidence using AI for engineering work.
- Self-rated confidence verifying AI output.
- Number of shared AI workflows contributed.
- Number of teams with documented AI practices.
- Participation in AI enablement sessions.
- Examples of successful AI-assisted workflows shared across teams.

How to collect:

- Monthly or quarterly pulse survey.
- Shared workflow registry.
- Engineering community notes.

Recommended pulse survey:

```text
1. I used AI for engineering work this month: yes/no
2. AI helped me work faster or better: 1-5
3. I know how to verify AI output safely: 1-5
4. The most useful AI workflow I used was: free text
5. The biggest AI-related friction or risk I saw was: free text
```

Useful question:

> Are engineers learning to use AI responsibly, or only using it more often?

## 8. Are reusable AI assets improving the organization?

These metrics show whether useful practices become shared assets.

Lightweight metrics:

- Number of maintained prompts, skills, agents, workflows, evaluations, or guardrails.
- Number of teams using shared AI assets.
- Number of stale assets retired.
- Number of repeated review comments converted into tests, lints, instructions, or guardrails.
- Number of repository instructions added or improved.

How to collect:

- Shared registry.
- Repository history.
- Team retrospectives.
- Workflow owner reports.

Useful question:

> Are we turning repeated AI lessons into durable engineering improvements?

## 9. Are governed agent workflows working?

These metrics apply when agents perform asynchronous or delegated work.

Lightweight metrics:

- Number of governed agent workflows.
- Percentage of workflows with named owner, purpose, permissions, and approval rules.
- Number of agent runs per month.
- Percentage of successful agent runs.
- Percentage of accepted agent outputs.
- Percentage of runs requiring major human intervention.
- Number of incidents caused by agent workflows.
- Cost per accepted output, where tooling makes cost visible.

How to collect:

- Simple workflow log.
- GitHub Actions or automation history.
- PR labels.
- Incident records.

Recommended workflow log:

```text
Workflow name:
Owner:
Runs this month:
Successful runs:
Accepted outputs:
Rejected outputs:
Major human interventions:
Incidents:
Guardrails added:
```

Useful question:

> Can agents complete scoped work asynchronously while humans remain in control of intent, risk, and acceptance?

## 10. Is the value worth the cost?

These metrics show whether AI spend is producing useful outcomes.

Lightweight metrics:

- AI tool cost per active user.
- AI tool cost per team.
- Token or model cost by workflow, where available.
- Cost per accepted agent output.
- High-cost workflows reviewed or optimized.
- Usage of expensive models for low-value tasks.

How to collect:

- Vendor usage reports.
- Internal billing or allocation data.
- Agent workflow logs.

Caution:

Cost optimization should not block early learning. Use cost metrics first for visibility, then for optimization once workflows mature.

## Minimal Metric Set

If the organization wants the lightest possible measurement system, start with these:

1. Percentage of engineers using AI monthly.
2. Self-reported usefulness of AI.
3. Self-reported confidence verifying AI output.
4. Number of AI-assisted PRs or work items.
5. Percentage of AI-assisted PRs with verification proof.
6. Median PR cycle time.
7. Median PR review time.
8. Escaped defects or reopened work items.
9. Number of reusable AI assets or workflows shared.
10. Number of AI-related incidents.

## Phase Fit

### Phase 0: Diagnose and Establish Direction

Use metrics to create a baseline:

- AI usage baseline completed.
- Approved tool and data guidance published.
- Transformation owner named.
- Pilot teams selected.
- Baseline cycle time, review time, quality, and AI usage captured.

### Phase 1: AI-Assisted Engineering Fluency

Focus on individual adoption and capability:

- Active AI usage.
- Self-reported usefulness.
- Confidence verifying AI output.
- Shared prompts, skills, or workflows.
- AI-related policy incidents.

### Phase 2: AI-Assisted Team Delivery

Focus on team workflow and proof:

- Teams with agreed AI-assisted workflow.
- AI-assisted PRs or work items.
- AI-assisted PRs with verification proof.
- Cycle time and review time trends.
- Reopened work or escaped defect trends.

### Phase 3: Governed Agentic Workflows

Focus on delegated agent work:

- Governed workflows with owners.
- Successful asynchronous agent runs.
- Accepted agent outputs.
- Human intervention rate.
- Agent workflow incidents.
- Repeated failures converted into guardrails, tests, or instructions.

### Phase 4: AI-Native Engineering Operating Model

Focus on sustained operating model health:

- Teams using shared AI workflows.
- Maintained reusable AI assets.
- Stable or improved delivery and quality trends.
- Agent workflows with lifecycle ownership.
- Stale workflows retired.
- Continuous improvement from repeated AI failure patterns.

## Summary

AI engineering metrics should answer practical questions:

- Are people using AI?
- Where is AI used?
- Is work moving faster?
- Is quality stable or improving?
- Is output backed by proof?
- Is review burden reduced or increased?
- Are engineers becoming more capable?
- Are reusable assets improving the organization?
- Are governed agent workflows working?
- Is the value worth the cost?

A lightweight metrics system is enough: combine small surveys, PR labels, CI data, defect data, and simple workflow logs. The best metrics help teams improve how they work with AI, not just report that AI is being used.
