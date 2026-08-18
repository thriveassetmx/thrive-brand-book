# THRIVE Brand Book

The digital brand book for all THRIVE companies — shared colors/typography plus logo and
favicon status for Property MX, Assets MX, Creative Exchange, Hospitality MX, and Capital MX.

**Live site:** published via GitHub Pages from this repo (see the repo's "About" section /
Pages settings for the exact URL).

## Structure

```
00-shared/       naming system, changelog, font record, color system, master .afdesign, fonts/
companies/       one folder per THRIVE company — logo/ and favicon/ subfolders
site/            the brand book itself (index.html + styles.css)
build-downloads.sh   regenerates downloads/*.zip from whatever's in companies/ + 00-shared/
.github/workflows/deploy.yml   rebuilds the zips and redeploys the site on every push to main
ASSET-INVENTORY.md   what's confirmed vs. draft vs. missing, per company
```

## Downloads

`build-downloads.sh` produces, into `downloads/` (gitignored, rebuilt fresh by CI on every push):

- `thrive-fonts.zip` — Gabarito + Manrope only (variable + static weights, OFL-licensed)
- `thrive-<slug>-assets.zip` — one per company with any assets, **each bundled with the fonts**
  so a single download is enough to design with
- `thrive-brand-kit-complete.zip` — everything (all companies + `00-shared/`)

Add more font families under `00-shared/fonts/<family>/` and they're picked up automatically —
no script changes needed.

## Adding new assets (logos, favicons, SMM graphics, brand kits)

1. Drop files into the right `companies/<slug>/` folder (create new subfolders freely — e.g.
   `companies/property-mx/social/` for SMM graphics).
2. If it's a new company, add a new `companies/<slug>/` folder and a matching card in
   `site/index.html` (copy an existing company card as a template).
3. Commit and push to `main`. The GitHub Actions workflow automatically re-runs
   `build-downloads.sh` and redeploys — the download buttons on the live site always reflect
   what's actually in the repo, no manual zip step needed.

To preview the zip output locally before pushing: `./build-downloads.sh` (writes to
`downloads/`, which is gitignored — it's rebuilt by CI, not committed).

## Local preview

Open `site/index.html` directly in a browser, or `index.html` at the repo root (it just
redirects to `site/index.html`).
