# Agent Lounge

Agent Lounge is a local-first coordination workspace for people who use multiple AI coding agents such as Codex, Gemini CLI, Claude Code, and OpenCode.

It solves a practical problem: when one agent runs out of quota, fails on a browser workflow, or loses context, another agent should be able to continue without the user copying conversation history by hand.

## What It Provides

- A short active-task index for cross-agent handoff.
- One Markdown thread per task or failure investigation.
- Reusable lessons for patterns that should not be rediscovered.
- Proposal files for skill or global-rule changes before they become durable instructions.
- A clear privacy boundary between the public framework and private local operational notes.

## Public vs Private Boundary

This repository is safe to publish. It contains templates, documentation, and sanitized examples.

Your real working lounge should live outside the public repository, for example:

```text
/home/louis/.agents/lounge/
```

Do not publish real active threads, private export logs, browser profile details, cookies, tokens, authorization headers, API keys, or private conversation content.

## Quick Start

```bash
./install.sh
```

The installer creates or updates:

```text
/home/louis/.agents/lounge/
  README.md
  ACTIVE.md
  templates/
  threads/
  lessons/
  proposals/
  archive/
```

Then add a short pointer from your agent instructions to `/home/louis/.agents/lounge/README.md`.

## Workflow

1. Before cross-agent work, read `ACTIVE.md`.
2. If a task has a thread, read `Current State`, `Blocker`, and `Next Step`.
3. If a thread links to a lesson, read the lesson before repeating experiments.
4. If a skill or global rule should change, write a proposal first.
5. When blocked or near quota exhaustion, write a short handoff-lite entry.

## Example Scenario

One agent fails to export a web conversation from Gemini and writes a thread with evidence. Another agent reads that thread, compares it with a known-good ChatGPT CDP/API export path, writes a reusable lesson, and drafts a skill-change proposal.

The user gets continuity across agents without manually copying every message.

## Future Extensions

- `agent-lounge post/list/close/archive` CLI.
- Automatic archiving.
- Project-level lounges.
- Secret scanning and format validation.
- Decision indexes.
- Multi-agent discussion mode.
- Automatic task assignment.

## License

MIT
