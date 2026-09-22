---
name: hone
description: Revise prose against the writing standard — the one test, the nine principles, the generated-prose defects, heading craft, and rhythm. Reports findings with line numbers and the governing rule, and applies them on request. Use when asked to remove vacuous verbosity, tighten, sharpen, cut, edit, revise, or improve writing; to check headings or section titles; to find AI-sounding prose; or before a draft is circulated. NOT for brand matters — locked statements, vocabulary, positioning, claims, and disclosure belong to the brand-audit skill.
allowed-tools: Read, Glob, Grep, Edit, Bash
argument-hint: "<path> [--surface commercial|technical|internal|slides] [--mode audit|apply] [--depth quick|full]"
---

# Hone

Sharpen prose against the standard. **Sharpening is not shortening** — compression past a point
adds distraction, because the reader has to reconstruct the grammar you removed. Cut function
words; keep the sentence a sentence. Keep the concrete detail; it was never the padding.

The defect underneath everything is **vacuous verbosity**: prose that costs parsing effort and
returns almost nothing. A reader cannot tell a sentence was empty until they have finished it,
and by then they have paid.

## What this skill owns, and what it does not

**Owns — craft.** Whether a sentence is *weak*: the one test, the nine principles, the 22
generated-prose defects, heading and figure craft, rhythm, em-dash density, register.

**Does not own — brand.** Whether a sentence is *wrong*: locked statements, own/retire/never
vocabulary, positioning, claims, and the eight disclosure classes. Those have their own gate. Say
so and move on; never restate a locked statement from memory, because a stale copy is worse than
none.

## Modes

Read the flags from what the user typed. Each has a default; state what you resolved before
reporting anything.

**`--surface commercial|technical|internal|slides`** — selects the mechanics, and getting it
wrong produces findings that are themselves violations. Infer from the path when not given
(`reference/surfaces.md` has the table); **when unclear, treat it as `commercial`.**

**`--mode audit|apply`** — `audit` is the default and only reads. `apply` edits the file, and is
only ever used when the user asked for it in those words.

**`--depth quick|full`** — `full` is the default: every principle, all 22 defects, every heading.
`quick` runs defects 1–5 plus the heading grep, which is where most machine-written prose fails.

## Procedure

### 0. Resolve

State the file, the resolved surface and how it was inferred, the mode, and the depth. One line.

### 1. Read the standard, then the prose

Load `reference/principles.md` first, and the others as the pass needs them:

| File | When |
|---|---|
| [`principles.md`](reference/principles.md) | always — the one test and the nine |
| [`defects.md`](reference/defects.md) | always — the 22, and the grep shortcuts |
| [`headings.md`](reference/headings.md) | any document with headings, slide titles, or bold lead-ins |
| [`surfaces.md`](reference/surfaces.md) | to resolve the surface and its mechanics |
| [`rhythm.md`](reference/rhythm.md) | full depth, or when the prose reads flat |
| [`figures.md`](reference/figures.md) | decks, and any document carrying figures |
| [`terms.md`](reference/terms.md) | when a finding turns on *slidedoc*, *furniture*, *eyebrow*, *surface* |

Then read the target completely before judging any sentence. A paragraph's defect is often that
its claim sits in the third sentence, which you cannot see from the first.

### 2. Run `check.sh`

`./check.sh <path>` runs the grep shortcuts and the heading regex. **Every hit is a candidate, not
a finding** — `rather than` is correct wherever the alternative is live. Clear each by reading it.

### 3. Judge against the principles first

The principles catch constructions the table does not list. Only then walk the defect table.

**Four defects have no search and must be read for: metronomic cadence, decorative triple, bold
scatter, and appositive pile-up.**

Read every heading **in isolation** and apply the transferability test: could it sit above a
different section in a different document unchanged? Then delete every numeral and see what
survives — a heading that collapses was a count.

### 4. Report

One row per finding, most severe first. Cite the rule, never invent one.

```
## Hone — <file> (<surface>, <depth>)

| # | Line | Found | Rule | Fix |
|---|---|---|---|---|
| 1 | 238 | `## Trustworthy is a defined term` | Heading observes instead of naming the move | `## Trustworthy AI is achieved by distrusting AI` |

<N> findings (<a> principles, <b> defects, <c> headings, <d> rhythm) · <e> candidates cleared
```

A clean result is stated plainly, with what was checked, so the clean bill is auditable too.

### 5. Apply, only in `--mode apply`

Apply what is mechanical. **Leave anything that may be deliberate** — a metaphor the piece is
built on, a concession that makes a claim survive a sceptic, a title fixed by something outside
the document. List those separately as *not applied, and why*, for the author to settle.

## Common mistakes

**Treating a candidate as a finding.** The greps are noisy by design. `rather than` is correct
wherever the alternative is live; `land` is correct for a file landing in a watched prefix.

**Auditing the wrong surface.** Flagging a missing terminal period on an essay heading, or
permitting *by construction* in a deck, means the pass never resolved the surface.

**Compressing instead of simplifying.** *"Sound schema, or one that merely runs?"* is worse than
*"How do you tell a sound schema from one that merely runs?"* The test is not how many words came
out — it is whether a person could say the result aloud without sounding like a telegram.

**Rewriting a quotation, a locked statement, or published work.** The published archive is exempt:
a dated artifact records what was said at its date.

**Applying silently in `audit`.** The default reads. Editing without being asked is the one
failure that loses trust in the tool.

## Quick reference

| Want | Run |
|---|---|
| The standing "remove vacuous verbosity" pass | `/hone <path>` |
| Fast check before sending | `/hone <path> --depth quick` |
| Make the edits | `/hone <path> --mode apply` |
| A deck or slide bodies | `/hone <path> --surface slides` |
| An essay or developer docs | `/hone <path> --surface technical` |
