---
name: process-backlog
description: Implement a backlog document task by task, moving items through Incomplete, In-Progress, and Completed while verifying acceptance criteria. Use when the user asks to process, execute, implement, or sweep through an existing backlog.
---

# Process Backlog

Implement a backlog document end to end without stopping until `Incomplete` and `In-Progress` are empty, unless blocked by missing information, failing external dependencies, or explicit user direction.

## Readiness Check

Before coding, read the backlog and inspect the relevant code. Decide whether the next tasks are concrete enough to implement.

- If the backlog is vague, use the `create-backlog` workflow to interview, inspect the codebase, and update the referenced backlog in place before implementation.
- Do not start coding from ambiguous tasks.
- Preserve the backlog's structure and update only task status, details, and newly discovered implementation facts.

## Processing Loop

Repeat this sequence until no tasks remain in `Incomplete` or `In-Progress`:

1. Refresh these skill instructions before each task cycle to stay aligned during long runs.
2. Move the next task from `Incomplete` to `In-Progress` in the backlog document.
3. Implement that task completely and carefully.
   - Produce high quality code consistent with the repository.
   - Follow existing architecture, naming, tests, and style.
   - Do not mark partial work complete.
   - Do not become impatient or skip details because the backlog is long.
4. Review the code changes against the task description.
5. Run the tests or verification commands specified for the task.
6. Verify every task acceptance checklist item.
7. If completing this task completes a phase, verify the phase acceptance criteria and any phase-level tests.
8. Fix any issues found during review or verification.
9. Move the task from `In-Progress` to `Completed` only when fully resolved.
10. Update the completed task with useful implementation notes, changed files, and verification results.

## Quality Rules

- Keep working until the backlog is fully processed.
- Prefer small, focused commits of behavior in the code, but complete each backlog task end to end.
- If a task reveals that the backlog is wrong, update the backlog and continue from the corrected plan.
- If a blocker cannot be solved locally, leave the blocked task in `In-Progress`, document the blocker precisely, and ask the user for the missing decision or dependency.
- Never move a task to `Completed` without implementation, review, acceptance verification, and applicable tests.
