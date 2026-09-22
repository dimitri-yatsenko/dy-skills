---
name: hone
description: Sharpen prose against the writing standard, in three focuses — verbosity, headings, and tone. Reports findings with line numbers and the governing rule, and applies them on request. Use when asked to remove vacuous verbosity, tighten, sharpen, cut, edit, revise, or improve writing; to fix headings or section titles; to adjust tone, register, or cadence; to find AI-sounding prose; or before a draft is circulated. NOT for brand matters — locked statements, vocabulary, positioning, claims, and disclosure belong to the brand-audit skill.
allowed-tools: Read, Glob, Grep, Edit, Bash
argument-hint: "<path> [--focus verbosity|headings|tone|all] [--surface commercial|technical|internal|slides] [--mode audit|apply]"
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

## The three focuses

`--focus` selects which families run. Default `all`. Accepts a comma list — `--focus headings,tone`.

### `verbosity` — does the sentence return what it cost?

The one test, and principles 1, 2, 3, 5, 7, 8. Defects 2–8, 10–14, 16–19. The prose greps.

Hunting: sentences that announce a point instead of making it · negated alternatives nobody
proposed · trailing participle benefits · emphatic appositives · decorative triples · empty
abstraction · claims about what the reader believes · anything deletable with no loss.

**The paragraph test matters more than the sentence test.** When a paragraph's claim sits in its
third sentence, that sentence is the opening — promote it and let the rest reorder behind it.

Reference: [`principles.md`](reference/principles.md), [`defects.md`](reference/defects.md).

### `headings` — could this line sit above a different section unchanged?

Principle 6 in full, applied to `##` headings, slide titles, eyebrows, and the bold lead-in that
opens a paragraph.

Hunting: headings that enumerate instead of conveying — *delete every numeral and see what
survives* · headings that lead on what something does **not** do · stative verbs a filing cabinet
could take (*sits*, *lives*, *resides*, *underpins*) · riddle headings that point at a noun
instead of saying it · eyebrows opening on a pronoun.

**And the commonest one: a heading that asserts a sub-claim instead of covering the section.** It
passes every other test — it asserts, the verb is active, the subject is named — and still
mis-scopes the reader, because the claim is usually the section's setup rather than what it builds
to. *"Every approach so far equips the model"* heads a section that exists to invert that; *"The
next generation of model grounding"* covers it. Read the heading, then list what the section
contains; if the claim is true of less than half, it is a pull-quote that wandered into the title
slot.

**Read each heading in isolation, out of document order — then read it again against the section
under it.** The first catches riddles and transferability; only the second catches scope, and no
grep finds either.

Reference: [`headings.md`](reference/headings.md).

### `tone` — does the voice sit in the band?

Rhythm, cadence, and register. Defects 1, 6, 7, 9, 13, 15, 20, 21, 22.

Hunting: metronomic cadence — three or more consecutive sentences of near-identical shape ·
significance announcements · sincerity markers and doubled intensifiers · stacked hedges ·
both-sidesing · affirmation padding and deference openers in reviews · em-dash density as a
symptom of unstated relations · the register band, which fails at the timid end as well as the
boastful one.

**Read it aloud.** Metronomic cadence is inaudible on the page and obvious in the mouth.

Reference: [`rhythm.md`](reference/rhythm.md).

## Modes

Read the flags from what the user typed. Each has a default; state what you resolved before
reporting anything.

**`--surface commercial|technical|internal|slides`** — selects the mechanics, and getting it wrong
produces findings that are themselves violations. Infer from the path when not given
([`surfaces.md`](reference/surfaces.md) has the table); **when unclear, treat it as `commercial`.**

**`--mode audit|apply`** — `audit` is the default and only reads. `apply` edits the file, and is
only ever used when the user asked for it in those words.

## Procedure

### 0. Resolve

One line: the file, the focuses, the resolved surface and how it was inferred, the mode.

### 1. Read the standard, then the prose

Load what the focuses need, plus [`surfaces.md`](reference/surfaces.md) always.
[`figures.md`](reference/figures.md) for decks and any document carrying figures;
[`terms.md`](reference/terms.md) when a finding turns on *slidedoc*, *furniture*, *eyebrow*, or
*surface*.

Then read the target **completely** before judging any sentence. A paragraph's defect is often
invisible from its first line.

### 2. Run `check.sh`

`./check.sh <path> [--focus …]` runs the greps for the selected focuses. **Every hit is a
candidate, not a finding** — `rather than` is correct wherever the alternative is live, and `land`
is correct for a file landing in a watched prefix. Clear each by reading it.

### 3. Judge against the principles first

The principles catch constructions the table does not list. Only then walk the defect table.

**Four defects have no search and must be read for: metronomic cadence, decorative triple, bold
scatter, and appositive pile-up.** Riddle headings likewise.

### 4. Report

One row per finding, most severe first, grouped by focus. Cite the rule; never invent one.

```
## Hone — <file> (<surface> · focus: <focuses> · <mode>)

### Verbosity
| # | Line | Found | Rule | Fix |
|---|---|---|---|---|
| 1 | 229 | "Two properties … are worth stating plainly." | Emphatic appositive + enumeration; fails the one test | Delete; open on the first property |

### Headings
| # | Line | Found | Rule | Fix |
|---|---|---|---|---|
| 2 | 238 | `## Trustworthy is a defined term` | Observes instead of naming the move | `## Trustworthy AI is achieved by distrusting AI` |

<N> findings (<a> verbosity, <b> headings, <c> tone) · <d> candidates cleared
```

A clean result is stated plainly, with what was checked, so the clean bill is auditable too.

### 5. Apply, only in `--mode apply`

Apply what is mechanical. **Leave anything that may be deliberate** — a metaphor the piece is
built on, a concession that makes a claim survive a sceptic, a title fixed by something outside
the document. List those separately as *not applied, and why*, for the author to settle.

## Common mistakes

**Treating a candidate as a finding.** The greps are noisy by design.

**Auditing the wrong surface.** Flagging a missing terminal period on an essay heading, or
permitting *by construction* in a deck, means the pass never resolved the surface.

**Compressing instead of simplifying.** *"Sound schema, or one that merely runs?"* is worse than
*"How do you tell a sound schema from one that merely runs?"* The test is not how many words came
out — it is whether a person could say the result aloud without sounding like a telegram.

**Cutting concrete detail as padding.** *"A clinical monitoring pipeline that works, on a broken
foundation"* loses something real when *clinical monitoring* goes. Cut function words, never the
specifics.

**Rewriting a quotation, a locked statement, or published work.** The published archive is exempt:
a dated artifact records what was said at its date.

**Applying silently in `audit`.** The default reads. Editing without being asked is the one
failure that loses trust in the tool.

## Quick reference

| Want | Run |
|---|---|
| The standing "remove vacuous verbosity" pass | `/hone <path> --focus verbosity` |
| Fix the section titles | `/hone <path> --focus headings` |
| It reads flat, or too pleased with itself | `/hone <path> --focus tone` |
| Everything, before circulating a draft | `/hone <path>` |
| Make the edits | `/hone <path> --mode apply` |
| A deck | `/hone <path> --surface slides` |
| An essay or developer docs | `/hone <path> --surface technical` |
