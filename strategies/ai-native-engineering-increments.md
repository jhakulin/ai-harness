# AI-Native Engineering: Incremental Adoption Model

## Purpose

This document outlines a practical model for moving from conventional software engineering toward AI-native engineering. The goal is to help an engineering organization safely and effectively delegate work to AI agents while preserving human accountability, product quality, and adaptability.

## Strategic Position

AI-assisted engineering can become a normal part of how software organizations build and maintain systems. A practical adoption model should provide supported defaults while preserving enough flexibility to evaluate new tools and practices as the field evolves.

The recommended strategy is:

- Standardize governance, accountability, security, and review expectations.
- Provide default supported tools where standardization helps.
- Allow approved alternatives when they meet the same governance requirements.
- Encourage controlled experimentation by engineers and teams.
- Use spec-driven development to improve the quality of AI-assisted work.
- Shift review from code-only inspection toward intent, evidence, risk, and proof.

Core principle:

> AI agents are part of the engineering workforce: they plan, implement, review, test, and document work, while humans and teams remain accountable for intent, risk, quality, and business impact.

## Increment 0: Establish Direction and Governance

The organization establishes AI-assisted engineering as a strategic capability.

This increment creates the foundation for adoption. It should clarify that AI usage is supported, but must happen within clear boundaries for security, accountability, data handling, and quality.

Key outcomes:

- Organization position on AI-assisted engineering.
- Open but governed tooling strategy.
- Default supported tools and experimental tool lanes.
- Human accountability model for AI-assisted work.
- Data, security, and permission boundaries.
- Initial guidance for agent harnesses and spec-driven development.

Tooling stance:

- An organization may define a primary supported harness, such as Claude Code, Codex, or another approved tool.
- Alternatives such as Pi, OpenCode, custom harnesses, or future tools may be approved if they meet governance requirements.
- Spec-driven development frameworks such as GitHub Spec Kit and OpenSpec should be evaluated as part of the delivery model, not as isolated tools.

Adoption message:

> AI-assisted engineering is a strategic capability. We will scale it through clear ownership, responsible tooling, and measurable delivery quality.

## Increment 1: AI-Assisted Individual Engineering

Engineers adopt AI agents in their daily personal workflow.

The focus is to build fluency. Engineers should learn how to use agents for real engineering tasks, keep up with relevant advances in AI-assisted engineering, and remain responsible for the submitted work.

Typical use cases:

- Codebase exploration.
- Implementation support.
- Debugging.
- Refactoring.
- Test generation.
- Documentation.
- PR preparation.
- Learning unfamiliar systems.

Expected behavior change:

> Engineers stop treating AI as autocomplete and start treating it as a working partner.

Key practices:

- Use approved or experimental tools within organizational policy.
- Keep sensitive data out of unapproved systems.
- Use repository instructions, such as `AGENTS.md`, where appropriate.
- Use lightweight spec-driven practices to clarify intent before asking agents to implement.
- Review and verify agent output before submitting it.
- Develop reusable skills, prompts, or workflow patterns for repeated engineering tasks.
- Contribute useful assets to the organization's shared AI registry.
- Share useful workflows with the team.

Success signal:

Engineers can reliably use AI agents for meaningful work, and useful individual practices start becoming reusable assets for teams.

## Increment 2: AI-Assisted Team Delivery

Teams establish shared practices for how product owners, engineers, QA, architects, and AI agents work together.

This is where AI use moves from individual productivity to team delivery. Product intent, engineering design, quality expectations, and implementation work become more connected through specs, agents, and proof.

Key shifts:

- Product owners use AI to clarify intent, scenarios, and acceptance criteria.
- Engineers use spec-driven development to turn intent into implementable work.
- QA uses AI to improve test strategy, edge-case discovery, and verification.
- Teams agree how agents participate in planning, implementation, review, and proof generation.
- Teams identify low-risk tasks where agents can work AFK under clear review boundaries.
- Specs and proof become shared review artifacts.

Spec-driven development approach:

- Use GitHub Spec Kit for larger, cross-team, higher-risk, or governance-heavy work.
- Use OpenSpec for lighter, brownfield, faster-moving team work.
- Use internal skills and plugins only as organization-specific adapters, not as a competing SDD framework.

Review shift:

From:

> Do I understand every line of code?

Toward:

> Is the intent right, is the spec good, and does the proof show that it works?

Success signal:

Teams collaborate around intent, specs, acceptance criteria, tests, screenshots, API traces, and other evidence instead of relying only on tickets and code diffs. Teams also have initial AFK practices for selected tasks that prepare them for governed asynchronous workflows.

## Increment 3: Governed Agentic Workflows

Agents begin taking larger, scoped tasks from humans inside controlled team workflows.

This is the transition from interactive AI assistance to delegated AI work. Agents may work asynchronously and can be triggered through GitHub Actions or similar automation workflows.

Example workflows:

- Create a spec proposal from a product brief.
- Break an approved spec into implementation tasks.
- Implement a scoped task from the spec.
- Generate or update tests.
- Review a PR against the spec and test plan.
- Produce proof for a frontend or backend change.
- Run a second-model review before human approval.
- Open a PR with implementation notes and verification evidence.

Governance requirements:

- Every shared agent workflow has a named owner.
- Permissions are explicit and reviewed.
- Inputs and source materials are known.
- Outputs are traceable.
- High-risk changes require human approval.
- Agent instructions, specs, and source material are maintained.

Human role:

- Approve intent and specs.
- Make risk decisions.
- Review proof.
- Accept or reject agent output.
- Improve the workflow itself.

Success signal:

Agents can perform scoped work asynchronously, including AFK execution, while humans remain in control of intent, risk, and acceptance.

## Increment 4: AI-Native Engineering Operating Model

AI becomes part of the normal engineering system, not only a productivity aid.

At this stage, the organization manages human-agent collaboration as an operating model. Engineering teams continuously improve how agents are used, governed, reviewed, and integrated into delivery.

Operating model characteristics:

- Smaller, more capable teams.
- Agent-supported delivery pipelines.
- Proof-based review.
- Automated quality checks.
- Reusable organization skills and plugins.
- Common SDD standards.
- Common harness governance.
- Continuous tool evaluation.
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

Broader organizational impact:

Once engineering has established safe AI-native practices, the same operating model can support other functions such as support, operations, finance, compliance, product analytics, and internal tooling.

Success signal:

The organization is no longer merely using AI tools. It can safely delegate work to AI systems while preserving accountability, quality, and adaptability.

## Summary

The adoption path is:

1. Establish direction and governance.
2. Build individual AI engineering fluency.
3. Move to AI-assisted team delivery.
4. Introduce governed asynchronous agent workflows.
5. Mature into an AI-native engineering operating model.

The strategic objective is to build an organization that can continuously improve how humans and AI agents work together to deliver better software.
