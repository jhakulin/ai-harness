# agents-skills

Minimal, tool-neutral source repository for software-development agent descriptions and reusable agent skills.

The repository is intentionally small at first. Add new skills and agents only when there is a concrete use case, a clear trigger, and a repeatable workflow worth preserving.

## Structure

```text
AGENTS.md                  Shared instructions for Codex-style agents
CLAUDE.md                  Shared instructions for Claude
guidelines/                Skill and agent authoring guidelines
skills/<skill>/SKILL.md    Reusable skill definitions
.agents/skills/            Codex discovery links to selected repo skills
scripts/validate-repo.js   Lightweight repository validator
```

## Skills

- `skills/author-agent-skill`: Use this when creating or improving agent skills in this repository.
- `skills/get-youtube-transcription`: Use this when fetching a transcript for one YouTube video ID or URL.

For Codex desktop or CLI, `get-youtube-transcription` is exposed through `.agents/skills`.
After opening this repository in Codex, invoke it explicitly with:

```text
$get-youtube-transcription <youtube-video-id-or-url>
```

For reusable local secrets, create `~/.config/agents-skills/youtube-transcription.env`
with the same keys shown in `skills/get-youtube-transcription/.env.example`.

## Principles

- Keep skills simple, reusable, reliable, and extensible.
- Prefer one canonical source over per-tool duplication.
- Add tool-specific adapters only after the shared format proves insufficient.
- Do not add lifecycle agents, commands, hooks, or integrations without a specific need.

## Validation

```bash
node scripts/validate-repo.js
```
