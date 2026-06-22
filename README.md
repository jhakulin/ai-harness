# ai-harness

Minimal, tool-neutral source repository for AI harness guidelines, reusable agent skills, agent definitions, and harness strategy notes for software development.

The repository is intentionally small at first. Add new guidelines, skills, agents, and strategy notes only when there is a concrete use case, a clear trigger, and reusable value worth preserving.

## Structure

```text
AGENTS.md                  Shared instructions for Codex-style agents
CLAUDE.md                  Shared instructions for Claude
guidelines/                AI harness, skill, and agent authoring guidelines
strategies/                AI harness adoption and operating-model strategy notes
skills/<skill>/SKILL.md    Reusable skill definitions
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

## Strategies

- `strategies/ai-native-engineering-increments.md`: Incremental adoption plan for AI-native engineering.

## Principles

- Keep skills simple, reusable, reliable, and extensible.
- Prefer one canonical source over per-tool duplication.
- Add tool-specific adapters only after the shared format proves insufficient.
- Do not add lifecycle agents, commands, hooks, or integrations without a specific need.

## Validation

```bash
node scripts/validate-repo.js
```
