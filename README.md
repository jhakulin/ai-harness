# ai-harness

Minimal source repository for AI harness guidelines, reusable agent skills, Pi extensions, agent definitions, and harness strategy notes for software development.

The repository is intentionally small. Add new guidelines, skills, extensions, agents, and strategy notes only when there is a concrete use case, a clear trigger, and reusable value worth preserving.

## Structure

```text
AGENTS.md                  Shared instructions for Codex-style agents
CLAUDE.md                  Shared instructions for Claude
guidelines/                AI harness, skill, and agent authoring guidelines
strategies/                AI harness adoption and operating-model strategy notes
skills/<skill>/SKILL.md    Reusable skill definitions
pi-extensions/<name>/      Pi coding-agent extensions and specs
.agents/skills/            Codex discovery links to selected repo skills
scripts/validate-repo.js   Lightweight repository validator
```

## Skills

- `skills/author-agent-skill`: Use this when creating or improving agent skills in this repository.
- `skills/get-youtube-transcription`: Use this when fetching a transcript for one YouTube video ID or URL.

For Codex desktop or CLI, `get-youtube-transcription` is exposed through `.agents/skills`.
It can also be registered globally by symlinking the skill into `~/.agents/skills`.
After Codex reloads skills, invoke it explicitly with:

```text
$get-youtube-transcription <youtube-video-id-or-url>
```

For reusable local secrets, create `~/.config/ai-harness/youtube-transcription.env`
with the same keys shown in `skills/get-youtube-transcription/.env.example`.

The skill wrapper reuses a persistent virtualenv at
`~/.cache/ai-harness/venvs/youtube-transcription`, so dependency installation should only be needed once per machine.

## Pi Extensions

- `pi-extensions/web-search`: Exa-backed Pi extension for web search and URL reading.

## Strategies

- `strategies/ai-assisted-engineering-process.md`: Practical process for using AI agents in software development.
- `strategies/ai-engineering-metrics.md`: Lightweight metrics for measuring AI use, value, and risk.
- `strategies/ai-native-engineering-phases.md`: Phased adoption plan for AI-native engineering.
- `strategies/ai-native-engineering-workshop.md`: Workshop format for becoming an AI-native engineering organization.

## Principles

- Keep skills and extensions simple, reusable, reliable, and extensible.
- Prefer one canonical source over unnecessary duplication.
- Add tool-specific adapters only when there is a specific need.
- Do not add lifecycle agents, commands, hooks, or integrations without a specific need.

## Validation

```bash
node scripts/validate-repo.js
```
