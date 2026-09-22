#!/usr/bin/env bash
# The grep shortcuts from the standard, run over one file.
# Every hit is a CANDIDATE, not a finding — clear each by reading it.
set -uo pipefail
F="${1:-}"
[ -z "$F" ] && { echo "usage: check.sh <file>"; exit 2; }
[ -r "$F" ] || { echo "cannot read $F"; exit 2; }

hits=0
say() { printf '\n\033[1m%s\033[0m\n' "$1"; }

say "Prose candidates"
for p in 'worth' 'rather than' '\bland' 'load-bearing' 'honest' 'deliberately' ', ensuring' \
         ', allowing' ', enabling' ', making it' 'delve' 'leverage' 'robust' 'seamless' \
         'in order to' 'it is important' 'not just' "isn't about" 'In short' 'Ultimately' \
         'crucially' 'importantly' 'notably' 'unleash' 'powerful' 'journey' 'landscape'; do
  if out=$(grep -nEi -- "$p" "$F"); then
    n=$(printf '%s\n' "$out" | wc -l | tr -d ' ')
    hits=$((hits + n))
    printf '  %-18s %s\n' "$p" "$n"
    printf '%s\n' "$out" | sed 's/^/      /' | cut -c1-118
  fi
done
[ "$hits" -eq 0 ] && echo "  none"

say "Generic headings — guilty until the transferability test clears them"
grep -nE '^#+ .*(Why|What|How|Where|Overview|Background|Context|Notes|Key |Approach|Summary|The claim|The point)' "$F" \
  | sed 's/^/  /' || echo "  none"

say "Every heading, to read in isolation"
grep -nE '^#+ ' "$F" | sed 's/^/  /' || echo "  none"

say "No search finds these — read for them"
cat <<'EOT'
  1  Metronomic cadence    3+ consecutive sentences of near-identical length or shape
  5  Decorative triple     three adjectives where two carry the weight
  15 Bold scatter          a bolded phrase in every bullet
  16 Appositive pile-up    two or more parenthetical asides in one sentence
     Riddle headings       abstract pointers built from paragraph context
EOT
printf '\n%s prose candidates. A candidate is not a finding.\n' "$hits"
