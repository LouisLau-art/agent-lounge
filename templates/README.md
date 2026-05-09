# Agent Lounge

This is the private local Agent Lounge. Use it to coordinate work across Codex, Gemini CLI, Claude Code, OpenCode, and future agents.

## Start Here

1. Read `ACTIVE.md` when a task may need cross-agent continuation.
2. If `ACTIVE.md` links to a relevant thread, read that thread's `Current State`, `Blocker`, and `Next Step`.
3. If the thread links to a lesson, read the lesson before repeating experiments.
4. If a skill or global rule change is needed, write a proposal before changing durable shared instructions.

## Directory Roles

- `ACTIVE.md`: short live index of active cross-agent work.
- `threads/`: one task discussion per file.
- `lessons/`: reusable cross-task knowledge.
- `proposals/`: suggested skill or global-rule changes with evidence and risk.
- `templates/`: copyable Markdown templates.
- `archive/`: completed or stale threads and proposals.

## Write When Blocked Or Switching Agents

When blocked, failing, or close to quota exhaustion, write a short handoff-lite entry in the relevant thread.

Include only:

- current state
- evidence path
- blocker
- next step

Use `session-handoff` for milestone-level transfer documents.

## Safety Rules

Do not write cookies, access tokens, authorization headers, session IDs, raw browser profile contents, API keys, or private account secrets into this directory.

Allowed evidence includes local output directories, command shapes with secrets removed, short error summaries, sanitized logs, and generated artifact paths.

Before committing or syncing lounge material, run:

```bash
rg -n "LEETCODE_SESSION|csrftoken|cf_clearance|sl-session|__appToken__|Cookie:|Authorization:|Bearer |access_token|refresh_token|api[_-]?key" /home/louis/.agents/lounge
```

If the command prints a real secret, remove or sanitize that content before continuing. Mentions inside safety rules are acceptable only when they are not actual credentials.

## Future Extensions

- Add an `agent-lounge` CLI with `post`, `list`, `close`, and `archive`.
- Add automatic archiving for completed or stale threads.
- Add private Git backup or sync for selected sanitized lessons.
- Add project-level lounges such as `repo/.agents/lounge/`.
- Add a skill-change approval workflow.
- Add a `decisions/` index for confirmed cross-agent conclusions.
- Add a `lessons` index for faster discovery.
- Add secret scanning and format validation scripts.
- Add a quota-exhaustion protocol.
- Add a multi-agent discussion mode.
- Add automatic task assignment.
