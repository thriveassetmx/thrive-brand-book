# THRIVE Brand Asset Inventory

Reorganized 2026-08-16. All THRIVE companies share the same base wordmark and color system
(brand blue `rgb(0,73,233)` / brand orange `rgb(253,65,0)` / black) — the only thing that
changes between them is the sub-line under "THRIVE" (Property MX, Assets MX, Creative
Exchange, Hospitality MX, Capital MX).

Structure:

```
brand/
  00-shared/          ← naming system, changelog, font record, color system, master .afdesign
  companies/
    property-mx/      ← logo/ (svg + png, 1-color/2-color/full-color, light/dark bg) + favicon/
    assets-mx/        ← logo/ (svg + png, 1-color/2-color/full-color, light/dark bg) + favicon/
    capital-mx/       ← logo/ (svg + png, 1-color/2-color/full-color*, light/dark bg) + favicon/
    hospitality-mx/   ← logo/ (svg + png, 1-color/2-color/full-color, light/dark bg) + favicon/
    creative-exchange/← favicon/ (1 draft, TC) — logo/ empty
  site/               ← local HTML/CSS brand book viewer
```

## Status per company

| Company | Full logo lockup | Favicon | Notes |
|---|---|---|---|
| **Thrive Property MX** | ✅ svg + png, 1-color/2-color/full-color, light/dark bg (`propertymx-logo-*`) | 🟡 source mark added (`propertymx-favicon.svg`), still needs 16/32/180/512/.ico export | Most complete brand — treat as the reference for the shared wordmark/colors |
| **Thrive Assets MX** | ✅ svg + png, 1-color/2-color/full-color, light/dark bg (`assetmx-logo-*`) | 🟡 source mark added (`assetmx-favicon.svg`, from old file "TA"), still needs 16/32/180/512/.ico export | Parent/portfolio brand |
| **Thrive Capital MX** | 🟡 svg + png, 1-color/2-color, light/dark bg (`capitalmx-logo-*`); full-color PNG only, SVG still missing | 🟡 source mark added (`capitalmx-favicon.svg`, from old file "TC"), still needs 16/32/180/512/.ico export | Confirmed 2026-08-16: "TC" = Capital MX, not Creative Exchange |
| **Thrive Hospitality MX** | ✅ svg + png, 1-color/2-color/full-color, light/dark bg (`hospitalitymx-logo-*`) | 🟡 final pick made (`hospitalitymx-favicon.svg`, from the 4 "Th 1–4" drafts), still needs 16/32/180/512/.ico export | Favicon decision resolved 2026-08-23 |
| **Thrive Creative Exchange** | ⬜ missing | ⬜ missing | No assets found — the "TC" file was confirmed to be Capital MX, not this brand. Its own favicon should use monogram **"TCE"**, not "TC", to avoid colliding with Capital MX going forward |

## Fonts
`00-shared/fonts/` holds the real Google Fonts OFL packages for **Gabarito** (display) and
**Manrope** (body) — variable fonts + static weights, `OFL.txt` + `README.txt` included. Bundled
into every per-company download and available standalone as `thrive-fonts.zip`.

## Immediate action items
1. Export a full logo lockup for Creative Exchange — same process as the other five companies,
   see `00-shared/EXPORT-FROM-AFFINITY.md`.
2. Export the missing full-color SVG for Capital MX (only the PNG exists so far).
3. Turn Property MX's, Assets MX's, Capital MX's, and Hospitality MX's favicon source marks into
   proper 16/32/180/512/.ico sets.
4. Fill in `00-shared/color-system.md` with confirmed HEX/RGB/CMYK/Pantone values.
