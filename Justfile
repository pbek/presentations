# Use `just <recipe>` to run a recipe
# https://just.systems/man/en/

# By default, run the `--list` command
default:
    @just --list

# Variables

zellijSession := "presentation"

# Build all presentations as PDFs
build-pdfs:
    #!/usr/bin/env bash
    set -euo pipefail
    projects=("digital-projects")
    mkdir -p ./.build
    for project in "${projects[@]}"; do
        for presentation in "$project"/*; do
            if [ -d "$presentation" ] && [ -f "$presentation/presentation.md" ]; then
                presentation_name=$(basename "$presentation")
                echo "Building $presentation_name..."
                marp "$presentation/presentation.md" -o "./.build/$presentation_name.pdf" --allow-local-files
            fi
        done
    done

# Build all presentations as webpages
build-site:
    #!/usr/bin/env bash
    set -euo pipefail
    projects=("digital-projects")
    mkdir -p ./.site
    echo "Building index page..."
    marp INDEX.md -o ./.site/index.html
    for project in "${projects[@]}"; do
        for dir in "$project"/*/; do
            baseName=$(basename "$dir")
            if [ -f "$dir/presentation.md" ]; then
                echo "Building $baseName webpage..."
                marp "$dir/presentation.md" -o "./.site/$baseName/index.html"
                if [ -d "$dir/images" ]; then
                    mkdir -p "./.site/$baseName/images"
                    cp -r "$dir/images" "./.site/$baseName/"
                fi
            fi
        done
    done

# Start marp in watch mode with server and preview
watch:
    PORT=8181 marp -wsp . --port

# Open a terminal with the presentations session
[group('dev')]
term-run:
    zellij --layout term.kdl attach {{ zellijSession }} -c

# Kill the presentations session
[group('dev')]
term-kill:
    -zellij delete-session {{ zellijSession }} -f

# Kill and run a terminal with the presentations session
[group('dev')]
term: term-kill term-run

# Format all files
[group('linter')]
format args='':
    treefmt {{ args }}

# Format all files using pre-commit
[group('linter')]
format-all args='':
    pre-commit run --all-files {{ args }}

# Add git commit hashes to the .git-blame-ignore-revs file
[group('linter')]
add-git-blame-ignore-revs:
    git log --pretty=format:"%H" --grep="^lint" >> .git-blame-ignore-revs
    sort .git-blame-ignore-revs | uniq > .git-blame-ignore-revs.tmp
    mv .git-blame-ignore-revs.tmp .git-blame-ignore-revs
