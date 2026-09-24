# Generated-prose defects

**One table.** The same list lives in three places upstream with three different row counts — 22,
21, and 20 — and they disagree about which defects exist. This is the reconciled union: all 22,
with the tells from both sources merged and the governing principle attached, plus #23 and #24, which came
out of our own review practice rather than from upstream.

Defects 1–5 account for most of what reads as machine-written; 4, 7, and 8 for most of the
verbosity. **If only one pass is possible, check those.**

**Judge against the principles first** — they catch constructions no table lists. Then report per
defect where one applies, with the count, never a verdict on the piece.

**Five have no search and must be read for: 1, 5, 15, 16, and 23.**

---

## The table

| # | Defect | The tell | The fix | Principle |
|---|---|---|---|---|
| 1 | **Metronomic cadence** | Three or more consecutive sentences of near-identical length or shape; repeated subject-verb-benefit | Vary length deliberately: short carries emphasis, long carries reasoning. Read it aloud | #1, #7 |
| 2 | **Trailing participle benefit** | `, ensuring` · `, allowing` · `, enabling` · `, making it` · `, providing` | The most reliable tell we have. It asserts a benefit without claiming it. Promote it to its own sentence, or cut it | #2 |
| 3 | **Contrast scaffold** | "not just X, but Y" · "isn't about X, it's about Y" · "not a bug, it's a feature" | State the claim. The scaffold performs insight instead of delivering it | #3 |
| 4 | **Negated alternative** | An affirmative claim followed by `rather than` · `instead of` · `as opposed to` · `not merely`, naming an alternative nobody proposed: "make Act 2 credible rather than speculative" · "a decision rather than a guess" | Cut everything after the claim: "make Act 2 credible." Keep the contrast **only when the alternative is live** — the incumbent practice, or something a reader actually suggested. "By reference rather than by copy" earns it, because copying is what the alternatives do. Often two positives cover the ground: *"two acts shown, the third asserted"*, not *"the third asserted rather than shown"* | #3 |
| 5 | **Decorative triple** | Three adjectives or nouns where two carry the weight; escalating triples | Keep the two that do work. A triple is for enumeration, not rhythm | #1 |
| 6 | **Significance announcement** | "importantly" · "crucially" · "notably" · "the key insight is" · "make no mistake" | Delete. If the point matters, its content shows it; the label is a substitute for the point | #2, #5 |
| 7 | **Sincerity marker** | Honesty vouched for where nobody questioned it: "the honest divide" · "the honest answer" · "genuinely missing" · "a real concern" · "truly" · "to be honest" · "frankly" · "candidly" · doubled intensifiers — "precisely why", "exactly what" | Delete the modifier. *"The honest divide is"* → *"The divide is."* Vouching for one statement implies the rest need vouching. Keep it only where a false version was actually stated and you are naming the contrast | #2, #5 |
| 8 | **Emphatic appositive** | An appositive frame that announces a point instead of making it: "The risk is real and worth naming:" · "The distinction, stated plainly:" · "worth stating" · "worth flagging" · "one thing to note here is" · "it bears mentioning". The frame replaces the substance it was meant to introduce. The word **worth** is the marker; search it | Use the label. *"The risk is real and worth naming: the pilot slips."* becomes *"Risk: the pilot slips."* Eleven words of preamble carried no information | #2, #5 |
| 9 | **Structural heading** | A heading that describes the artifact instead of asserting its point: "Two acts, then a slide for the loop we are not building" · "What we are not building" · "Overview" · "Key considerations" · abstract-noun predicates like "Act 1 is the grounded substrate". The subject is the deck rather than the science | Apply the **disagreement test**: a reader who knows the field must be able to agree or disagree with the heading. If they cannot, it carries no information. "Two acts, then a slide…" becomes "Two acts shown, the third asserted." Also flag a heading built on a relative clause — *"What this carries that #55's diff does not"* → *"New since #55"* — and one that answers an objection nobody raised. | #6 |
| 10 | **Throat-clearing opener** | "In today's …" · "As organizations navigate …" · "In an era of …" · "Let's explore" | Start at the claim. The first sentence should be falsifiable | #1, #2 |
| 11 | **Restating close** | "In short" · "Ultimately" · "At the end of the day"; a final sentence that repeats the topic sentence | End on the last new thing, or on the consequence. A summary of four sentences is not a paragraph | #1 |
| 12 | **Empty abstraction** | "solutions" · "leverage" · "seamless" · "robust" · "powerful" · "cutting-edge" · "journey" · "landscape" | Name the specific thing. If the sentence survives with the word deleted, delete it | #8 |
| 13 | **Stacked hedges** | "may potentially help to" · "can often significantly" · two qualifiers on one verb | One hedge or none, and make it precise: who, how much, under what condition | #1 |
| 14 | **Both-sidesing** | "While X has merits, Y also matters", with no position taken | Take the position or cut the sentence. Balance is not a claim | #2 |
| 15 | **Bold scatter** | A bolded phrase in every bullet; bullets of identical length and shape | Bold only what a skimmer must see. If every line is emphasized, none is | #1 |
| 16 | **Appositive pile-up** | Two or more parenthetical asides inside one sentence, whatever mark sets them off | One aside per sentence. This is the defect punctuation usually gets blamed for | #1, #7 |
| 17 | **Vague verb** | `land` above all — "once #43 lands", "the rename lands", "where your concern lands" — and its relatives `drive` · `surface` · `enable` · `unlock` · `touch` · `address` · `handle`. The defect is not that they are jargon; it is that they name no action | Name the action: *merges*, *publishes*, *ships*, *is ratified*, *takes effect*, *arrives*, *appears*. Keep the general verb only where the action genuinely varies across the cases you mean | #4 |
| 18 | **Insider jargon** | "nit" · "load-bearing" · "table stakes" · "footgun" · "heavy lift" · "bikeshedding" · "north star" · "move the needle" · "boil the ocean" · "low-hanging fruit" · "double-click on" · "flywheel" · "secret sauce" | Say the plain thing; the starter list is under [On the reader](#on-the-reader). Terms of art in their own field are fine | #8 |
| 19 | **Vocabulary tells** | "delve" · "underscore" · "testament to" · "tapestry" · "realm" · "unlock" · "navigate the complexities" | Plain verb, plain noun. See also the retired-vocabulary list | #8 |
| 20 | **Affirmation padding** | A review or reply that spends its opening on what is right: "the thinking is strong" · "several of these are good" · a "what is already right" section · closing credit | Cut it. A review exists to say what to change; praise makes the reader carry it to the end before learning that. See [On collaborative writing](#on-collaborative-writing) | #9 |
| 21 | **Deference opener** | "Great question" · "You're absolutely right" · "I'd be happy to" in replies and PR comments | Answer. Agreement is shown by what you do with the point | #5 |
| 22 | **Stage direction** | A label carrying a trailing clause that describes the manner of its own delivery: "Out of scope, said first" · "Not ours, said early and out loud" · "The boundary, named out loud" · "Fit, stated plainly" · "Known gap, handled honestly". The subject of the clause is the act of speaking, not the thing spoken about | Delete everything after the comma: *"Out of scope."* **The test:** if no fact about the subject is lost, it was stage direction. An *identifying* appositive stays — *"Peak 2, the amendment"* names what peak 2 is, *"The blocking question — closed"* states a status, and both add a fact; without that distinction the rule over-fires on every appositive. Claiming to have said something *out loud* or *honestly* also implies the neighbouring statements were softened, which is **Sincerity marker** arriving through a side door. A talk track may direct delivery; a heading, a slide label or a claim may not | #2 |
| 23 | **Literary narration** | An abstract noun given a human or physical verb, in the cadence of a magazine essay rather than of speech: "A quieter question arrives a few months in" · "A congress forms when a field moves faster than its practitioners can compare notes" · "doubt creeps in" · "a tension runs through the program". Every one is grammatical, none is false, and the author would say none of them out loud | **The speech test: read the sentence aloud as though saying it to one person. If you would never say it, rewrite it in the words you would use.** Name who is doing the thing — *"a few months in, people start asking whether any of it compounds"* — or drop the frame and ask the question. Most often the frame deletes cleanly and the sentence under it was the point. Adapting a talk is where this enters hardest: the spoken original is already in the author's voice, so mine the script before composing a literary opening over it | #1, #8 |
| 24 | **Riddle sentence** | A count or a quantifier with a placeholder noun, the nouns themselves withheld for a sentence or two: "Two things have been getting better at once, and they tend to get credited to the same cause" · "Three things follow" · "Two acts appear on the diagram that were always happening anyway" · "There are two problems with this". Often paired with a small paradox offered ahead of its explanation. The reader can register that an answer is coming and cannot state what was claimed — the shape of a children's riddle, and the prose form of the riddle heading in [`headings.md`](headings.md) | **The restatement test: after one sentence, can the reader say what it claimed? If they can only say that something is about to be revealed, name the things in the sentence that counts them.** *"Two things have been getting better at once"* → *"AI agents have improved in two ways: model capabilities and their grounding in the subject matter."* **The count is not the defect — the colon is the fix.** A number is a promise, and the sentence that makes it keeps it; keep the count where it sets up an enumeration the same sentence delivers, and drop it where naming the things makes it redundant. Withholding for suspense belongs to fiction — technical prose is read once, forward, and every deferred noun is charged to the reader | #2, #1 |

---

## Grep shortcuts

The operational half. Run these first, then read for the four that no search can find.

**Prose:** `worth` · `rather than` · `land` · `load-bearing` · `honest` · `deliberately` ·
`, ensuring` · `delve` · `leverage` · `robust` · `seamless` · `in order to` · `it is important`

**Riddle sentences** — a count in front of a placeholder noun:

```sh
grep -nEi '(two|three|four|both|several|a few) (things|factors|reasons|forces|ideas|changes|questions|acts|problems)' FILE
```

A hit is guilty until the nouns turn out to be named in the same sentence. The riddle that uses no
number — a subject deferred to the following sentence — has no tell and must be read for.

**Headings** — run separately, because no prose grep catches a generic heading:

```sh
grep -nE '^#+ .*(Why|What|How|Where|Overview|Background|Context|Notes|Key |Approach|Summary|The claim|The point)' FILE
```

Every hit is guilty until the transferability test clears it.

**Riddle headings have no keyword tell.** They are built from paragraph context, so they cannot be
searched. Read each heading in isolation and ask whether a reader could name the concrete subject
from the heading alone. *"Two axes, not one"* fails; *"Where the draft lives, and whether the
agent holds a credential"* passes.
