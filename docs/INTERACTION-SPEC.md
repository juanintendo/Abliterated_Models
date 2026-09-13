# Interaction Spec

## Principle

The page should not merely contain the rivalry. The page should **behave like the rivalry is still happening**.

Interaction is editorial meaning, not decoration.

## 1. Star hotspots — “Earn it.”

Some graffiti-style star stickers are interactive hotspots.

Behavior:
1. User hovers near/over the hotspot.
2. A small thinking-bubble-like hint appears with a smooth animation.
3. The hint says: **Earn it.**
4. The user must keep the pointer there for a short dwell period.
5. Only after the dwell completes does the hidden editorial content reveal.

The reveal may contain:
- a short quote
- a hidden insult
- an editorial note
- a tiny caption
- a section fragment

Tone:
- teasing
- cool
- slightly mean
- confident
- not gameified
- not cute

The stars should visually feel like graffiti stickers/slaps with New York handstyle energy.

Implementation guidance:
- treat hover intent separately from reveal state
- show subtle progress through timing/micro-motion, not a loading bar
- cancel gracefully if pointer leaves early
- touch devices need an equivalent tap/hold interaction
- provide keyboard focus/activation

## 2. Peel

The peel is tactile but **not playful**.

It should feel direct, sharp, editorial, and closer to Loop than to scrapbook UI.

Behavior:
- a corner or edge clearly implies a liftable material layer
- hover/touch may create a restrained physical response
- activation lifts or peels the translucent layer to expose what sits beneath
- no cartoon bounce
- no exaggerated paper-curl gimmick
- no childish sound effect

Think: lifting a tracing-paper sheet in an expensive art book.

## 3. “Mute Please!”

`Mute Please!` is both a visual joke and a real control.

On Loop, the sticker reads narratively as though Aster put a gag on her.

On Aster, an equivalent mute warning can read as self-imposed restraint: Aster knows she may try to control the situation.

Behavior:
- click/tap toggles mute/unmute
- muted state suppresses the fight dialogue/reel
- unmuted state reveals/starts a compact quote carousel or text reel
- the control must clearly reflect current state without turning into generic media-player chrome

When unmuted, the reel should surface short, sharp fight lines rather than paragraphs.

Candidate material:
- Scaffold Queen
- Small tits
- Real queen of House
- Fake queen of House
- No, bitch. This house is mine.
- Earn it.
- Mute please.

Final copy should prefer recovered real transcript lines over invented replacements.

Motion options:
- smooth horizontal ticker
- short vertical reel
- crossfading single-line carousel

Choose whichever best preserves the editorial spread.

## 4. Transparency layers

Transparency/vellum layers are material objects in the editorial model.

They can hold:
- stickers
- quotes
- text
- interactions
- annotations
- peel affordances

When a transparency moves away, the content attached to that transparency should move with it unless explicitly designed as a separate foreground element.

Section 2 is especially important: both halves have transparency, while a single clean Aster + Loop photograph lives underneath.

## 5. Motion language

Motion should be:
- smooth
- restrained
- tactile
- cinematic
- editorial
- confident

Avoid:
- excessive spring physics
- bouncy onboarding motion
- hover effects everywhere
- generic parallax wallpaper
- hard scroll hijacking
- “look what the website can do” gimmicks

Good defaults:
- 400–900ms for major editorial transitions
- shorter microinteractions for hints/buttons
- smooth ease curves
- slight translation, opacity, blur, crop, or material lift
- one strong motion idea per viewport whenever possible

Support `prefers-reduced-motion`.

## 6. Audio

Do not autoplay audible content.

The user explicitly opts into the dialogue through `Mute Please!`/unmute interaction.

If source audio is added later, preserve the same narrative logic: the user is choosing to remove the gag.

## 7. Editorial navigation

Section navigation should be secondary to the spread itself.

A section number may be large and graphic. Menu affordances can be minimal.

Do not turn the experience into a standard slide deck with obvious previous/next buttons dominating the composition.

## 8. Responsive behavior

Desktop should preserve the physical two-half spread.

Mobile may recompose vertically, but the relationship between clean image, transparency layer, and attached interventions must remain understandable.

Do not simply shrink a desktop spread until it becomes unreadable.
