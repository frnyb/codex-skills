# codex-skills

Custom skills for Codex, organized so they can be installed into different Codex environments.

## Repository layout

```text
skills/
  <skill-name>/
    SKILL.md
    ...optional skill files...
```

## Install skills with npx

Install all skills globally for Codex:

```bash
npx skills@latest add frnyb/codex-skills --agent codex --global
```

Install one skill:

```bash
npx skills@latest add frnyb/codex-skills --skill create-backlog --agent codex --global
```

## Install skills manually

Use the installer to copy all repository skills into a Codex environment:

```bash
./scripts/install-skills.sh
```

By default, skills are installed into `"$HOME/.codex/skills"`.

To install into a different Codex home:

```bash
./scripts/install-skills.sh --codex-home /path/to/codex-home
```

To install into a specific skills directory:

```bash
./scripts/install-skills.sh --skills-dir /path/to/skills
```

## Add a new skill

1. Create a new directory under `skills/` (for example, `skills/my-skill`).
2. Add a `SKILL.md` file in that directory.
3. Add any optional supporting files needed by the skill.
