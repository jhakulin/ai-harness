# AI Engineering Metrics

## Purpose

This document defines lightweight metrics for understanding AI use in engineering and whether it improves delivery, quality, learning, and governance.

The goal is not to measure AI for its own sake. The goal is to answer practical questions with evidence teams can collect without heavy reporting.

## Measurement Principles

- Start small. A monthly pulse survey, one optional PR label, and existing delivery or defect data are enough for the first version.
- Prefer metrics teams already have: PR data, work item data, CI results, incident data, and short surveys.
- Measure trends over time, not one-off numbers.
- Pair important value signals with simple risk checks. For example, if cycle time improves, check that defects, rollbacks, review time, or AI-related incidents did not clearly worsen.
- Do not require perfect attribution. It is enough to know whether AI use increased while delivery, quality, review burden, and incidents moved in a good or bad direction.
- Do not use lines of code as a success metric.
- Do not treat AI usage volume as proof of productivity.
- Keep team-level metrics useful for improvement, not only leadership reporting.

## 1. Are people using AI?

These metrics show adoption and reach.

Lightweight metrics:

- Percentage of engineers using approved AI tools monthly.
- Percentage of teams using AI in normal engineering work.
- Number of AI-assisted PRs or work items, if teams label them.
- Number of agent sessions or runs, only where tooling reports this automatically.
- Number of reusable prompts, skills, workflows, or guardrails shared.

How to collect:

- Monthly pulse survey.
- Tool usage reports, if available.
- Optional PR or work item label, such as `ai-assisted`.
- Lightweight shared list of reusable AI assets.

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

- Median PR cycle time.
- Median time from PR open to merge.
- Median time to resolve bugs.
- Completed work items for comparable work types.
- Team-reported examples where AI shortened exploration, implementation, testing, or debugging.

How to collect:

- Git/PR data.
- Issue tracker data, if already used consistently.
- Team self-report for concrete examples where timing data is not available.

Caution:

Faster delivery is only positive if quality, reviewability, and maintainability do not degrade.

## 4. Is quality stable or improving?

These metrics show whether AI-assisted delivery preserves quality.

Lightweight metrics:

- Escaped defects.
- Reopened work items.
- Rollbacks.
- Production incidents.
- AI-related security or data incidents.
- Team-reported examples of AI output causing quality or maintainability problems.

How to collect:

- Incident and defect tracking.
- Deployment records, if available.
- Security or data incident records.
- Team retrospective notes.

Useful question:

> Are we delivering faster because we are more effective, or because quality work has moved into review, debugging, and operations later?

## 5. Is AI output backed by proof?

These metrics show whether teams verify AI-assisted work.

Lightweight metrics:

- Percentage of AI-assisted PRs with any verification proof.
- Common proof types used: tests, manual notes, screenshots, traces, logs, API examples, or CI results.
- High-risk AI-assisted changes with explicit human approval.

How to collect:

- One PR template field for verification proof.
- CI status.
- Work item links, if already used.

Recommended PR template fields:

```text
AI-assisted: yes/no
Verification proof: tests / manual notes / screenshot / trace / logs / CI / not applicable
```

Useful question:

> Can the reviewer see evidence that the AI-assisted change works?

## 6. Is AI reducing or increasing review burden?

These metrics show whether AI produces useful work or creates cleanup work.

Lightweight metrics:

- Median PR review time.
- Team-reported cases where AI output required major rewrite.
- Percentage of agent-generated PRs accepted after review, if agent workflows exist.
- Common repeated review comments on AI-assisted work.

How to collect:

- PR metadata.
- Lightweight team retrospective.
- Optional review labels, such as `major-rework` or `agent-output-rejected`.
- Agent workflow logs, if agent workflows exist.

Useful question:

> Did AI reduce implementation effort while increasing review and correction effort?

## 7. Are engineers becoming more capable with AI?

These metrics show learning and fluency.

Lightweight metrics:

- Self-rated confidence using AI for engineering work.
- Self-rated confidence verifying AI output.
- Number of shared AI workflows contributed.
- Examples of successful AI-assisted workflows shared across teams.

How to collect:

- Monthly or quarterly pulse survey.
- Lightweight shared workflow list.
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
- Number of repeated review comments converted into tests, lints, instructions, or guardrails.
- Number of repository instructions added or improved.

How to collect:

- Lightweight shared asset list.
- Repository history.
- Team retrospectives.

Useful question:

> Are we turning repeated AI lessons into durable engineering improvements?

## 9. Are governed agent workflows working?

These metrics apply when agents perform asynchronous or delegated work.

Lightweight metrics:

- Number of governed agent workflows.
- Workflows with named owner, purpose, permissions, and approval rules.
- Number of agent runs per month, if logged automatically.
- Successful agent runs.
- Accepted agent outputs.
- Agent runs requiring major human intervention.
- Incidents caused by agent workflows.

How to collect:

- Simple workflow log.
- GitHub Actions or automation history.
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

- AI tool cost per active user or team.
- Token or model cost by workflow, only where available.
- High-cost workflows reviewed or optimized.

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
4. Percentage of AI-assisted PRs with verification proof, if teams label AI-assisted PRs.
5. Median PR cycle time and review time.
6. Escaped defects, reopened work items, or AI-related incidents.
7. Number of reusable AI assets or workflows shared.

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
