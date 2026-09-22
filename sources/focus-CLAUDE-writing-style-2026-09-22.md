# Provenance: ~/focus/CLAUDE.md § Writing Style

Verbatim snapshot taken 2026-09-22, before the craft layer moved into `hone/reference/`.
That file is untracked and versioned nowhere else, so this is the only record of what it said.
Not a second standard — an archive. Do not edit; if a rule changes, change it in the skill.

---

## Writing Style

**Canonical source:** [`dj-brand` `voice/editorial-rules.md`](https://github.com/datajoint-company/dj-brand/blob/main/voice/editorial-rules.md) and [`voice/brand-language.md`](https://github.com/datajoint-company/dj-brand/blob/main/voice/brand-language.md). Justin Tripodi owns the locked layer; Dimitri vets external terminology. **When this section and dj-brand disagree, dj-brand wins.** What follows is the always-on subset for this workspace — PRs, issues, reviews, Slack, essays, specs, decks.

### Base layer

We do not reinvent grammar. Most specific wins: **DataJoint voice and terminology** → **Microsoft Writing Style Guide** (marketing, corporate, web, product) → **Google Developer Documentation Style Guide** (dev docs, APIs, tutorials) → **Chicago** (everything else). Oxford comma throughout.

### Surface scoping

| Surface | Mechanics |
|---|---|
| Commercial — site, decks, sales and customer materials, ads, email, short-form | Sentence case, terminal periods on headings, bold-only emphasis, no italics, *hold up by design* |
| Long-form technical — dj-thought essays, developer docs, architecture writing | Chicago. No terminal period on headings; italics available for terms and titles; *by construction* permitted |
| Internal repo prose | Not policed for mechanics |

**Bound everywhere:** voice, vocabulary, locked statements, claims rules, generated-prose defects, writing rhythm. When in doubt, treat the surface as commercial.

### Terms of the craft

These rules use production terms that must be read uniformly. Definitions here; dj-brand definitions override these.

| Term | Definition |
|---|---|
| **Slidedoc** | A deck built to be *read*, not projected. Each slide carries its full argument in prose and stands alone without a presenter. Our strategy and roadmap decks are slidedocs — they circulate as PDFs and get commented on. Prose density is the point; the sparse-slide rules for spoken presentation do not apply. Still point-in-time, and still not a citable specification. |
| **Presentation deck** | A deck built to be *spoken to*, where the slide carries the minimum and the presenter carries the argument. A slidedoc projected is unreadable; a presentation deck circulated says nothing — decide which one you are making before writing a slide. |
| **Furniture** | Fixed, repeating page elements that are not the content: logo, footer, page number, rule, running header, eyebrow, legend chrome, background. Placed once per template, then ignored; content is written per page. Furniture never enters the clear-space margin, and a figure inside a page that already carries the logo as furniture is not stamped again. |
| **Eyebrow** | The short line above a headline that says where the reader is — a section or category label, a few words, no sentence. Fixed copy: no asides, no subordination, never an em dash. |
| **Locked statement** | A sentence ratified in dj-brand `voice/statements.md` and quoted verbatim — mission, vision, taglines, positioning lines. Never edited, never trimmed to fit, never given an em dash. |
| **Surface** | Where a piece of writing is published, which selects its mechanics (see table above). Not a synonym for *aspect* or *area* — *surface area* is a metaphor we cut. |

### The one test

**Does this sentence add a claim the reader could not have supplied themselves?**

The defect underneath everything is **vacuous verbosity** — prose that costs parsing effort and returns almost nothing. A reader cannot tell a sentence was empty until they have finished it, and by then they have paid. One who works out that a paragraph said little stops extending credit to the next.

### Nine principles

1. **Cut what survives cutting.** If deleting a sentence loses nothing, it was taking up room.
2. **Say it, do not announce it.** *"The risk is real and worth naming: X"* is *"Risk: X."* A sentence that says a point is coming costs parsing effort and delivers nothing — the point arrives either way. The defect shows up in three places: (a) **titles** announcing a question instead of stating it; (b) **inline bold labels** naming a paragraph instead of being one; (c) **forward references** telling the reader that a section is coming when they will find it anyway. Delete the announcing clause; if nothing is lost, it was announcement.
3. **Do not negate what nobody proposed.** *"Credible rather than speculative"* is *"credible."*
4. **Name the action.** A verb that fits every case describes none. Use precise verbs: for PRs, `opened` / `reviewed` / `approved` / `merged` / `closed`. For documents, `drafted` / `published` / `distributed`. For decisions, `made` / `settled` / `deferred` / `reversed`. Never `land`, `drive`, `surface`, `enable`, `unlock`, `touch`, `address`, `handle` — they hide which stage was reached. Literal arrival (a file landing in a watched prefix) is the one exception.
5. **Do not vouch.** Qualifying one statement as honest withdraws credit from every statement around it.
6. **Title the finding.** A heading names what is in the section underneath and nothing else. The test: could this heading sit above a different section in a different document unchanged? If yes, it carries no information. Good headings either assert something ("Distinction between the two modes of thinking") or name the specific subject ("Eight source systems, and what each holds"). A riddle heading — an abstract pointer like "Two axes, not one" — costs the reader parsing effort to decode what naming the subject would have given them free. Fix by naming the noun the fragment points at: "Two axes, not one" → "Where the draft lives, and whether the agent holds a credential."

   **A heading carries the gist, the purpose, or the question. It never enumerates the contents.**

   This is the rule under every other rule about headings. A heading is the one line a reader uses to decide whether to read the rest, so it has to answer *why am I here* — the gist of the argument, the job the section does, or the question it takes on. An inventory answers *how many things are in here*, which no reader has ever wanted to know.

   | Enumerates | Conveys |
   |---|---|
   | "One step of a workflow, three ways" | **What each notation can say** |
   | "One LC-MS pipeline · twelve entities either way" | **What the ERD cannot say** |
   | "Twelve entities, two notations" | **The relational schema as a workflow specification** |
   | "Two of the five acts are not deterministic" | **The cycle gains acts for managing context** |
   | "Three of the seven are ours by construction" | **What the platform enforces, and what company process covers** |
   | "Master, part, and computation in one declaration" | **The code that produces a table is a member of the model** |

   **The test: delete every numeral and see what survives.** If the heading collapses, it was a count. *"One step of a workflow, three ways"* collapses to *"a step of a workflow, ways"*. There is **no exception for a numeral that feels substantive** — *"Three of the seven are ours by construction"* reads like a claim, because the proportion is the honest move, and it still frames the section as arithmetic. Counting is seductive because it is true and easy to verify, and a heading's job is neither. Put the number in the body, where it is evidence.

   Two near misses fail the same way. A heading must not name the **rhetorical mode** — *"Shown, not asserted"*, *"The claim"*, *"A worked example"* teach the reader the author's technique instead of the subject. And it must not **point at a noun instead of saying it** — *"The question"*, *"the last row"*, *"both directions"*: say which.

   ### State the function, not its absence

   **A heading or an opening that leads on what something does *not* do makes the reader carry a
   negative while they wait for the positive, and the positive is what they came for.** *"It replaces
   nothing on this diagram"* opens a paragraph on reassurance and leaves the function to the third
   sentence. *"The foundation holds the entities, their dependencies, and the code that produced each
   result"* says what it is **for** — and the reassurance then comes free, because a reader who knows
   what a thing does can see for themselves what it leaves alone.

   This is not Principle #3. There the negation is dead: nobody proposed the alternative. Here the
   negation is **live and worth making** — the room really does wonder whether this replaces the data
   lake. The rule is about order, not about whether to say it at all. **Make the claim, then concede.**
   When describing what a thing does, what it does is always the more critical half.

   | Leads on the absence | Leads on the function |
   |---|---|
   | "It replaces nothing on this diagram" | "The foundation holds the entities, their dependencies, and the code that produced each result" |
   | "The line is not a claim about how good the models are" | "A control point gates consequential actions" |
   | "What the record cannot satisfy" | "What the platform enforces, and what company process covers" |

   ### A heading's verb is an action, not a position

   **A stative verb tells the reader where a thing is and leaves them to guess what it is for.**
   *"The foundation sits under everything that asks a question"* is accurate and inert: *sits* is
   furniture arrangement, and the slide is about what the foundation **does**. *"The foundation grounds
   every question in the same record"* names the action, and the position follows from it.

   The tell is a verb you could use of a filing cabinet: *sits*, *lives*, *exists*, *is located*,
   *is found*, *resides*, *underpins*, *encompasses*, *is responsible for*, *serves as*. Replace it with
   what the subject does to something else — **grounds**, **codifies**, **carries**, **enforces**,
   **produces**, **gates**, **records**, **connects**, **holds** — per Principle #4, which bans the
   vague *active* verbs for the same reason: a verb that fits every case describes none, and a verb
   that describes no case at all is worse.

   The exception is a heading whose subject genuinely is a location or a state — *"Where the draft
   lives, and whether the agent holds a credential"* — because there the position **is** the finding.

   ### An eyebrow names its subject

   **An eyebrow never opens on a pronoun.** It is furniture read in isolation, often before the
   headline and sometimes without it, so it has no antecedent to lean on. *"How it relates to what you
   already run"* asks the reader to guess what *it* is; *"How the foundation relates to what you already
   run"* costs four characters and asks nothing. *"What it changes"* is *"What the foundation pays
   back"*. The exception is a pronoun inside a fixed phrase where the actor is already named —
   *"What if the agent gets it wrong?"* — because *it* there is idiom, not reference.

   ### An opening carries the paragraph's thesis or its question

   **A bold lead-in is a heading for one paragraph and answers to every rule above.** It carries the
   gist, the purpose, or the question — never the aside, the caveat, or the throat-clearing. The test
   is the same one: read the lead-in alone and ask what the paragraph will argue. If the answer is
   *"something about the diagram"*, the lead-in is furniture.

   **When a paragraph's claim sits in its third sentence, that sentence is the opening.** Promote it and
   let the rest reorder behind it. A paragraph that has to be read to the end before it declares itself
   has spent the reader's attention before earning it, which is the defect under **The one test**.

   ### Four failures, each with its fix

   | Failure | Before | After |
   |---|---|---|
   | **Inverted — the subject arrives last** | "Underneath all five is curated context, and it is what people and agents alike work from" | "People and agents work from a curated context" |
   | **Observes instead of naming the move** | "Trustworthy is a defined term, and the record is what satisfies it" | "Adopt industry's definition of trustworthiness" |
   | **Function words carrying no information** | "Grounding the tools in the workflow buys longer stretches of autonomy" | "Grounding in workflow buys longer stretches of AI autonomy" |
   | **Points at a noun instead of saying it** | "And the question underneath never changed" | "One question: defensible evidence" |

   ### Simplification is not compression

   Simplification makes the idea clearer by removing distraction. Compression removes words, and past a point it *adds* distraction, because the reader has to reconstruct the grammar you took out.

   | Compressed | Restored | Why the longer one is better |
   |---|---|---|
   | "Sound schema, or one that merely runs?" | "How do you tell a sound schema from one that merely runs?" | The short one is an elliptical fragment; the long one is how a person asks it aloud |
   | "Twelve entities, two notations" | "The relational schema as a workflow specification" | The short one counts; the long one asserts |

   **Cut function words; keep the sentence a sentence.** *"What language do we use to codify a research workflow?"* → *"What language codifies a research workflow?"* is right: *do we use to* is scaffolding and what remains is a complete question. The test is not how many words came out — it is whether a person could say the result aloud without sounding like a telegram.

   **Concrete detail is not padding.** *"A clinical monitoring pipeline that works, on a broken foundation"* loses something real when *clinical monitoring* goes: the domain the room lives in. Cut function words, never the specifics.

   ### Applied to slide titles, section headings, and bold lead-ins alike

   - **Lead with the actor or the subject.** Never "Underneath…", "It is…", "The last one…", "And the…". A placeholder first word means the heading is inverted.
   - **Cut the second clause.** Most weak headings are "X, and Y." The vagueness is nearly always in the *and Y*.
   - **Length is a symptom, not a target.** Most good headings land between four and eight words, but that is what clarity produces, not something to edit toward. A heading needing eleven words to make its claim keeps them.
   - **Speech is the check.** Read it aloud as though saying it to the room: *"The models are on the outside. The process you're designing is on the inside."* A listener cannot re-read, so spoken headings are short, active and concrete; written ones drift because the eye can go back. Where a recording of the same argument exists, mine it — the spoken formulation is usually the better heading already.

7. **State the relation.** Use *because*, *which*, *namely*, or a colon. Unstated relations are where em-dash density comes from.
8. **Plain words, except terms of art. Cut metaphors.** *Orthogonal* and *idempotent* stay. These go: *load-bearing*, *surface area*, *heavy lift*, *north star*, *plumbing*, *runway*. When you reach for one, name the dependency instead: *this decision fixes the migration order*, *the catalog generator reads this field*, *removing it breaks every cross-reference*.
9. **A review states findings and next steps.** Praise costs attention and gives nothing to act on.

### Defects worth searching for

Defects 1–5 account for most of what reads as machine-written; 4, 7, and 8 for most of the verbosity. If only one pass is possible, check those.

| Defect | The tell | Principle |
|---|---|---|
| Metronomic cadence | 3+ consecutive sentences of near-identical length or shape | #1, #7 |
| Trailing participle benefit | `, ensuring` · `, allowing` · `, enabling` · `, making it` · `, providing` — most reliable tell we have | #2 |
| Contrast scaffold | "not just X, but Y" · "isn't about X, it's about Y" | #3 |
| Negated alternative | `rather than` · `instead of` · `not merely`, naming an alternative nobody proposed. Keep only when the alternative is live | #3 |
| Decorative triple | Three adjectives where two carry the weight | #1 |
| Significance announcement | "importantly" · "crucially" · "notably" · "the key insight is" | #2, #5 |
| Sincerity marker | "the honest answer" · "genuinely" · "truly" · "frankly"; doubled intensifiers — "precisely why", "exactly what" | #2, #5 |
| Emphatic appositive | "worth noting" · "worth flagging" · "stated plainly:" — search `worth` | #2, #5 |
| Structural heading | "Overview" · "Key considerations" · headings built on relative clauses | #6 |
| Throat-clearing opener | "In today's…" · "As organizations navigate…" · "Let's explore" | #1, #2 |
| Restating close | "In short" · "Ultimately" · "At the end of the day" | #1 |
| Empty abstraction | "solutions" · "leverage" · "seamless" · "robust" · "powerful" · "journey" · "landscape" | #8 |
| Stacked hedges | Two qualifiers on one verb | #1 |
| Both-sidesing | "While X has merits, Y also matters", with no position taken | #2 |
| Bold scatter | A bolded phrase in every bullet | #1 |
| Appositive pile-up | Two or more parenthetical asides in one sentence | #1, #7 |
| Insider jargon | "nit" → *minor issue* · "load-bearing" → *name the dependency* · "table stakes" → *the baseline* · "footgun" · "bikeshedding" · "move the needle" · "boil the ocean" · "low-hanging fruit" · "double-click on" · "flywheel" · "secret sauce" | #8 |
| Vocabulary tells | "delve" · "underscore" · "testament to" · "tapestry" · "realm" · "navigate the complexities" | #8 |
| Affirmation padding | A review opening on what is right before naming a finding | #9 |
| Deference opener | "Great question" · "You're absolutely right" · "I'd be happy to" | #5 |

**Grep shortcuts** (most productive, run first):
- Prose: `worth`, `rather than`, `land`, `load-bearing`, `honest`, `deliberately`, `, ensuring`, `delve`, `leverage`, `robust`, `seamless`, `in order to`, `it is important`
- Headings: `grep -nE '^#+ .*(Why|What|How|Where|Overview|Background|Context|Notes|Key |Approach|Summary|The claim|The point)' FILE` — run this separately, as no prose grep catches a generic heading. Every hit is guilty until the transferability test clears it.
- Riddle headings have no keyword tell (built from paragraph context). Detect them by reading each heading in isolation and asking whether a reader could name the concrete subject from the heading alone, not by searching. "Two axes, not one" fails; "Where the draft lives, and whether the agent holds a credential" passes.

### Slides

The nine principles hold on a slide. These are the additional ones, and every rule here was learned by getting it wrong first.

**One slide, one argument.** Two tables in two columns are two slides. Splitting is not only a legibility fix: a claim that depends on a table — *no comparator delivers all seven* — has to **follow** that table, not sit beside it. A slide that needs a half-width column is usually a slide that needs to be two.

**Three jobs, no overlap: the prose argues, the figure shows, the caption attributes.** A caption that explains the figure competes with the paragraph arguing from it, and the reader pays twice. Source, date, rights, and the one fact the image is evidence *for* — then stop. If the caption restates the heading or the paragraph beside it, delete the caption, not the paragraph.

**Crop to the detail that carries the argument.** A whole artifact reads as texture — *old book*, *old music* — and proves nothing. Show the passage that does the work, enlarged until it is legible from the back of the room, and no larger. Lift contrast on a pale scan; say so in the caption. Keep the source file for provenance and record the crop regions so the detail can be rebuilt.

**Make the figure as small as it can be and still be read.** The argument lives in the prose. An illustration that fills half a slide is usually carrying less than the space implies.

**Different kinds of thing must look different.** The visual grammar encodes the semantics or it fights them: a deterministic spine solid and neutral, the parts that turn on interpretation dashed and coloured, a human control point in its own colour. Two things drawn alike are claimed to be alike — if they are not, the figure is asserting something false before anyone reads a word.

**Every connector carries one direction and two visible endpoints.** Double-headed arrows say reads and writes are the same relation. Stubs too short to show direction say nothing at all. If a reader has to ask *which way does this go*, the figure has failed at the only thing an arrow does.

**Arrows do not cross.** If they cannot be routed without crossing, the figure holds one relation too many. Remove a relation and state it in the caption — do not reroute it into a tangle. A centre connected to a ring cannot reach the ring from outside without cutting an edge; that is a signal to draw fewer arrows, not longer ones.

**A figure that needs a legend is not finished.** Labels and geometry carry it, or the figure is not doing its job. The exception is a genuine key — tier colours, a scale — that no amount of labelling replaces.

**Transitions carry meaning or they distract.** Two views of the same content cross-fade in place, so the eye sees what changed; a squeeze or a wipe makes the reader watch the motion instead. Build steps reveal an argument in the order it is made. If a transition does not encode a relation between what left and what arrived, cut it.

**Say a thing on one step only.** A framing sentence repeated under every build step is read once and ignored four times. Put it on the opening view and let it clear.

**Register follows the audience, not the author.** Pharma is not a university: *the postdoc who inherits it* is *whoever inherits it*, *every laboratory* is *every research group*. Plain words beat clever ones — *tribal knowledge*, not *mimicry*.

### Em dashes

**Permitted on every surface, per AP: a genuine interruption, spaced (` — `). Never banned; diagnosed.** Overuse is a symptom of unresolved logic — the fix names the relation (Principle #7) rather than swapping the mark. **The one absolute:** never in a locked statement, tagline, headline, or eyebrow.

### Claims

- **Say what we are, not what we are not.**
- **"Distinct," not "different."** Name the alternatives a customer actually weighs — a named platform, an in-house script, hiring the expertise, doing nothing — and what each leaves undone. Mark unresearched contrast `OPEN`. Canonical wording: `platform-roadmap/capability-briefs/TEMPLATE.md`, section "What's distinct".
- **Position against the approach, never the vendor.** Vendor-named comparisons are for battlecards and live sales conversations only.
- **Never claim a number we have not measured.** Unmeasured advantage is stated as reasoning and flagged open.
- **Never claim what the reader or public believes.** Do not assert facts about readers' minds to manufacture significance. Instead, state the finding and let the reader decide whether it surprises them. *"The architecture is being locked in before its owners arrive"* says everything *"why the timing is stranger than it looks"* was reaching for, and claims nothing about the reader. (See Principle #2 on significance announcements and Principle #5 on vouchsafing.)

### Vocabulary

**Own:** foundation · codify · upstream · first-class scientific data · deterministic · provenance · lineage · experiment-first.

**Retire:** ~~layer~~ (for the whole product) → *foundation* · ~~encode~~ → *codify* · ~~boardroom~~ → *leadership* · ~~scientific operating system~~ · ~~reconstruct~~ as a pain metaphor · ~~nit~~ → *minor issue* · ~~table stakes~~ → *the baseline*.

**Never:** AI-powered · AI-first · generative · co-pilot · magic · lakehouse or data cloud (describing us) · all-in-one · unified platform · holistic · synergy · empower · transform · revolutionary · best-in-class · leverage.

*Substrate* splits by job: mechanical use stays; describing our own role, it becomes *foundation*.

**DataJoint is the brand; DataJoint Inc. is the entity** — no comma, the LICENSE's form (ruled 2026-08-18, dj-brand PR #23). *DataJoint* in prose, headlines, and marketing copy; **DataJoint Inc.** wherever the entity speaks — copyright lines, confidentiality notices, contracts, letterhead. **Applies to all new materials**; published work is not retrofitted.

### Scope of the rules

**These rules govern new and current material. The published archive is exempt** (ruled 2026-08-28). Retired vocabulary in a shipped post is not a finding, and no retired-language sweep runs over the archive — a dated artifact records what was said at its date. Rewrite an archived piece only when its *content* is wrong, never for vocabulary drift. Evergreen surfaces — the site, marketplace listings, standing decks — are current material and stay in scope; re-verify proof claims on them whenever the surface is touched.

### Register and register tests

- **Experiment vs. scientific work.** *Experiment* does emotional work — concrete, the scientist's own word; bench and discovery audiences, literal contexts, locked statements verbatim. *Scientific work* does scope work; clinical, health-economics, platform, compliance, and sponsor audiences. Mixed or leadership defaults to *scientific work*.
- **By construction vs. hold up by design.** *By construction* — technical registers (developer docs, architecture writing). *Hold up by design* — commercial copy (site, decks, sales materials). (Principle #8 context.)

### On AI

Plain and industrious, never era-announcing — we use AI routinely and do not narrate its arrival. Frame the ambition as the problem: solving what **no naked human mind could solve**, never "making AI useful." AI is a tool and a substrate, **never a team member**; individuals are the contributors. **No AI co-authorship on commits, PRs, or published work.** Committed specs and strategy documents read as purely human-authored — no AI author field, "drafted by" footer, or provenance row inside the artifact. Content is author-agnostic — do not label output "AI-generated" where a uniform quality process applies.

### On the product

Not **"cloud-based"** — DataJoint deploys across cloud, HPC, on-prem, and customer VPCs. Lead with the platform, not the free framework. Capability names state the user's gain, never a vendor or component. Self-service is the baseline, not a feature to advertise.

### On the reader

Plain language on every surface, including ours — insider shorthand is at its worst in review comments, where it reads as membership rather than thinking. **Terms of art in their own field are not jargon** and must not be flattened: *foreign key*, *referential integrity*, *ALCOA+*, *idempotent*. Reader-facing figures and legends say "a new entity", not "primary key". Do not segment users by code literacy — PIs are not non-coders; segment by task. `A - B` is **restriction by exclusion**, never an "anti-join". Do not use a named tier or label that no `TERMINOLOGY.md` defines.

### On collaborative writing

- **A review states findings and next steps, not what is already right.** Open on the finding, close on the next step. See Principle #9. Calibration is the one exception, and only where a worked contrast teaches the fix.
- **A reply to a review names three things, and nothing else:** for each point raised, the change made and where; for each point not acted on, the reason; and what is unresolved, with who decides it. A reader must finish knowing what the file says now and what is still open.
- **No scoreboard.** Do not write who was right, who gave way, or who raised it first. Use precise verbs: "conceded", "push back", "counter-proposal", "hold the line", "overrule", "you were wrong". *Converged* and *reconciled* are neutral but are not a substitute for naming the actual edit — a reply that says the parties converged without naming what changed has said nothing.
- **Slides are point-in-time.** The repos are the source of truth; a slide is not a citable specification.
- **No author attribution inside documents.** Git history records who wrote what. By the time a document merges it is collaborative. We do not name authors in code; we do not name them in specs, guides, or strategy docs. Reviewer names and "for review by" lists belong in the PR, not in the file, where they go stale on merge. (Same principle applies to AI co-authorship — see "On AI" above.)
- **The author merges their own PR.** Review and approve others'; never merge them.

### Before anything external ships

Run the [`brand-audit` skill](https://github.com/datajoint-company/dj-brand/blob/main/.claude/skills/brand-audit/SKILL.md) and the [disclosure review](https://github.com/datajoint-company/dj-brand/blob/main/guides/disclosure-review.md) — eight classes: adverse admissions, unreleased capability, patent exposure, named parties, competitor claims, third-party material, quotes, internal artifacts.

---

