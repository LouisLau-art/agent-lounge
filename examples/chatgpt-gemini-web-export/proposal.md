# Add Freshness Verification To Export Skill

## Proposed Change

Add explicit freshness verification to web conversation export instructions.

## Evidence

The sanitized example thread shows a successful command that produced stale Gemini output. The failure was only visible after comparing transcript tail and rerun output identity.

## Risk

If written too broadly, agents may overfit this lesson to every website export. The skill should describe freshness verification as a required check, not as proof that a specific provider is always broken.

## Decision

pending
