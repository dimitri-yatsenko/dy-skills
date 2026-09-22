#!/usr/bin/env bash
# The grep shortcuts from the standard, run over one file.
# Every hit is a CANDIDATE, not a finding — clear each by reading it.
#   usage: check.sh <file> [--focus verbosity|headings|tone|all]
set -uo pipefail
F=""; FOCUS="verbosity"   # the standing pass
while [ $# -gt 0 ]; do
  case "$1" in
    --focus) FOCUS="${2:-verbosity}"; shift 2;;
    --focus=*) FOCUS="${1#*=}"; shift;;
    -h|--help) echo "usage: check.sh [file] [--focus verbosity|headings|tone|all]   (default: verbosity)"; exit 0;;
    *) [ -z "$F" ] && F="$1"; shift;;
  esac
done

# No file given: the prose this working tree has changed.
# Portable to bash 3.2 (macOS) — no mapfile, no arrays.
if [ -z "$F" ]; then
  changed=$({ git diff --name-only; git diff --name-only --cached; \
              git ls-files --others --exclude-standard; } 2>/dev/null \
            | sort -u | grep -Ei '\.(md|markdown|txt|html)$' || true)
  n=$(printf '%s' "$changed" | grep -c . || true)
  if [ "$n" -eq 0 ]; then
    echo "no file given, and no changed prose in this working tree"; exit 2
  elif [ "$n" -eq 1 ]; then
    F="$changed"; echo "no file given — using the one changed prose file: $F"; echo
  else
    echo "no file given. $n changed prose files:"
    printf '%s\n' "$changed" | sed 's/^/  /'
    echo
    echo "Name one, or run them all:"
    echo "  for f in \$(git diff --name-only | grep -E '\\.md\$'); do \"$0\" \"\$f\"; done"
    exit 2
  fi
fi
[ -r "$F" ] || { echo "cannot read $F"; exit 2; }
has() { [ "$FOCUS" = all ] && return 0; case ",$FOCUS," in *,"$1",*) return 0;; *) return 1;; esac; }

hits=0
say() { printf '\n\033[1m%s\033[0m\n' "$1"; }
scan() { # scan <label> <pattern>...
  local label="$1"; shift; local found=0
  say "$label"
  for p in "$@"; do
    if out=$(grep -nEi -- "$p" "$F" 2>/dev/null); then
      n=$(printf '%s\n' "$out" | wc -l | tr -d ' '); hits=$((hits+n)); found=1
      printf '  %-20s %s\n' "$p" "$n"
      printf '%s\n' "$out" | cut -c1-116 | sed 's/^/      /'
    fi
  done
  [ "$found" -eq 0 ] && echo "  none"
}

has verbosity && scan "Verbosity candidates" \
  'worth' 'rather than' '\bland' 'load-bearing' 'in order to' 'it is important' \
  ', ensuring' ', allowing' ', enabling' ', making it' ', providing' \
  'not just' "isn't about" 'instead of' 'not merely' \
  'delve' 'leverage' 'robust' 'seamless' 'powerful' 'journey' 'landscape' 'solutions' \
  'underscore' 'testament to' 'tapestry' 'realm' 'unlock' 'unleash' \
  'table stakes' 'low-hanging' 'move the needle' 'boil the ocean' 'double-click on' \
  'you have heard' 'you already know' 'we all'

has tone && scan "Tone candidates" \
  'importantly' 'crucially' 'notably' 'the key insight' 'make no mistake' \
  'honest' 'genuinely' 'truly' 'frankly' 'precisely why' 'exactly what' 'deliberately' \
  'In short' 'Ultimately' 'At the end of the day' \
  'may potentially' 'can often' 'while .* has merits' \
  'great question' "you're absolutely right" "I'd be happy to"

hgrep() { # hgrep <label> <pattern>
  say "$1"
  if out=$(grep -nE "$2" "$F" 2>/dev/null); then
    n=$(printf '%s\n' "$out" | wc -l | tr -d ' '); hits=$((hits+n))
    printf '%s\n' "$out" | sed 's/^/  /'
  else echo "  none"; fi
}
if has headings; then
  hgrep "Generic headings — guilty until the transferability test clears them" \
    '^#+ .*(Why|What|How|Where|Overview|Background|Context|Notes|Key |Approach|Summary|The claim|The point)'
  hgrep "Stacked gerunds — reach for the noun, not a better gerund" \
    '^#+ .*\b[A-Za-z]+ing [a-z]+ing\b'
  hgrep "Fractured headings — delete from the comma on and see what survives" \
    '^#+ [^,]+,'
  hgrep "Stative verbs in headings" \
    '^#+ .*\b(sits|lives|exists|resides|underpins|encompasses|is located|is found|serves as|is responsible for)\b'
  say "Every heading — read these in isolation, out of document order"
  grep -nE '^#+ ' "$F" | sed 's/^/  /' || echo "  none"
fi

say "No search finds these — read for them"
has verbosity && echo "  5  Decorative triple     three adjectives where two carry the weight"
has verbosity && echo "  16 Appositive pile-up    two or more parenthetical asides in one sentence"
has tone       && echo "  1  Metronomic cadence    3+ consecutive sentences of near-identical shape"
has tone       && echo "  15 Bold scatter          a bolded phrase in every bullet"
has headings   && echo "     Riddle headings       abstract pointers built from paragraph context"
has headings   && echo "     Sub-claim headings    a true claim that covers one paragraph, not the section"
printf '\n%s candidates (focus: %s). A candidate is not a finding.\n' "$hits" "$FOCUS"
