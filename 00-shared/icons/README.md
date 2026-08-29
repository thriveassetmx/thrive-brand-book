# Shared contact icons

Small filled glyphs on a Thrive Orange (`#FD4100`) disc, white knockout. Built for
email signatures, where inline SVG and icon fonts are not rendered by most clients.

| File | Size | Use |
|---|---|---|
| `icon-phone-orange.png` | 72×72 | phone / tel line |
| `icon-globe-orange.png` | 72×72 | web / email line |

PNG with transparent corners, exported at 72px so they stay crisp when displayed at
28–36px on a 2× screen. Reference them by absolute URL — email clients cannot resolve
relative paths:

```
https://thriveassetmx.github.io/thrive-brand-book/00-shared/icons/icon-phone-orange.png
https://thriveassetmx.github.io/thrive-brand-book/00-shared/icons/icon-globe-orange.png
```

Always set `width` and `height` as HTML attributes as well as in the inline style —
Outlook ignores CSS-only sizing.

PNG is deliberate. Do not swap these for SVG in an email signature: Outlook, Gmail and
most mobile clients drop SVG entirely and leave a broken-image box.
