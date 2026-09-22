# The one test, and the nine principles

## The one test

**Does this sentence add a claim the reader could not have supplied themselves?**

The defect underneath everything is **vacuous verbosity** — prose that costs parsing effort and returns almost nothing. A reader cannot tell a sentence was empty until they have finished it, and by then they have paid. One who works out that a paragraph said little stops extending credit to the next.

---

## Nine principles

1. **Cut what survives cutting.** If deleting a sentence loses nothing, it was taking up room.
2. **Say it, do not announce it.** *"The risk is real and worth naming: X"* is *"Risk: X."* A sentence that says a point is coming costs parsing effort and delivers nothing — the point arrives either way. The defect shows up in three places: (a) **titles** announcing a question instead of stating it; (b) **inline bold labels** naming a paragraph instead of being one; (c) **forward references** telling the reader that a section is coming when they will find it anyway. Delete the announcing clause; if nothing is lost, it was announcement.
3. **Do not negate what nobody proposed.** *"Credible rather than speculative"* is *"credible."*
4. **Name the action.** A verb that fits every case describes none. Use precise verbs: for PRs, `opened` / `reviewed` / `approved` / `merged` / `closed`. For documents, `drafted` / `published` / `distributed`. For decisions, `made` / `settled` / `deferred` / `reversed`. Never `land`, `drive`, `surface`, `enable`, `unlock`, `touch`, `address`, `handle` — they hide which stage was reached. Literal arrival (a file landing in a watched prefix) is the one exception.
5. **Do not vouch.** Qualifying one statement as honest withdraws credit from every statement around it.
6. **Title the finding.** A heading names what is in the section underneath and nothing else. The test: could this heading sit above a different section in a different document unchanged? If yes, it carries no information. Good headings either assert something ("Distinction between the two modes of thinking") or name the specific subject ("Eight source systems, and what each holds"). A riddle heading — an abstract pointer like "Two axes, not one" — costs the reader parsing effort to decode what naming the subject would have given them free. Fix by naming the noun the fragment points at: "Two axes, not one" → "Where the draft lives, and whether the agent holds a credential."

   **A heading carries the gist, the purpose, or the question. It never enumerates the
   contents.** The test: delete every numeral and see what survives. See
   [`headings.md`](headings.md) for the long form — the enumerate/convey table, *state the
   function not its absence*, the stative-verb tell, riddle headings, the four failures, and
   why simplification is not compression.

7. **State the relation.** Use *because*, *which*, *namely*, or a colon. Unstated relations are where em-dash density comes from.
8. **Plain words, except terms of art. Cut metaphors.** *Orthogonal* and *idempotent* stay. These go: *load-bearing*, *surface area*, *heavy lift*, *north star*, *plumbing*, *runway*. When you reach for one, name the dependency instead: *this decision fixes the migration order*, *the catalog generator reads this field*, *removing it breaks every cross-reference*.
9. **A review states findings and next steps.** Praise costs attention and gives nothing to act on.
