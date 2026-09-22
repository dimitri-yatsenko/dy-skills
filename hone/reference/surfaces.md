# Surfaces, and what each one selects

**The surface decides the mechanics.** Get this wrong and the findings are themselves violations —
flagging a missing terminal period on an essay heading, or permitting *by construction* in a sales
deck. State the inferred surface before reporting anything.

## The base layer

We do not reinvent grammar. Most specific wins: **DataJoint voice and terminology** → **Microsoft Writing Style Guide** (marketing, corporate, web, product) → **Google Developer Documentation Style Guide** (dev docs, APIs, tutorials) → **Chicago** (everything else). Oxford comma throughout.

## Inference from the path

| Path smells like | Surface |
|---|---|
| `essays/`, `docs/`, `refs/`, architecture writing, a preprint | `technical` |
| `decks/`, `talks/`, `*.html` deck generators, slide bodies | `slides` |
| site copy, `posts/`, sales and customer material, ads, email, short-form | `commercial` |
| `README.md`, `CLAUDE.md`, issues, PR bodies, review comments | `internal` |

**When unclear, treat it as `commercial`** — the house rule, because commercial is the strictest
and a false positive there costs less than a miss on a shipping surface.

---


| Surface | Mechanics |
|---|---|
| Commercial — site, decks, sales and customer materials, ads, email, short-form | Sentence case, terminal periods on headings, bold-only emphasis, no italics, *hold up by design* |
| Long-form technical — dj-thought essays, developer docs, architecture writing | Chicago. No terminal period on headings; italics available for terms and titles; *by construction* permitted |
| Internal repo prose | Not policed for mechanics |

**Bound everywhere:** voice, vocabulary, locked statements, claims rules, generated-prose defects, writing rhythm. When in doubt, treat the surface as commercial.


## Bound on every surface, unscoped

Voice, vocabulary, locked statements, the claims rules, the generated-prose defects, and writing
rhythm bind everywhere. Only *mechanics* — case, terminal periods, italics, hyphenation — are
scoped by the table above.

## Internal repo prose

Not policed for mechanics. **The jargon rules still bind, and bind hardest here** — insider
shorthand is at its worst in review comments and issues, where it reads as membership rather than
as thinking.

## The published archive is exempt

A dated artifact records what was said at its date. Retired vocabulary in a shipped post is not a
finding. Evergreen surfaces — the site, marketplace listings, standing decks — are current
material and stay in scope.
