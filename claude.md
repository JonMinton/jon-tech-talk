# Claude Context: TechTalks Edinburgh Presentation

## Project Purpose
Creating a Quarto reveal.js presentation for **TechTalks Edinburgh #4** on December 10, 2024.

**Talk Title:** "Teaching (Yourself and Others) with Claude: Experiments and Reflections"
**Speaker:** Jon Minton
**Time:** 7:30-8:15 PM
**Venue:** Clockwise Edinburgh Leith
**Event:** https://www.meetup.com/techtalks-edinburgh/events/312266554/

## Project Structure

```
jon-tech-talk/
├── slides/
│   └── presentation.qmd       # Main Quarto reveal.js presentation (MODULAR)
├── images/
│   ├── blog/                  # Assets from wired-cloth-mother blog post
│   │   ├── harlow-experiment.jpg
│   │   ├── harlow-cloth-mother.jpg (small/corrupted - not used)
│   │   ├── harlow-surrogate-mothers.jpg (small/corrupted - not used)
│   │   ├── images_large_fg1.jpeg
│   │   ├── demis-hassabis.jpg
│   │   ├── sam-altman.jpg
│   │   └── hype-and-capability.png
│   └── popculture/            # Pop culture reference images
│       ├── severance-poster.jpg (small - may need replacement)
│       ├── memento-poster.jpg
│       └── moon-poster.jpg (NEW - 250K)
├── notes/                     # Supporting materials
│   ├── consciousness-discussion.md        # Synthesized insights
│   └── consciousness-conversation-interleaved.md  # Full transcript with thinking steps
├── claude.md                  # This file - project context
└── background.md              # Original project brief
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

To render the presentation:
```bash
cd slides
quarto render presentation.qmd
# or
quarto preview presentation.qmd  # for live preview
```

## Known Issues

1. Some downloaded images are corrupted/incomplete (very small file sizes):
   - harlow-cloth-mother.jpg (109B)
   - harlow-surrogate-mothers.jpg (118B)
   - severance-poster.jpg (1957B - may be too small)

   May need to re-download or find alternative sources.

2. Date discrepancy: Meetup shows "2025" but event is clearly next week (Dec 2024)

## Current Status

✅ Initial presentation structure complete
✅ Modular design with audience choice built in
✅ All sections outlined with 4 branching paths
✅ Images downloaded (Moon added, Severance small but usable)
✅ Folder structure organized
✅ Consciousness conversation captured (notes/ folder)
✅ Interleaved format shows thinking steps as overhead
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

- This is a time-sensitive project (talk is Dec 10, 2024)
- Jon prefers frequent discussion and iteration
- The meta aspect is important: use the slide creation process as an example in the talk itself
- Tone should be reflective and practical, not overly promotional
