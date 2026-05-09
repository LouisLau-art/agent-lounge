# ChatGPT And Gemini Web Export

## Applies When

Read this when exporting web conversations and a command succeeds but the resulting transcript may be stale.

## Lesson

ChatGPT web export is more reliable when an agent reuses a logged-in browser context through CDP and fetches structured conversation data. Gemini export is more dependent on visible DOM and page state, so freshness must be verified explicitly.

## Known Failure Modes

- Target tab is blank, still loading, or not logged in.
- Output is identical across reruns.
- Turn count stays the same even though the user expects newer content.
- Transcript tail does not include the expected latest message.

## Proven Path

Use a logged-in browser context, then verify output freshness through tail content, raw output comparison, expected latest message, and source-specific metadata.

## Do Not

- Do not treat command success as proof of fresh export.
- Do not paste secrets into shared notes.
- Do not update durable skills from one failed run without evidence and a proposal.
