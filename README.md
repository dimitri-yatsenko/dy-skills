# dy-skills

A personal collection of Claude Code skills.

| Skill | What it does |
|---|---|
| [`hone`](hone/SKILL.md) | Sharpen prose against the writing standard — the nine principles, the generated-prose defects, heading craft, and rhythm |

## Install

```sh
./install.sh
```

Then **restart Claude Code** — skills are discovered at session start, so a new one is invisible
to sessions already running. Type `/` and `hone` should be listed.

### Why a symlink

Claude Code discovers skills in two places, by directory convention only; there is no path
setting to configure.

| Location | Loads when |
|---|---|
| `<repo>/.claude/skills/<name>/SKILL.md` | the session is rooted in that repo |
| `~/.claude/skills/<name>/SKILL.md` | **every session, any directory** |

These belong in the second, but they should stay version-controlled here rather than living
loose in `~/.claude`. `install.sh` symlinks each skill directory into `~/.claude/skills/`, so
editing a skill in this clone takes effect immediately and `git pull` updates what every session
sees. Re-run it after adding a skill or moving this clone.

## On the sources

`hone` carries the craft layer: whether a sentence is **weak**. It draws on the writing standard
in `~/focus/CLAUDE.md` and on `dj-brand`'s editorial rules, and it reconciles a defect table that
those sources record with three different row counts.

It deliberately does not carry the brand layer — whether a sentence is **wrong**. Locked
statements, vocabulary, positioning, claims, and disclosure have their own gate, and a stale copy
of a locked statement is worse than no copy. This repo is a private working collection; nothing
upstream depends on it.
