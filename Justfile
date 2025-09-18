# Use `just <recipe>` to run a recipe
# https://just.systems/man/en/

# By default, run the `--list` command
default:
    @just --list

# Start marp in watch mode with server and preview
watch:
    marp -wsp .

# Attach to zellij presentations session
term:
    zellij --layout term.kdl attach presentations -cf

# Delete zellij presentations session
term-kill:
    zellij delete-session presentations -f

# Format all files
[group('linter')]
format args='':
    treefmt {{ args }}

# Format all files using pre-commit
[group('linter')]
format-all args='':
    pre-commit run --all-files {{ args }}
