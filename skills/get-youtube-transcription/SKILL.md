---
name: get-youtube-transcription
description: Fetch the transcript for a specific YouTube video. Use when the user invokes `$get-youtube-transcription <video-id-or-url>`, `/get-youtube-transcription <video-id-or-url>`, or asks to pull, get, fetch, or extract a transcript from one YouTube video ID or URL. Do not use for YouTube search, channel listing, playlist processing, video summarization, or transcription of non-YouTube media.
---

# Get YouTube Transcription

## Overview

Fetch the available YouTube transcript for one video ID or URL and return the transcript text. This skill uses the bundled script and requires Webshare proxy configuration for reliability.

## Workflow

1. Confirm the request contains exactly one YouTube video ID or YouTube URL. If no usable input is present or multiple videos are requested, ask for a single video ID or URL.
2. Ensure Webshare credentials are available through exported environment variables, `~/.config/agents-skills/youtube-transcription.env`, or `skills/get-youtube-transcription/.env`. Use `.env.example` as the placeholder format; do not commit real credentials.
3. Ensure the Python dependency is available. If `python3` cannot import `youtube_transcript_api`, create a temporary virtualenv outside the repository and install `skills/get-youtube-transcription/requirements.txt` there.
4. Run the bundled script from the repository root:
   ```bash
   python3 skills/get-youtube-transcription/scripts/youtube_transcription.py "<video-id-or-url>"
   ```
   If using a temporary virtualenv, use that virtualenv's Python executable for this command.
5. If dependency or Webshare configuration errors occur, report the missing requirement without exposing credentials.
6. If YouTube reports that the transcript is disabled, missing, or the video is unavailable, report that specific failure.
7. Return the transcript text from stdout. Do not summarize or rewrite it unless the user explicitly asks.

## Output Format

For successful requests, output the transcript text only unless the user asks for metadata or a different format.

For failures, use a short actionable error:

```text
Transcript unavailable: <reason>.
```

## Guardrails

- Do not search YouTube or infer a video from a title.
- Do not process playlists, channels, or multiple videos in one invocation.
- Do not summarize, classify, or transform the transcript unless explicitly requested.
- Do not expose Webshare credentials or proxy URLs.
- Do not silently bypass Webshare; the script requires `WEBSHARE_PROXY_USERNAME` and `WEBSHARE_PROXY_PASSWORD` from environment variables, the user-level env file, or the ignored local `.env` file.
- Required Python dependency: `youtube_transcript_api`; use `skills/get-youtube-transcription/requirements.txt` when installing it.
- Ask for approval before downloading dependencies or making network requests to YouTube through Webshare when the execution environment requires approval.

## Verification

Before finishing, confirm:

- [ ] The input was one YouTube video ID or URL.
- [ ] The bundled script was used from this repository.
- [ ] The required Python dependency was available, or a temporary virtualenv outside the repository was used.
- [ ] Webshare configuration was required and credentials were not printed.
- [ ] The response is transcript text only, unless the user requested another format.
- [ ] Any failure reason is specific and actionable.
