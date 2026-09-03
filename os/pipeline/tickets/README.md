# Tickets — one file per unit of work
`NNNN-slug.md`, frontmatter per `os/AGENTS.md` §3. States: `todo → ai-doing → needs-review → human-doing → done`.
Anything a client will see **must** pass through `needs-review`. Numbering is monotonic, never reused.
Seed example: `1001-kickoff-build-week-1.md` (created at build start, one per module).
