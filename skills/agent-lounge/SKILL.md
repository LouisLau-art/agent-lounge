---
name: agent-lounge
description: Use when a task may move between Codex, Gemini CLI, Claude Code, OpenCode, or another agent; when an agent is blocked, quota-limited, taking over work, or needs to record handoff-lite notes, failure evidence, lessons, or skill-change proposals.
---

# Agent Lounge

## Overview

Agent Lounge is the shared local workspace for cross-agent continuity. Use it to make the next agent productive without asking the user to copy chat history.

Local workspace: `/home/louis/.agents/lounge/`

## When To Use

Use this skill when:

- The user says another agent did poorly and wants Codex/Gemini/Claude/OpenCode to take over.
- Work may continue in a different agent because of quota, context, or model limits.
- An agent is blocked and another agent needs failure evidence.
- A lesson should be preserved across tasks.
- A skill or global rule change should be proposed before it becomes durable instruction.

Do not use it for one-off notes that will never be useful to another agent.

## Takeover Workflow

1. Read `/home/louis/.agents/lounge/README.md`.
2. Read `/home/louis/.agents/lounge/ACTIVE.md`.
3. If there is a relevant thread, read its `Current State`, `Blocker`, and `Next Step`.
4. Inspect the real workspace before changing files.
5. Update the thread with only the useful handoff-lite facts.

## Write Rules

For active work, write or update one file under `threads/`.

Each update must include:

- current state
- evidence path
- blocker
- next step

Keep `ACTIVE.md` short. It should only contain status, owner, thread path, next action, and updated time.

Use absolute paths for local evidence when the next agent needs to inspect files.

## Status Values

- `in_progress`: an agent is actively working.
- `blocked`: another agent or the user must resolve a blocker.
- `needs_review`: output exists and needs human or agent review.
- `done`: task is complete and can be archived.

## Lessons And Proposals

Write reusable patterns in `lessons/`, not in long threads.

Write skill or global-rule changes in `proposals/` first unless the user explicitly asks for a direct edit.

Do not wait for the user to ask for "experience accumulation." If you discover that another agent's output had to be replaced, a workflow failed in a repeatable way, or your corrected approach exposes a reusable rule, capture the lesson during the same task.

When a thread exposes a repeatable quality failure, write the lesson before closing the task and link it from the thread.

For official forms and layout-sensitive documents:

- Preserve the provided DOCX/PDF template first; fill existing cells, fields, and image slots before rebuilding anything.
- Treat page size, page count, table borders, merged cells, signatures, stamps, and required photos as part of the spec.
- Verify the final PDF with metadata plus pixels: run `pdfinfo`, render pages with `pdftoppm` or an equivalent tool, and inspect the rendered image.
- If rebuilding is unavoidable, record why in the thread and compare the rebuilt output against a render of the original template.

## Safety

Never write cookies, tokens, authorization headers, API keys, raw browser profile contents, or full private transcripts into Agent Lounge.

Allowed evidence: sanitized command shape, short error summary, output directory, rendered artifact path, and local file path.

Before publishing or syncing lounge content, scan it:

```bash
rg -n "LEETCODE_SESSION|csrftoken|cf_clearance|sl-session|__appToken__|Cookie:|Authorization:|Bearer |access_token|refresh_token|api[_-]?key|sk-[A-Za-z0-9]{20,}" /home/louis/.agents/lounge
```

Generic mentions inside safety rules are acceptable; real credential values are not.
