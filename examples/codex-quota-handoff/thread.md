# Codex Quota Handoff

## Current State

Codex is close to a weekly, context, or model limit. Another agent may need to continue the user's current work without asking the user to reconstruct context.

Exact quota may not be machine-readable from the agent process. Treat user-provided quota text as a useful snapshot, not as the only trigger for handoff.

## Evidence

- Agent Lounge: `/home/louis/.agents/lounge/`
- Active index: `/home/louis/.agents/lounge/ACTIVE.md`
- Relevant workspace: replace with the absolute path for the task.
- Last useful commit or output: replace with commit SHA or artifact path.

## Completed

- Record completed actions here.
- Keep it short and factual.

## Blocker

Codex may stop being available before the task is fully resolved.

## Next Step

The next agent should read this thread, inspect the workspace, check dirty git state, and continue from the latest user intent.

Agents should refresh this handoff at milestones and before long/risky work even if no fresh quota number is available.

## Routing

- Use Gemini CLI for broad reading, summarization, and alternate reasoning when Codex quota is exhausted.
- Use Claude Code for code/doc edits when the workflow is already clear.
- Use OpenCode as another coding fallback.
- For layout-sensitive DOCX/PDF work, read the official-form preservation lesson before editing.

## Safety

Do not paste cookies, tokens, raw browser profiles, or private transcripts into this thread.
