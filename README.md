# publichealthacademy (GitHub Pages placeholder)

This repository contains a minimal GitHub Pages site to serve a `robots.txt` at the site root.

To publish:

1. Create a repository on GitHub named `sbongumenzin-commits` under the `sbongumenzin` account (or your account).
2. On your machine, add the remote and push:

```bash
cd ~/publichealthacademy
git remote add origin https://github.com/<youruser>/sbongumenzin-commits.git
git push -u origin main
```

After push, GitHub Pages will publish the site at `https://sbongumenzin-commits.github.io/` and the DNS CNAME `publichealthacademy.it.com` should resolve to it.
