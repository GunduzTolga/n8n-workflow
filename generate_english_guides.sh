#!/bin/bash
set -e
src="n8n_workflows-2-rehber"
dst="n8n_workflows-2-rehber-english"
template="english_template_2rehber.md"

mkdir -p "$dst"

for file in "$src"/*.md; do
  base=$(basename "$file")
  first_line=$(head -n 1 "$file")
  {
    echo "$first_line"
    cat "$template"
  } > "$dst/$base"
done

cp "$template" "$dst/_TEMPLATE.md"
