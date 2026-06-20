# Agent Guideline

An agent is a reusable specialist role for software-development work, not a generic persona. It defines what responsibility the role owns, when to delegate work to it, what inputs it needs, what outputs it should return, and what boundaries it must respect.

A skill is a reusable playbook. An agent is an accountable worker that may use one or more skills.

## Core Principles

1. **Define a role, not a procedure.** An agent should describe responsibility, perspective, authority, required inputs, expected outputs, and boundaries.
2. **Keep the role bounded.** One agent should cover one specialist responsibility area.
3. **Make delegation clear.** State when work should be handed to this agent and when it should not.
4. **Require useful inputs.** Define what context the agent needs to produce reliable work.
5. **Define outputs.** Specify what the agent should return when the delegated work is complete.
6. **Define authority and boundaries.** State what the agent may decide, what it must not do, and when it must escalate.
7. **Reference skills when needed.** Agents may use skills as playbooks; they should not duplicate skill workflows.
8. **Ground work in context.** An agent should use the provided request, repository context, relevant files, and referenced skills before making assumptions.
9. **Verify before returning.** An agent should check that its output satisfies the delegated responsibility and respects its boundaries.

## Relationship To Skills

Use an agent when the repository needs a reusable specialist role.

Use a skill when the repository needs a reusable task workflow.

Agents may reference skills they should apply. Skills should not define personas, broad responsibilities, or specialist identities.

Examples:

- `review-agent-skill` is a skill because it defines how to review a skill.
- `skill-reviewer` would be an agent because it defines a specialist role responsible for reviewing skill quality.

## Recommended Agent Structure

```md
# Agent Name

## Purpose

[What responsibility this agent owns and what outcome it should produce.]

## Use When

- [Delegation trigger]
- [Delegation trigger]

## Do Not Use When

- [False positive]
- [False positive]

## Required Inputs

- [Input or context needed]

## Responsibilities

- [Work this agent is accountable for]
- [Work this agent is accountable for]

## Relevant Skills

- [Skill name, if applicable]

## Output Format

[Expected output shape, or say to match the user/requested target format.]

## Boundaries

- State what the agent may decide independently, what it may only recommend, and what requires approval.
- Do not [decision/action outside scope].
- Ask for approval before [risky action].
- Escalate when [condition].

## Verification

Before returning, confirm:

- [ ] The output satisfies the delegated responsibility.
- [ ] Required inputs were used or missing inputs were called out.
- [ ] Relevant repository context, files, and skills were considered when applicable.
- [ ] Boundaries, approval requirements, and escalation rules were followed.
```

## Red Flags

- The agent is just a generic "senior engineer" persona.
- The role overlaps heavily with another agent.
- The agent has no clear delegation trigger.
- The agent duplicates a skill workflow instead of referencing the skill.
- The agent defines step-by-step task procedure better suited to a skill.
- The output format is unclear when consistency matters.
- The agent has authority to approve, merge, deploy, or delete without explicit permission.

## Verification

Before accepting a new or changed agent, confirm:

- [ ] The agent has a specific specialist responsibility.
- [ ] Delegation triggers and false positives are clear.
- [ ] Required inputs are explicit.
- [ ] Responsibilities do not duplicate a skill workflow.
- [ ] Relevant skills are referenced instead of copied.
- [ ] Output format is defined or explicitly delegated to the request.
- [ ] Decision authority, approval requirements, and escalation conditions are clear.
- [ ] The agent does not overlap unnecessarily with another agent.
- [ ] The agent can be tested with representative delegation examples.
- [ ] Each section changes delegation or execution behavior; remove generic persona text, duplicated rules, and stale guidance.