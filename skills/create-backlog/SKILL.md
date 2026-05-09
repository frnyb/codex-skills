---
name: create-backlog
description: Create or update a detailed implementation backlog for a feature through a code-informed interview, then decompose the agreed design into atomic tasks. Use when the user wants to plan a feature, write a backlog, create implementation tasks, or prepare work before coding.
---

# Create Backlog

Create or update a backlog document for a feature by interviewing the user, inspecting the codebase, and continuously refining the document until the design and task breakdown are concrete enough to implement.

## Workflow

1. Locate or create the backlog document.
   - Prefer `codex-backlogs/<feature-slug>.md` in the workspace.
   - If updating an existing backlog, preserve useful content and revise it in place.
   - Use sections named exactly `Incomplete`, `In-Progress`, and `Completed`.

2. Interview the user until the feature is understood.
   - Ask one question at a time.
   - For each question, include your recommended answer.
   - Walk down design decisions in dependency order.
   - If a question can be answered from the codebase, inspect the code instead of asking.
   - Keep the backlog updated during the interview as decisions converge.

3. Ground the backlog in the code.
   - Reference concrete files, modules, commands, APIs, data shapes, UI paths, and tests where relevant.
   - Make each task specific enough for an implementation agent to start without re-discovering the whole design.
   - Record assumptions, constraints, open decisions, and code findings directly in task descriptions.

4. Decompose the work.
   - For small features, use a flat task list numbered `T0` through `TN`.
   - For large features, use phases numbered `P0` through `PM`, with tasks numbered `P0.T0`, `P0.T1`, etc.
   - Give each task a clear title, detailed description, acceptance checklist, and tests or verification commands to run.
   - If test work is substantial, create separate test tasks.
   - Put all new tasks under `Incomplete`; leave `In-Progress` and `Completed` empty unless updating an active backlog.

5. Review and reconcile.
   - Compare the backlog against the agreed understanding.
   - Update, split, merge, reorder, or rewrite tasks if new information changes the design.
   - Finish only when the backlog is specific, coherent, ordered, and implementable.

## Backlog Format

Use this structure unless the repository already has a stronger local convention:

```md
# <Feature Name> Backlog

## Context

<Feature goal, agreed design, constraints, code findings, and assumptions.>

## Incomplete

### T0: <Task Title>

Description:
<Concrete implementation detail grounded in the codebase.>

Acceptance:
- [ ] <Observable acceptance criterion>

Tests:
- `<command or manual verification>`

## In-Progress

## Completed
```

For phased work, put phase headings under `Incomplete`, include phase acceptance criteria, and number tasks as `P0.T0`.
