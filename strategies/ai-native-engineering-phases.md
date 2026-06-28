# AI-Native Engineering: Phased Adoption Plan

## Purpose

This document outlines a practical path for moving from conventional software engineering toward AI-native engineering. The goal is to build an engineering organization that can safely and effectively delegate work to AI agents while preserving human accountability, product quality, and adaptability.

## Strategic Position

Every employee is expected to build capability to work effectively with AI: where it helps, where it creates risk, how to verify output, and how to improve workflows.

The recommended strategy is:

- Build broad AI fluency across employees, roles, and teams.
- Define how AI-assisted work is owned, reviewed, verified, and accepted, including who is accountable for quality, safety, and impact of the outcome.
- Provide default supported tools for broad adoption, while staying open to alternatives that meet the governance bar. Prefer adopting and extending common and popular AI engineering tools over investing heavily in company-specific alternatives from scratch unless there is a clear reason.
- Encourage engineers and teams to experiment with AI, evaluating which workflows, harness usage, guardrails, models, and review practices produce the best results.
- Use lightweight and iterative spec-driven development practices to clarify the intent, constraints, and proof before AI-assisted implementation work.
- Develop AI harness engineering as a core capability for context engineering, reusable prompts, skills, tests, evaluations, workflow improvements, and guardrails.

Core principle:

> AI agents are part of the engineering workforce. Teams collaborate with AI to analyze problems, explore options, plan, implement, review, test, and document the work while retaining ownership of intent, architecture, risk, quality, and business impact.

## Phase 0: Diagnose and Establish Direction

Clarify the current state, target direction, transformation ownership, and governance for tools, data, permissions, review, and quality.

Key outcomes:

- Company and leadership position on AI-assisted engineering as a strategic capability.
- Baseline of current AI adoption, delivery flow, review bottlenecks, quality outcomes, and areas where AI is currently a multiplier or a tax.
- Named ownership for AI-native engineering transformation, including enablement, measurement, and governance.
- Company-wide requirement that employees develop the capability to use AI effectively in their work and in team workflows.
- Open but governed tooling strategy with default supported tools and experimental tool lanes.
- Ownership rules for AI-assisted work, including responsibility for outputs, approvals, shared workflows, and ongoing maintenance.
- Initial guidance for agent harnesses, context engineering, and spec-driven development.
- Initial definition of harness engineering practices.

Management message:

> AI-assisted engineering is a strategic capability. We will scale it through clear ownership, responsible tooling, and measurable delivery quality.

## Phase 1: AI-Assisted Engineering Fluency

Engineers build fluency by using AI in daily work while remaining responsible for submitted output.

Typical use cases for AI collaboration:

- Brainstorming
- Codebase exploration.
- Solution option comparison
- Architecture and interface exploration
- Planning
- Implementation.
- Debugging.
- Refactoring.
- Test and proof generation.
- Documentation.
- Learning unfamiliar systems.

Expected behavior change:

> Engineers treat AI as their working partner.

Key practices:

- Use AI as a collaborator for problem analysis, finding solution options, architecture/design tradeoffs, and planning the work.
- Use approved or experimental tools within company policy.
- Keep sensitive data out of unapproved systems.
- Use repository instructions, such as `AGENTS.md`, where appropriate.
- Give agents the context needed to act correctly, while avoiding irrelevant, stale, or conflicting context.
- Use lightweight spec-driven practices to clarify intent before asking agents to implement.
- Review and verify agent output before submitting it.
- Develop reusable skills, prompts, or workflow patterns for repeated engineering tasks.
- Contribute useful assets to the company's shared AI registry.
- Share useful workflows with the team.

Success signal:
- Engineers achieve measurable productivity improvement from AI collaboration. Example signals include reduced task cycle time, increased completed delivery items, higher verification coverage, faster onboarding to unfamiliar systems, and more reusable AI assets, such as prompts, skills, or guardrail rules, contributed to team adoption.

## Phase 2: AI-Assisted Team Delivery

Teams move from individual AI use to shared delivery practices across product, engineering, QA, architecture, and AI agents.

Key shifts:

- Product owners use AI to clarify intent, scenarios, and acceptance criteria.
- Engineers use spec-driven development to turn intent into implementable work.
- QA uses AI to improve test strategy, edge-case discovery, and verification.
- Teams agree how agents participate in planning, implementation, review, and proof generation.
- Teams identify low-risk tasks where agents can work AFK under clear review boundaries.
- Teams make implicit quality expectations explicit through specs, repository instructions, runbooks, review personas, tests, and guardrails.
- Specs and proof become shared review artifacts.

Spec-driven development approach:

- Use GitHub Spec Kit for larger, cross-team, higher-risk, or governance-heavy work.
- Use OpenSpec for lighter, brownfield, faster-moving team work.
- Use internal skills and plugins only as company-specific adapters, not as a competing SDD framework.

Success signal:
- Team delivery productivity improves measurably: teams complete epics, customer scenarios, or quality improvements faster with AI-assisted collaboration, while using specs, acceptance criteria, API traces, and other proof to maintain quality. Teams also have initial practices to run selected tasks asynchronously with AI, away from keyboard.

## Phase 3: Governed Agentic Workflows

Agents begin taking scoped asynchronous tasks inside controlled team workflows, such as GitHub Actions or similar automation.

Example workflows:

- Create a spec proposal from a product brief.
- Break an approved spec into implementation tasks.
- Implement a scoped task from the spec.
- Generate or update tests.
- Review a PR against the spec and test plan.
- Produce proof for a frontend or backend change.
- Run a second-model review before human approval.
- Open a PR with implementation notes and verification evidence.
- Convert repeated review feedback into durable guardrails, tests, lints, instructions, or reviewer-agent checks.

Governance requirements:

- Every shared agent workflow has a named owner.
- Permissions are explicit and reviewed.
- Inputs and source materials are known.
- Outputs are traceable.
- High-risk changes require human approval.
- Agent instructions, specs, and source material are maintained.
- Shared workflows have lightweight evals, simulations, or examples to catch regressions.
- Sensitive data, credentials, and production access use limited permissions, redaction, isolated tools, or explicit approval.

Human role:

- Approve intent and specs.
- Make risk decisions.
- Review proof.
- Accept or reject agent output.
- Improve the workflow itself.
- Approve agent-suggested changes to instructions, prompts, guardrails, or workflows unless the change is low-risk and pre-approved.

Multi-agent guidance:

Prefer one well-contextualized workflow before introducing multiple agents. Split work across agents only when the tasks are truly separable and the split does not remove context needed for good decisions.

Success signal:

Agents can perform scoped work asynchronously, including AFK execution, while humans remain in control of intent, risk, and acceptance.

## Phase 4: AI-Native Engineering Operating Model

AI becomes part of the engineering operating model. Teams continuously improve how agents are used, governed, reviewed, and integrated into delivery.

Operating model characteristics:

- Smaller, more capable teams.
- Agent-supported delivery pipelines.
- Proof-based review.
- Automated quality checks.
- Reusable company skills and plugins.
- Common SDD standards.
- Common harness governance.
- Harness engineering practices for context, guardrails, proof, and feedback capture.
- Lightweight monitors that flag missing proof, failed checks, sensitive changes, repeated failures, or policy violations.
- Continuous tool and model evaluation.
- Agent lifecycle management.

Agent lifecycle expectations:

- Named owner.
- Clear purpose.
- Approved permissions.
- Known inputs.
- Review and approval rules.
- Monitoring and failure handling.
- Periodic recertification.
- Retirement path.

Continuous improvement expectations:

- Treat the repository, documentation, specs, and examples as part of the agent context.
- Reduce inconsistent patterns that make agent output less reliable.
- Capture repeated agent mistakes, review comments, failed builds, and production issues as signals for missing context, evals, monitors, or guardrails.
- Move recurring feedback into durable automation where possible.
- Treat model choice as a quality, latency, cost, and capacity tradeoff; test important workflows when changing models.

Broader company impact:

Once engineering has established safe AI-native practices, the same operating model can support other functions such as support, operations, finance, compliance, product analytics, and internal tooling.

Success signal:

The company is no longer merely using AI tools. It can safely delegate work to AI systems while preserving accountability, quality, and adaptability.

## Summary

The adoption path is:

1. Establish direction and governance.
2. Build individual AI engineering fluency.
3. Move to AI-assisted team delivery.
4. Introduce governed asynchronous agent workflows.
5. Mature into an AI-native engineering operating model.

The objective is an organization that continuously improves how humans and AI agents work together to deliver better software.
