# ChatGPT And Gemini Export Example

## Current State

ChatGPT export works through a logged-in CDP browser and structured conversation data. Gemini export completed but appears stale.

## Evidence

- ChatGPT output: sanitized local output directory.
- Gemini output: sanitized local output directory.
- Gemini symptom: raw output was identical across reruns, turn count stayed the same, and transcript tail did not include the expected latest message.

## Blocker

The Gemini page state did not expose the latest chat content to the DOM exporter.

## Attempts

- 2026-05-09 gemini: Ran the export command and produced output, but freshness checks failed.
- 2026-05-09 codex: Compared the failure with the proven ChatGPT CDP/API path and proposed explicit freshness verification.

## Next Step

Update the export procedure so agents distinguish command success from verified fresh export.

## Links

- lesson.md
- proposal.md
