# THRIVE Naming & File System

Single rule: **no "new", "final", "v1/v2/v3", or dates in shipping filenames.** Version lives in
`00-Master/CHANGELOG.md`, not the name. If you're tempted to add a version word, that file
belongs in an Archive folder, not here.

## Multi-brand favicon monograms

Every THRIVE company shares one wordmark/color system but gets its own favicon monogram — pick
letters that can't collide between companies. Confirmed so far:

| Company | Monogram |
|---|---|
| Thrive Assets MX | TA |
| Thrive Capital MX | TC |
| Thrive Creative Exchange | **TCE** (not "TC" — reserved for Capital MX) |
| Thrive Hospitality MX | TH |
| Thrive Property MX | TP |

If a new company's initials would collide with one above, extend to a 3-letter monogram the way
Creative Exchange does, rather than reusing a 2-letter one.

## Folder map

```
Brand/
  00-Master/            ← the .afdesign source file(s) + CHANGELOG.md + FONT-RECORD.md
  01-Logo/
    svg/                ← one SVG per lockup (web/master format)
    png/                ← transparent PNG, 3 sizes per lockup
    pdf/                ← print/vendor format per lockup
    favicon/            ← the favicon set (built from icon-only mark)
  02-Color-Typography/  ← color-system.md, type-scale.md
  03-Guidelines/         ← the brand guidelines doc (PDF + source)
  04-Templates/         ← deck, letterhead, email signature, social avatar
  99-Archive/           ← anything superseded — old process files, dupes, rejected directions
                           (create this and move Logos/New/in process/* here when you're ready)
```

## Lockup naming pattern

```
thrive-logo-{lockup}-{color}.{ext}
```

**{lockup}** — one of:
- `primary` — full horizontal lockup (mark + wordmark side by side)
- `stacked` — mark above wordmark, centered
- `icon` — the mark alone, no wordmark
- `wordmark` — text only, no mark (optional, for tight spaces)

**{color}** — one of:
- `full-color` — the real brand colors
- `black` — one-color black, for light backgrounds where color can't render
- `white` — one-color white (reversed), for dark backgrounds

**{ext}** — `svg`, `png`, `pdf`

### Full file list you're building toward

```
thrive-logo-primary-full-color.svg
thrive-logo-primary-black.svg
thrive-logo-primary-white.svg
thrive-logo-stacked-full-color.svg
thrive-logo-stacked-black.svg
thrive-logo-stacked-white.svg
thrive-logo-icon-full-color.svg
thrive-logo-icon-black.svg
thrive-logo-icon-white.svg
thrive-logo-wordmark-full-color.svg   (optional)
```

PNG filenames add the pixel width: `thrive-logo-primary-full-color-500.png`,
`-1000.png`, `-2000.png`. PDF keeps the plain name: `thrive-logo-primary-full-color.pdf`.

### Favicon set (built from `icon` lockup only — never from a JPG)

```
favicon/
  favicon-16.png
  favicon-32.png
  favicon-180.png   ← apple-touch-icon
  favicon-512.png
  favicon.ico       ← multi-size 16/32/48, for legacy browser tabs
  favicon.svg       ← optional, scalable, modern browsers
```

## Why this works

Nobody has to guess which file is current — there's exactly one name per lockup/color
combination, and it never changes. When the logo is revised, you overwrite the same filename
and log what changed in the changelog. The folder becomes the single source of truth (see
governance step below) instead of a pile of "logo new (2) final v3.jpg".
