# claude-skills

A personal collection of Claude Code skills.

| Skill | What it does |
|---|---|
| [`hone`](hone/SKILL.md) | Sharpen prose against the writing standard — the nine principles, the generated-prose defects, heading craft, and rhythm |

## Install

Skills in a repo's `.claude/skills/` load only when the session is rooted in that repo. These are
meant to be reachable from anywhere, so they install by symlink:

```sh
mkdir -p ~/.claude/skills
ln -s "$PWD/hone" ~/.claude/skills/hone
```

Then `/hone <path>` resolves in any session.

## On the sources

`hone` carries the craft layer: whether a sentence is **weak**. It draws on the writing standard
in `~/focus/CLAUDE.md` and on `dj-brand`'s editorial rules, and it reconciles a defect table that
those sources record with three different row counts.

It deliberately does not carry the brand layer — whether a sentence is **wrong**. Locked
statements, vocabulary, positioning, claims, and disclosure have their own gate, and a stale copy
of a locked statement is worse than no copy. This repo is a private working collection; nothing
upstream depends on it.
