---
name: backlog-feature-sweep
description: Plan and implement a feature by first creating a detailed code-informed backlog, then processing it to completion. Use when the user wants an end-to-end feature sweep, from interview and task breakdown through implementation.
---

# Backlog Feature Sweep

Run the complete feature workflow: create a backlog, then process that backlog until every task is complete.

## Workflow

1. Use the `create-backlog` workflow.
   - Interview the user one question at a time.
   - Inspect the codebase whenever the answer can be discovered locally.
   - Write or update `codex-backlogs/<feature-slug>.md`.
   - Decompose the converged design into detailed atomic tasks with acceptance criteria and tests.
   - Review the backlog against the agreed understanding and revise it before coding.

2. Use the `process-backlog` workflow on that backlog.
   - Verify the backlog is detailed enough to implement.
   - Move one task at a time from `Incomplete` to `In-Progress`.
   - Implement it fully, review the changes, run specified tests, and verify acceptance criteria.
   - Move it to `Completed` only when fully resolved.
   - Refresh the processing instructions before each task cycle.
   - Continue until both `Incomplete` and `In-Progress` are empty.

## Operating Rules

- Keep the backlog document as the source of truth throughout the sweep.
- Maintain high implementation quality even during long runs.
- Do not skip unclear decisions; resolve them through code inspection or one-at-a-time user questions.
- Do not stop after planning if implementation is feasible in the current workspace.
