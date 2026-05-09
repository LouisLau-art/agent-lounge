# Agent Lounge Design

Agent Lounge uses a two-layer design:

- Public framework repository: templates, documentation, sanitized examples, and installer.
- Private local instance: real active threads, local evidence paths, lessons, proposals, and archives.
- Shared skill: a compact `agent-lounge` workflow skill installed into the local shared skills directory.

The public repository demonstrates a practical multi-agent workflow while keeping operational data private.

## Core Files

- `ACTIVE.md`: short live index.
- `threads/`: current task discussions.
- `lessons/`: reusable knowledge.
- `proposals/`: suggested skill or global-rule changes.
- `archive/`: completed or stale items.
- `skills/agent-lounge/SKILL.md`: triggerable workflow for takeover, handoff-lite, lessons, and proposals.

## Why Markdown First

Markdown works across AI coding agents, requires no daemon, and is easy to inspect. A CLI or service can be added later after the workflow proves useful.

## Privacy Model

Real private notes stay in the installed local lounge. The public repository contains only templates and sanitized examples.
