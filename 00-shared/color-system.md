# Color System — fill in from the real master file

Pull these values with Affinity's color picker on `logo.afdesign` (not from any archived
exploration file — those aren't confirmed final). One eyedropper click per swatch, ~5 min.

## Brand colors
| Role | HEX | RGB | CMYK | Pantone | Notes |
|---|---|---|---|---|---|
| Primary | | | | | |
| Secondary / accent | | | | | Specify CMYK deliberately if this is a bright/saturated color — bright colors shift badly from RGB→CMYK conversion, don't trust an auto-convert for print/signage. |

## Neutral ramp (5–6 greys off your darkest neutral)
| Step | HEX | Use |
|---|---|---|
| 900 (darkest) | | body text on light bg |
| 700 | | |
| 500 | | secondary text, borders |
| 300 | | dividers |
| 100 | | subtle backgrounds |
| 0 (white) | #FFFFFF | |

## Semantic colors
| Role | HEX | Notes |
|---|---|---|
| Success | | |
| Warning | | |
| Error | | |

## Approved text-on-background pairs
List every combination you'll actually use, with its contrast ratio (WCAG AA body text needs
4.5:1; large text/UI needs 3:1). Check at https://webaim.org/resources/contrastchecker/.

| Text | Background | Ratio | AA body? | Verdict |
|---|---|---|---|---|
| | | | | e.g. "accent-only, never body copy" |

## Pantone / CMYK sign-off
Before this goes to a printer, signage vendor, or apparel supplier, get the accent color's
Pantone match confirmed against a physical swatch book (screen previews of Pantone are not
reliable) — this is the one color most likely to shift.
