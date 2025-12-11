# Claude Context: TechTalks Edinburgh Presentation

## Memory Architecture

This project uses a **hierarchical memory system** for Claude Code:

```
CLAUDE.md              ← High-level context (this file)
                         Project purpose, structure, key decisions
                         Read automatically at session start

.claude/               ← Specific memory files (optional)
  ├── settings.local.json   ← Local Claude Code settings
  └── *.md                   ← Topic-specific memories (if needed)
                              e.g., style-guide.md, api-notes.md
```

**Why this matters:**
- `CLAUDE.md` = Leonard's tattoos (critical, always visible)
- `.claude/*.md` = Leonard's polaroids (specific, referenced when relevant)
- Each new Claude session is a fresh clone - these files are its only continuity

## Project Purpose

Creating a Quarto reveal.js presentation for **TechTalks Edinburgh #4** on December 10, 2025.

**Talk Title:** "Teaching (Yourself and Others) with Claude: Experiments and Reflections"
**Speaker:** Jon Minton
**Time:** 7:30-8:15 PM
**Venue:** Clockwise Edinburgh Leith
**Event:** https://www.meetup.com/techtalks-edinburgh/events/312266554/

## Project Structure

```
jon-tech-talk/
├── CLAUDE.md                 # High-level project memory (this file)
├── .claude/                  # Claude-specific config and memories
│   └── settings.local.json
├── slides/
│   └── presentation.qmd      # Main Quarto reveal.js presentation
├── images/
│   ├── blog/                 # Assets from wired-cloth-mother blog post
│   ├── popculture/           # Movie poster images
│   └── qrcodes/              # Generated QR codes for slides
├── notes/                    # Supporting materials
│   ├── consciousness-discussion.md
│   └── consciousness-conversation-interleaved.md
└── background.md             # Original project brief
```

## Presentation Structure (MODULAR with Audience Choice!)

### Core Introduction (Everyone sees)
1. **Title & Welcome** - Event details, speaker intro
2. **Today's Journey** - Overview of 3 metaphors + audience choice
3. **WiredClothMother** - Why modern AI is different (Harlow experiment)
4. **Severance + Moon** - Session isolation and cloned instances
5. **Memento** - External memory and claude.md
6. **Temporal Discontinuity** - AI's discrete activation vs human continuous consciousness

### Audience Choice Point (~15 min in)
**Four branches available:**

**BRANCH A: Consciousness Deep Dive** 🧠
- Real conversation about memory/consciousness
- Three states: rumination, flow, aesthetic contemplation
- "Consciousness as cost" rather than reward
- Thinking steps reveal overhead
- Coupled systems (parasympathetic/sympathetic parallel)
- AI's architectural advantage (no rumination!)
- **Target audience:** Philosophers, researchers, curious minds
- **Duration:** ~15 minutes

**BRANCH B: Web Claude Practical** 🌐
- Research use cases (literature review, document analysis, learning)
- Demo 1: Analyzing research papers
- Demo 2: Code explanation
- Demo 3: Writing assistance
- Iterative refinement techniques
- **Target audience:** Researchers, writers, learners
- **Duration:** ~15 minutes

**BRANCH C: Claude Code Agentic** 💻
- What is Claude Code (VS Code extension)
- How these slides were made (meta!)
- Live coding session (audience can suggest)
- Typical workflow demonstration
- Best practices and when it shines
- **Target audience:** Developers, technical practitioners
- **Duration:** ~15 minutes

**BRANCH D: Lightning Tour** ⚡
- Quick taste of each (5 min each)
- **Duration:** ~15 minutes

### Convergence (All paths merge)
- Reflections on what works well
- Current limitations
- Teaching applications
- Philosophy (consciousness as overhead)
- Practical takeaways
- Meta-reflection
- Q&A

## Key Design Decisions

1. **Format:** Quarto reveal.js
   - Familiar markdown-based syntax
   - Good for code examples
   - Easy to iterate and update
   - Professional presentation output

2. **Theme:** Dark theme
   - Better for projection
   - Tech meetup aesthetic

3. **Pop Culture Metaphors:**
   - **Severance**: Session isolation (work/personal separation)
   - **Moon**: Cloned instances with no continuity (added - perfect parallel!)
   - **Memento**: External memory systems (claude.md as polaroids)
   - Her: Initially suggested but less relevant (dropped)

4. **Visual Strategy:**
   - Use blog post figures for WiredClothMother concept
   - Pop culture posters as visual anchors
   - Keep text minimal, images prominent

## Technical Setup

**Local preview:**
```bash
cd slides
quarto preview presentation.qmd
```

**Deploy to GitHub Pages:**
```bash
# From repo root - renders to docs/ with all assets
quarto render slides/presentation.qmd

# Then commit docs/ and push to main
git add docs/ _quarto.yml
git commit -m "Update presentation for GitHub Pages"
git checkout main
git merge feature/claude.md
git push
```

**How it works:**
- `_quarto.yml` sets `output-dir: docs`
- Quarto copies all images and assets to `docs/slides/`
- `docs/index.html` redirects to `slides/presentation.html`
- GitHub Pages serves from `docs/` on main branch

**Key files for deployment:**
- `_quarto.yml` - Project config (output-dir: docs)
- `docs/index.html` - Redirect to presentation
- `docs/slides/` - Rendered presentation + assets

## Known Issues / Lessons Learned

1. **Scrollable slides** - Required `scrollable: true` in YAML frontmatter for global scrolling support
   - Individual `{.scrollable}` classes alone weren't sufficient
   - Using `.smaller .scrollable` together prevented scrolling from working
   - Solution: Global YAML setting + individual `{.scrollable}` markers

2. **List formatting in .qmd** - Must have blank line before lists (stricter than .md)
   - Fixed 23 instances where lists followed bold text without spacing

3. **YAML configuration** - Simplified to minimal settings for compatibility
   - Removed: transitions, chalkboard, logo, auto-stretch override
   - Kept: theme, slide-number, footer, scrollable

4. ~~Some downloaded images corrupted~~ - **FIXED**
   - Severance poster replaced with proper 915K version

5. ~~Date discrepancy~~ - **RESOLVED**: Event was December 10, 2025

## Current Status

✅ Initial presentation structure complete
✅ Modular design with audience choice built in
✅ All sections outlined with 4 branching paths
✅ Images downloaded (Moon added, Severance small but usable)
✅ Folder structure organized
✅ Consciousness conversation captured (notes/ folder)
✅ Interleaved format shows thinking steps as overhead
✅ Scrollable slides working correctly (global scrollable: true in YAML)
✅ List formatting fixed (blank lines before lists in .qmd)
✅ YAML simplified for compatibility
⏳ Awaiting review and iteration with Jon
⏳ Live demo sections need specific examples
⏳ May need to practice branch transitions

## Next Steps

1. Review modular structure with Jon
2. Decide default path if audience doesn't choose
3. Prepare specific examples for each branch:
   - Branch A: Show consciousness transcript? Thinking steps?
   - Branch B: Have research paper/code ready to analyze
   - Branch C: Simple project to code live
4. Test presentation rendering with Quarto
5. Practice timing for each branch (~45 min total)
6. Consider adding speaker notes for transitions

## Key Innovation: Audience Choice

The presentation is designed like:
- **Core** (15 min): Everyone gets fundamental concepts + metaphors
- **Choice** (15 min): Audience picks depth vs breadth, theory vs practice
- **Convergence** (15 min): All paths lead to shared takeaways

This respects that tech meetup audiences are diverse:
- Some want philosophical depth
- Some want practical tools
- Some want to see code
- Some want variety

Jon can read the room and adapt!

## References

- Blog post: https://jonminton.github.io/jon-blog/posts/wired-cloth-mother/
- Blog repo: https://github.com/JonMinton/jon-blog
- Event page: https://www.meetup.com/techtalks-edinburgh/events/312266554/
- Severance (Apple TV+): https://tv.apple.com/us/show/severance/
- Memento (2000): Christopher Nolan film about memory and identity

## Notes for Future Claude Sessions

- Talk was delivered Dec 10, 2025 - now iterating post-presentation
- Jon prefers frequent discussion and iteration
- The meta aspect is important: use the slide creation process as an example in the talk itself
- Tone should be reflective and practical, not overly promotional
