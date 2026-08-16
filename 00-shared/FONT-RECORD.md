# Typeface Record — fill this in NOW

The logo wordmark is fully outlined (converted to curves) in the exported SVG — there is no
`font-family` left in that file. That's correct for a shipping logo, but it means the typeface
is only known to whoever drew it in Affinity, and only for as long as Affinity's document
history/undo stack survives. Write it down while you can still check it in Affinity
(Text tool → click the original text layer, if it still exists in the .afdesign history — or
your own memory of what you picked).

## Primary display typeface (for decks, headlines, print — see step 6)
- **Name:** Gabarito
- **Weight(s):** loaded 100–900 + italics (site pulls the full variable range; pick 1–2 for the actual type scale, see below)
- **Foundry / source:** Google Fonts (open source, SIL Open Font License)
- **License:** OFL — free for web, print, apps, no attribution required
- **Web-licensed?** Yes, already live on new.thrivepropertymx.com via Google Fonts CDN, wired to h1–h6 in the Elementor global kit (`elementor-kit-5`)
- **Confirmed by:** live CSS on new.thrivepropertymx.com, 2026-08-13 (`elementor-kit-5 h1..h6 { font-family:"Gabarito" }`)

## Body typeface
- **Name:** Manrope
- **Weight(s):** loaded 100–900 + italics (full range pulled; narrow to 1–2 for the scale)
- **Foundry / source:** Google Fonts (open source, SIL Open Font License)
- **License:** OFL — free for web, print, apps, no attribution required
- **Web fallback stack:** `"Manrope", "Helvetica Neue", Arial, sans-serif`
- **Confirmed by:** live CSS on new.thrivepropertymx.com, 2026-08-13 (wired to body links, buttons, labels, form fields)

## Retired — not a brand font
- **Montserrat** was found loaded on the site (self-hosted copy at
  `/wp-content/uploads/elementor/google-fonts/css/montserrat.css`) but is **not** part of the
  brand — decided 2026-08-13. It wasn't wired into the global kit's h1–h6/body rules, so it's
  likely a leftover from an older page/kit or an unused widget setting.
  **Action item (not yet done — needs WordPress/Elementor access):** find where it's still
  enqueued or selected in Elementor (Site Settings → Global Fonts, and any widget with a
  font-family override set to Montserrat) and remove it so only Gabarito + Manrope remain.

## Logo wordmark typeface
Both parts of the logo lockup trace back to **Manrope** — not Gabarito. Gabarito is a separate
choice used only for site headlines (see above), unrelated to the logo.

- **"THRIVE" (main word):**
  - **Base:** Manrope (ExtraBold or Black weight), then custom-modified/redrawn by hand in
    Affinity — this is *not* stock Manrope, it's a bespoke logotype derived from it. That's why
    the exported SVG is fully outlined: the letterforms were altered from the source font, not
    just set and converted.
  - **Weight it was drawn from:** confirm in Affinity (ExtraBold or Black, matching the
    sub-line's weight is the likely starting point)
  - **Custom modifications:** note here once confirmed — which letters were altered and how
    (this is the part that's genuinely only recoverable from Affinity's history, since it's not
    a font file lookup anymore)
  - **Redistribution note:** because this is a modified/derived design, don't re-set "THRIVE" in
    plain Manrope anywhere it needs to match the logo exactly (headers, signage) — always trace
    back to the outlined master shapes, or to a redrawn/hinted version if one gets built.

- **"PROPERTY MX" (sub-line):**
  - **Name:** Manrope — **used as-is, unmodified**
  - **Weight:** ExtraBold — confirmed from Affinity Character panel, 2026-08-13
  - **Foundry / source:** Google Fonts (SIL Open Font License)
  - **Where else used:** body copy, buttons, links, forms site-wide (at lighter weights than
    ExtraBold — check the type scale for which weights body text actually uses vs. this
    display use)

Manrope is OFL-licensed — free, no attribution required, safe anywhere (print, web, signage).
The custom-modified "THRIVE" letterforms are yours (derivative work), so they carry no separate
licensing concern, but they do need to live somewhere other than "it's just Manrope" — the
outlined SVG paths ARE the definitive source now.

Once filled in, this becomes the source for `02-Color-Typography/type-scale.md` and the
Elementor Global Fonts setup (step 8).
