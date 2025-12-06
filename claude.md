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
│   └── presentation.qmd       # Main Quarto reveal.js presentation
├── images/
│   ├── blog/                  # Assets from wired-cloth-mother blog post
│   │   ├── harlow-experiment.jpg
│   │   ├── harlow-cloth-mother.jpg (small/corrupted)
│   │   ├── harlow-surrogate-mothers.jpg (small/corrupted)
│   │   ├── images_large_fg1.jpeg
│   │   ├── demis-hassabis.jpg
│   │   ├── sam-altman.jpg
│   │   └── hype-and-capability.png
│   └── popculture/            # Pop culture reference images
│       ├── severance-poster.jpg (small - may need replacement)
│       └── memento-poster.jpg
├── claude.md                  # This file - project context
└── background.md              # Original project brief
```

## Presentation Structure

### 1. Title & Introduction
- Event details and speaker intro
- Brief background on AI journey (skeptic → enthusiast)

### 2. Understanding AI Reasoning (WiredClothMother)
- Harlow's wire/cloth mother experiment metaphor
- DeepMind (Hassabis) = Wire Mother: function without form
- OpenAI (Altman) = Cloth Mother: form without function
- Modern LLMs = WiredClothMother: both reasoning AND conversation
- Source: https://jonminton.github.io/jon-blog/posts/wired-cloth-mother/

### 3. How Claude Sessions Work (Severance metaphor)
- Each session isolated like "innies" in Severance TV show
- Limited cross-session memory
- "Nothing taken out of the workplace"
- claude.md provides continuity across sessions

### 4. Memory and Context (Memento metaphor)
- Like Leonard's external memory systems (notes, polaroids)
- claude.md as your "polaroid notes"
- Compacting process for preserving context
- Best practices for maintaining project context

### 5. Web Claude for Research
- Literature review and summarization
- Data analysis planning
- Code explanation and debugging
- Live demonstration examples

### 6. Claude Code for Agentic Development
- VS Code extension capabilities
- Direct filesystem access and code editing
- Context-aware development
- Live coding demonstration
- **Meta moment**: These slides were created WITH Claude Code!

### 7. Reflections and Conclusion
- What works well
- Current limitations
- Best practices
- Teaching applications
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
   - Severance: session isolation/memory compartmentalization
   - Memento: external memory systems (claude.md)
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
✅ All sections outlined
✅ Images downloaded (some may need replacement)
✅ Folder structure organized
⏳ Awaiting review and iteration with Jon
⏳ Live demo sections need specific examples
⏳ May need to add speaker notes

## Next Steps

1. Review content with Jon - adjust depth, order, emphasis
2. Replace corrupted/small image files if needed
3. Add specific examples for web Claude and Claude Code demos
4. Test presentation rendering with Quarto
5. Add speaker notes if desired
6. Practice timing (45 min talk slot)

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
