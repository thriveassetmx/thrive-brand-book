# Logo / Brand Master Changelog

Version lives here, not in filenames. One entry per revision to `logo.afdesign` or any
approved brand asset.

## Unreleased
- Move `logo.afdesign` here from `Logos/New/` (or keep it there and treat that as canonical —
  pick one location, note it below).
- First export of the full lockup family under the new naming system.

## 2026-08-16 — Multi-brand reorganization
- Restructured `brand/` from a single-company scaffold into `00-shared/` (naming system,
  changelog, font record, color system, master `.afdesign`) + `companies/<slug>/` per THRIVE
  company (property-mx, assets-mx, creative-exchange, hospitality-mx, capital-mx).
- Moved the confirmed Property MX logo set into `companies/property-mx/logo/`.
- Sorted the 6 unlabeled favicon drafts from the old `Favicons/` folder by monogram: `TA` →
  assets-mx, `TC` → capital-mx, `Th 1–4` → hospitality-mx (4 unresolved variants, none picked as
  final). See `ASSET-INVENTORY.md` for full gap list.
- Added `site/` — a local HTML/CSS brand book viewer covering shared colors/type + per-company
  logo & favicon status.

## 2026-08-16 — "TC" confirmed as Capital MX
- Moved `thrive-creative-exchange-favicon.svg` → `companies/capital-mx/favicon/thrive-capital-mx-favicon.svg`.
  Confirmed by Tetiana that the "TC" monogram is Thrive Capital MX, not Creative Exchange.
  Creative Exchange now has zero assets on disk.
- Documented the monogram convention in `NAMING-SYSTEM.md`: Creative Exchange's own favicon
  should use **"TCE"**, reserving "TC" for Capital MX going forward.

## 2026-08-16 — Property MX favicon mark added
- Added `companies/property-mx/favicon/thrive-property-mx-favicon.svg` (T+P monogram), renamed
  from the incoming `favicon-TP.svg`. Source mark only — still needs the 16/32/180/512/.ico
  export pass before it's usable as a real favicon.

<!--
## v1.0 — 2026-08-13
- Initial approved logo: THRIVE PROPERTY MX, full-color horizontal lockup.
- Colors: [fill in from 02-Color-Typography/color-system.md]
- Exported: primary/stacked/icon × full-color/black/white, favicon set.
-->
