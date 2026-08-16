# Exporting the lockup family out of Affinity

I can't open `.afdesign` — this part has to happen in Affinity. Once the SVGs land in
`Brand/01-Logo/svg/` I can take over: generate the PNG/favicon matrix, extract exact color
values, and draft the guidelines doc automatically.

## In Affinity (do this now, ~20–25 min)

1. **Open `logo.afdesign`.** Confirm the current lockup is what you want as `primary`
   (horizontal). If a stacked/centered version doesn't exist yet, duplicate the artboard and
   rearrange mark + wordmark stacked — this is quick if the mark and wordmark are separate
   layer groups.
2. **Isolate the icon-only mark** onto its own artboard (hide/delete the wordmark layers on a
   duplicate). This becomes your favicon source and social-avatar asset.
3. **Make the one-color variants**: duplicate each artboard, select all shape layers, set fill
   to `#000000` (black) → export; then `#FFFFFF` (white) → export on a dark or transparent
   check. Don't hand-pick "close enough" colors — literal black/white only.
4. **Export each artboard** using the exact filenames from `NAMING-SYSTEM.md`:
   - SVG: File → Export → SVG, into `Brand/01-Logo/svg/`
   - PNG: export at 2000px width with transparent background into `Brand/01-Logo/png/`
     (I can downsample to 1000/500 from the 2000px master — no need to export 3 sizes by hand)
   - PDF: File → Export → PDF (press-quality/PDF-X if offered) into `Brand/01-Logo/pdf/`
5. **Before you close the file**, fill in `00-Master/FONT-RECORD.md` — click the original text
   layer if it's still in the layer history and read the font name off the Character panel.
   This is the one piece of information that's gone for good once that layer is deleted or the
   history is cleared.

## Hand back to me

Once at least `thrive-logo-primary-full-color.svg` and `thrive-logo-icon-full-color.svg` are in
`Brand/01-Logo/svg/`, tell me and I will:
- generate the full PNG (500/1000/2000) and favicon set (16/32/180/512/.ico) from those masters
- read the exact HEX/RGB out of the SVGs and pre-fill `color-system.md`
- draft `03-Guidelines/` (clear space, minimum size, forbidden uses, do/don't) from the real files
- tell you exactly what to paste into Elementor Global Colors/Fonts and Canva Brand Kit
  ("Thrive AssetMx" kit is already live and connected)

## What's realistically NOT happening in this hour

Full guidelines doc with visual do/don't examples, Elementor deployment, Canva Brand Kit
population, and the quarterly-audit governance step all depend on the exported files existing
first. Treat this hour as: naming system (done), folder scaffold (done), get the SVGs out of
Affinity. Everything downstream is the next session.
