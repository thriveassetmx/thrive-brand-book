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
    creative-exchange/← logo/ (svg + png, 1-color/2-color/full-color, light/dark bg) + favicon/
  site/               ← local HTML/CSS brand book viewer
```

## Status per company

| Company | Full logo lockup | Favicon | Notes |
|---|---|---|---|
| **Thrive Property MX** | ✅ svg + png, 1-color/2-color/full-color, light/dark bg (`propertymx-logo-*`) | ✅ final (`propertymx-favicon.svg`) | Most complete brand — treat as the reference for the shared wordmark/colors |
| **Thrive Assets MX** | ✅ svg + png, 1-color/2-color/full-color, light/dark bg (`assetmx-logo-*`) | ✅ final (`assetmx-favicon.svg`, from old file "TA") | Parent/portfolio brand |
| **Thrive Capital MX** | 🟡 svg + png, 1-color/2-color, light/dark bg (`capitalmx-logo-*`); full-color PNG only, SVG still missing | ✅ final (`capitalmx-favicon.svg`, from old file "TC") | Confirmed 2026-08-16: "TC" = Capital MX, not Creative Exchange |
| **Thrive Hospitality MX** | ✅ svg + png, 1-color/2-color/full-color, light/dark bg (`hospitalitymx-logo-*`) | ✅ final (`hospitalitymx-favicon.svg`, resolved 2026-08-23 from the 4 "Th 1–4" drafts) | Favicon decision resolved 2026-08-23 |
| **Thrive Creative Exchange** | ✅ svg + png, 1-color/2-color/full-color, light/dark bg (`tce-logo-*`) | ✅ final (`tce-favicon-lightbg.svg` / `-darkbg.svg`, TCE monogram) | Confirmed 2026-08-16 the old "TC" draft belongs to Capital MX, not this brand — TCE monogram avoids the collision going forward |

Favicons are locked as of 2026-08-23 — no further changes planned. (16/32/180/512/.ico export
from the source marks above is still a manual step outside this repo, done at deploy time.)

## Fonts
`00-shared/fonts/` holds the real Google Fonts OFL packages for **Gabarito** (display) and
**Manrope** (body) — variable fonts + static weights, `OFL.txt` + `README.txt` included. Bundled
into every per-company download and available standalone as `thrive-fonts.zip`.

## Immediate action items
1. Export the missing full-color SVG for Capital MX (only the PNG exists so far).
2. Turn every company's favicon source marks into proper 16/32/180/512/.ico sets — Property MX,
   Assets MX, Capital MX, Hospitality MX, and Creative Exchange all still need this.
3. Fill in `00-shared/color-system.md` with confirmed HEX/RGB/CMYK/Pantone values.
