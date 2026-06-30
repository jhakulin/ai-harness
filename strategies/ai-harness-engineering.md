# AI Harness Engineering

## Purpose

AI harness engineering is the practice of turning one-off AI prompting into durable, repeatable, inspectable workflows.

The model is replaceable intelligence. The harness is the reusable system around it: context, tools, skills, commands, checks, permissions, review gates, and output artifacts.

## Core Idea

An AI agent is:

```text
model + harness
```

The model provides reasoning and generation. The harness gives the model the body and operating loop needed to do useful work.

A good harness helps the agent:

1. understand the task
2. load the right context
3. choose and use tools
4. produce artifacts
5. verify results
6. decide whether to continue, revise, or stop
7. hand work back to humans or another workflow

## Harness Components

A practical harness may include:

- context files, such as `AGENTS.md`, `CLAUDE.md`, specs, docs, and examples
- skills for repeatable task-specific judgment
- commands for repeatable workflows
- tools for reading, editing, searching, testing, deploying, or integrating systems
- scripts for deterministic work
- reviewer prompts or reviewer agents
- permission gates and approval rules
- tests, checks, evals, or simulations
- output artifacts such as plans, reports, PRs, summaries, and handoff notes

The value is not any single component. The value is the repeatable workflow they create together.

## Context Routing

Context should be routed, not dumped.

Avoid loading every rule, document, example, and prior conversation into one prompt. Instead, provide an entrypoint that tells the agent where to find the context it needs.

Good harnesses:

- keep the main context small and coherent
- point agents to relevant files instead of pasting everything
- load detailed references only when needed
- avoid stale, irrelevant, or conflicting context
- keep task-specific context close to the workflow that uses it

Fresh context is useful only when the handoff is good. A separate agent or session should receive the goal, constraints, relevant files, acceptance criteria, and expected output.

## Commands and Skills

Use commands for repeatable workflows.

A command is useful when the user repeatedly asks for the same multi-step process, such as:

- refresh research
- create a spec
- review a PR
- generate release notes
- run a content pipeline
- prepare a migration plan

Use skills for repeatable task-specific judgment.

A skill is useful when the agent needs a reusable procedure, standard, or rubric, such as:

- writing in a specific voice
- reviewing for security risk
- checking output against a spec
- avoiding AI-slop patterns
- producing a standard report format

If a workflow is repeated often, preserve it as a command, skill, script, or extension instead of relying on memory or ad hoc prompting.

## Quality Gates

Longer workflows need explicit quality gates.

Common pattern:

```text
producer creates output
reviewer checks output against criteria
orchestrator decides revise or accept
```

Reviewer roles should have clear criteria. Do not ask only for a generic review.

Useful review criteria include:

- correctness
- source support
- test coverage
- security and data handling
- maintainability
- spec alignment
- style or voice fit
- operational risk

The reviewer can be a human, a skill, a second model, a script, a test suite, or another agent. High-risk acceptance remains a human responsibility.

## Autonomy Levels

Autonomy should depend on risk.

A simple scale:

```text
Level 0: AI suggests only.
Level 1: AI drafts, human applies.
Level 2: AI changes files, human reviews.
Level 3: AI opens PRs or artifacts, human approves.
Level 4: AI merges, deploys, or updates systems after approved checks.
```

Increase autonomy only when:

- the workflow is repeatable
- the risk is understood
- checks are reliable
- rollback is possible
- ownership is clear
- failures are visible

Do not use full autonomy just because the model can do it.

## Durable Outputs

Good harnesses produce inspectable artifacts, not only chat.

Examples:

- `PLAN.md`
- `TODO.md`
- research brief
- implementation spec
- review report
- PR description
- test output
- generated code or content
- deployment checklist
- handoff prompt

Durable outputs make work easier to review, repeat, debug, resume, and improve.

## Model Portability

Models change. Harnesses should survive model changes where possible.

Good harnesses avoid depending too heavily on one model's quirks. They make tools, context, checks, and output expectations explicit.

Model choice is a tradeoff across:

- quality
- cost
- latency
- privacy
- capacity
- availability

A useful pattern is:

```text
Use stronger frontier models to design and debug the harness.
Use cheaper or open models for stable repeatable execution when quality is sufficient.
```

When changing models, test important workflows and expect prompts or context routing to need adjustment.

## Continuous Improvement

Harness failures should become harness improvements.

When an agent repeatedly fails, do not only fix the output. Fix the workflow.

Examples:

- missing tests -> update implementation checklist or verifier
- hallucinated source -> add citation requirement or source checker
- wrong files edited -> improve repo instructions or tool permissions
- poor tone -> update voice skill
- unsafe command -> add permission gate
- repeated review comment -> add test, lint, prompt rule, or reviewer check

Improvement loop:

```text
observe failure
identify missing context, tool, check, or rule
update the harness
rerun the workflow
preserve the improvement
```

## Practical Design Rules

- Keep the harness small enough to inspect.
- Prefer explicit files and artifacts over hidden state.
- Keep context coherent and task-specific.
- Add new agents only when roles are truly separable.
- Use reviewer gates for important outputs.
- Match autonomy to risk.
- Make failures visible.
- Convert repeated mistakes into durable improvements.
- Keep model choice flexible where practical.

## Summary

AI harness engineering is how teams make AI-assisted work repeatable and reliable.

The goal is not to build complex agent systems for their own sake. The goal is to create workflows where humans define intent, risk, and acceptance while AI agents perform more of the repeatable work inside clear context, tools, checks, and review boundaries.
