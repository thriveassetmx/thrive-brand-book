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
    property-mx/      ← logo/ (svg + png, full-color + black/white) — favicon/ empty
    assets-mx/        ← favicon/ (1 draft, TA) — logo/ empty
    creative-exchange/← favicon/ (1 draft, TC) — logo/ empty
    hospitality-mx/   ← favicon/ (4 unresolved variants) — logo/ empty
    capital-mx/       ← nothing yet
  site/               ← local HTML/CSS brand book viewer
```

## Status per company

| Company | Full logo lockup | Favicon | Notes |
|---|---|---|---|
| **Thrive Property MX** | ✅ svg + png, full-color/black/white, light/dark bg | 🟡 source mark added (`thrive-property-mx-favicon.svg`), still needs 16/32/180/512/.ico export | Most complete brand — treat as the reference for the shared wordmark/colors |
| **Thrive Assets MX** | ⬜ missing | 🟡 1 draft (`thrive-assets-mx-favicon.svg`, from old file "TA") | Parent/portfolio brand — needs its own full lockup exported from Affinity |
| **Thrive Creative Exchange** | ⬜ missing | ⬜ missing | No assets found — the "TC" file was confirmed to be Capital MX, not this brand. Its own favicon should use monogram **"TCE"**, not "TC", to avoid colliding with Capital MX going forward |
| **Thrive Hospitality MX** | ⬜ missing | 🟡 4 unresolved draft variants (`variant-1..4`, from old files "Th 1–4") | These read "TH" + "MX" — no single one has been picked as final; need a decision |
| **Thrive Capital MX** | ⬜ missing | 🟡 1 draft (`thrive-capital-mx-favicon.svg`, from old file "TC") | Confirmed 2026-08-16: "TC" = Capital MX, not Creative Exchange |

## Immediate action items
1. Pick one of the 4 Hospitality MX favicon variants as final (or export a new one from Affinity).
2. Export full logo lockups (primary/stacked/icon × full-color/black/white) for Assets MX,
   Creative Exchange, Hospitality MX, and Capital MX — same process as Property MX, see
   `00-shared/EXPORT-FROM-AFFINITY.md`.
3. Turn Property MX's `favicon/thrive-property-mx-favicon.svg` source mark into a proper
   16/32/180/512/.ico set.
4. Fill in `00-shared/color-system.md` with confirmed HEX/RGB/CMYK/Pantone values.
