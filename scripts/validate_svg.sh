#!/usr/bin/env sh

# Minimal, dependency-light check for the skill's true-vector delivery contract.
# Run in a POSIX shell: sh scripts/validate_svg.sh assets/examples/*.svg

if [ "$#" -eq 0 ]; then
  echo "usage: $0 FILE.svg [...]" >&2
  exit 2
fi

status=0

for file in "$@"; do
  if [ ! -f "$file" ]; then
    echo "FAIL  missing: $file" >&2
    status=1
    continue
  fi

  failed=0
  if ! grep -Eiq "viewBox=[\"'][[:space:]]*-?[0-9]+([.][0-9]+)?[[:space:],]+-?[0-9]+([.][0-9]+)?[[:space:],]+[0-9]+([.][0-9]+)?[[:space:],]+[0-9]+([.][0-9]+)?[[:space:]]*[\"']" "$file"; then
    echo "FAIL  no numeric viewBox: $file" >&2
    failed=1
  fi
  if grep -Eiq '<image|data:image' "$file"; then
    echo "FAIL  embedded raster: $file" >&2
    failed=1
  fi
  if ! grep -Eq '<(path|line|polyline|polygon|ellipse|circle|rect)([[:space:]>])' "$file"; then
    echo "FAIL  no geometry: $file" >&2
    failed=1
  fi
  if ! grep -Eq '<text([[:space:]>])' "$file"; then
    echo "FAIL  no editable text label: $file" >&2
    failed=1
  fi
  png="$(dirname "$file")/$(basename "$file" .svg).png"
  if [ ! -f "$png" ]; then
    echo "FAIL  missing paired PNG: $file" >&2
    failed=1
  fi

  if [ "$failed" -eq 0 ]; then
    echo "PASS  $file"
  else
    status=1
  fi
done

exit "$status"
