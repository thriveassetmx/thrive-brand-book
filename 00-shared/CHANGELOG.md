# Logo / Brand Master Changelog

Version lives here, not in filenames. One entry per revision to `logo.afdesign` or any
approved brand asset.

## Unreleased
- Move `logo.afdesign` here from `Logos/New/` (or keep it there and treat that as canonical —
  pick one location, note it below).
- First export of the full lockup family under the new naming system.
- Re-export Creative Exchange's favicon with the new **TCX** monogram (was TCE).

## 2026-08-23 — Creative Exchange monogram changed from TCE to TCX
- Decided the Creative Exchange favicon monogram will be **TCX**, not TCE. Removed the stale
  "uses the TCE monogram" naming note from `site/index.html` and updated `NAMING-SYSTEM.md`,
  `ASSET-INVENTORY.md`, and the company `README.md` to flag that the current favicon files still
  carry the old TCE monogram and need re-exporting.

## 2026-08-23 — Fixed swapped light/dark bg on Creative Exchange's 2-color logo; favicons locked
- Creative Exchange's `tce-logo-2-color-lightbg`/`-darkbg` (svg + png) had their content swapped:
  the file named `-lightbg` carried a white subtext (invisible on light bg) and `-darkbg` carried
  the default-black subtext (invisible on dark bg) — the opposite of every other company. Swapped
  the file contents back so each name matches what it actually renders correctly on. Checked all
  other companies' 2-color pairs — only Creative Exchange had the mistake.
- Declared favicons final across all five companies — removed the "still needs 16/32/180/512/.ico
  export" flags and "draft" labels from `site/index.html` and `ASSET-INVENTORY.md`. No further
  favicon changes planned.

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

## 2026-08-18 — Repo moved to thriveassetmx; fonts added to downloads
- Moved the GitHub repo from `coderMx777/thrive-brand-book` to `thriveassetmx/thrive-brand-book`
  (correct company-owned account). Live site is now
  https://thriveassetmx.github.io/thrive-brand-book/
- Added real font files under `00-shared/fonts/` (Gabarito + Manrope, variable + static weights,
  official Google Fonts OFL package).
- `build-downloads.sh` now also produces `thrive-fonts.zip` (fonts only) and bundles the fonts
  into every per-company zip, so one download is enough to start designing.
- Noticed `00-shared/branding.afdesign` alongside the existing `00-shared/logo.afdesign` (same
  size ballpark, different timestamp) — not touched or resolved, **needs a decision on which is
  canonical** per `NAMING-SYSTEM.md`'s no-duplicate rule.

## 2026-08-23 — Property MX renamed off "thrive-" prefix; Assets MX + Capital MX lockups added
- Renamed all Property MX logo/favicon files from `thrive-logo-primary-*` /
  `thrive-property-mx-favicon.svg` to `propertymx-logo-*` / `propertymx-favicon.svg` (dropped both
  the "thrive-" prefix and the redundant "primary" lockup word).
- Embedded Title/Description/Author metadata ("Thrive Property MX") into the PNG text chunks and
  SVG `<title>`/`<desc>` tags.
- Added the full Assets MX logo lockup (`assetmx-logo-*`, 1-color/2-color/full-color ×
  light/dark bg, svg + png) under `companies/assets-mx/logo/svg/` and `logo/png/`; renamed the
  favicon from `thrive-assets-mx-favicon.svg` to `assetmx-favicon.svg`.
- Added the Capital MX logo lockup (`capitalmx-logo-*`, 1-color/2-color/full-color ×
  light/dark bg — full-color SVG still missing, PNG only) under `companies/capital-mx/logo/svg/`
  and `logo/png/`; renamed the favicon from `thrive-capital-mx-favicon.svg` to
  `capitalmx-favicon.svg`.
- Same metadata pass applied to the new Assets MX and Capital MX files.
- Updated `ASSET-INVENTORY.md`, `site/index.html`, and each company's `README.md` to match.
- Hospitality MX: resolved the 4 unlabeled favicon drafts to one final pick, renamed
  `thrive-hospitality-mx-favicon-variant-{1..4}.svg` down to `hospitalitymx-favicon.svg`; added
  its full logo lockup (`hospitalitymx-logo-*`, svg + png, 1-color/2-color/full-color x
  light/dark bg). Same metadata pass applied.
- Creative Exchange: added its full logo lockup (`tce-logo-*`, svg + png,
  1-color/2-color/full-color x light/dark bg) and favicon (`tce-favicon-lightbg.svg` /
  `-darkbg.svg`, TCE monogram); fixed a `darktbg` typo in the incoming full-color filenames to
  `darkbg`. Same metadata pass applied.

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
