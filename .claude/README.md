# Claude Code Project Configuration

This directory contains project-specific configuration for Claude Code sessions.

## Hooks

### `hooks/pre-quarto-render.sh`

**Purpose:** Defensive script to prevent Quarto rendering errors with image paths

**When to use:** Before running `quarto render` or `quarto preview`

**What it does:**
1. Checks that `images/` directory exists at repo root
2. Creates symlink `slides/images -> ../images` if not already present
3. Ensures Quarto can find images referenced as `images/blog/file.jpg` in `.qmd` files

**Usage:**
```bash
# From repository root
./.claude/hooks/pre-quarto-render.sh

# Then render
cd slides && quarto render presentation.qmd
```

## Why This Pattern?

**The Problem:**
- Quarto source files in `slides/presentation.qmd`
- Images stored at `images/blog/`, `images/popculture/`
- Markdown references: `![](images/blog/file.jpg)` (relative path)
- Works ONLY if `slides/images/` exists

**Common Failure Scenarios:**
- After switching branches
- After fresh clone
- After deleting build artifacts
- When images exist only at repo root

**The Solution:**
- Single source of truth: `images/` at repo root
- Symlink: `slides/images -> ../images`
- Defensive hook: auto-creates symlink before render
- Prevents "file not found" errors

## Cross-Project Applicability

This pattern applies to ANY Quarto project with:
- ✅ Source files in subdirectory (e.g., `slides/`, `docs/`, `notebooks/`)
- ✅ Assets in separate directory (e.g., `images/`, `data/`, `figures/`)
- ✅ Relative paths in markdown (e.g., `![](images/foo.jpg)`)

## File Structure

```
jon-tech-talk/
├── .claude/
│   ├── README.md                          # This file
│   └── hooks/
│       └── pre-quarto-render.sh          # Image path defensive hook
├── images/                                # Source of truth for images
│   ├── blog/
│   └── popculture/
├── slides/
│   ├── images -> ../images               # Symlink (created by hook)
│   └── presentation.qmd                  # References images/blog/file.jpg
└── claude.md                             # Project context for Claude Code
```

## Notes for Future Claude Sessions

If you see Quarto rendering errors about missing images:
1. Read this file
2. Check if `slides/images/` exists and is a symlink
3. Run `./.claude/hooks/pre-quarto-render.sh`
4. Document the issue in `claude.md` if it's a new variant

This is a **recurring pattern** across Jon's Quarto projects - defensive solution documented here for reuse.
