# Deployment Guide - Public Health Academy Website

## Quick Summary
Your website has been updated with:
- ✅ Chief Education Officer section with circular photo
- ✅ Optimized Public Health Academy logo in header
- ✅ Responsive layout (mobile-friendly)
- ✅ Local git repository initialized with 2 commits

## Next Steps to Publish Online

### Step 1: Install GitHub CLI (gh)

Open Terminal and run these commands:

```bash
# Install Homebrew (if not installed)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install GitHub CLI
brew install gh
```

### Step 2: Authenticate with GitHub

```bash
# Login to GitHub
gh auth login
```

Follow the prompts:
- Choose: **GitHub.com**
- Choose: **HTTPS**
- Authenticate via: **Login with a web browser** (recommended)
- Copy the code shown and paste it in the browser

### Step 3: Create GitHub Repository and Push

```bash
# Navigate to your project folder
cd ~/Desktop/Public-Health-Academy-Full

# Create public GitHub repo and push
gh repo create Public-Health-Academy-Full --public --source=. --remote=origin --push
```

### Step 4: Enable GitHub Pages (Free Hosting)

After pushing, enable GitHub Pages to make your site visible on Google:

**Option A - Via Command Line:**
```bash
gh repo edit --enable-pages --pages-branch main
```

**Option B - Via GitHub Website:**
1. Go to https://github.com/YOUR-USERNAME/Public-Health-Academy-Full
2. Click **Settings** → **Pages** (left sidebar)
3. Under "Source", select branch: **main** and folder: **/ (root)**
4. Click **Save**
5. Your site will be live at: `https://YOUR-USERNAME.github.io/Public-Health-Academy-Full/`

### Step 5: Make Your Site Appear on Google

#### Immediate Actions:
1. **Submit to Google Search Console:**
   - Go to https://search.google.com/search-console
   - Add your GitHub Pages URL
   - Request indexing for your homepage

2. **Add a sitemap** (I'll create this for you below)

3. **Share your site URL** on social media, LinkedIn, etc. to get initial backlinks

#### Custom Domain (Optional)
To use `publichealthacademy.it.com` or another custom domain:
1. Purchase domain from a registrar (Namecheap, GoDaddy, etc.)
2. In your domain's DNS settings, add these records:
   ```
   Type: CNAME
   Name: www
   Value: YOUR-USERNAME.github.io
   
   Type: A (4 records)
   Name: @
   Values:
   185.199.108.153
   185.199.109.153
   185.199.110.153
   185.199.111.153
   ```
3. In GitHub repo Settings → Pages, add your custom domain

---

## Alternative: Deploy to a Web Hosting Service

If you prefer traditional hosting instead of GitHub Pages:

### Option 1: Netlify (Free, Automatic SSL)
1. Create account at https://netlify.com
2. Drag and drop your project folder to Netlify
3. Your site goes live instantly with HTTPS

### Option 2: Upload to Your Existing Host
If you have web hosting (cPanel, etc.):
1. Upload these files via FTP:
   - `index.html`
   - `styles.css`
   - `images/` folder (all images)
2. Access via your domain

---

## Files Summary

### Created/Modified Files:
- `index.html` - Main website page with CEO section
- `styles.css` - Responsive styling
- `images/logo-optimized.png` - Optimized header logo (31KB)
- `images/ceo-square.jpg` - Square CEO photo (43KB)
- `images/logo.png` - Original logo (629KB, can delete)
- `images/ceo.jpg` - Original CEO photo (170KB, can delete)

### Git Status:
- Repository initialized: ✅
- Commits made: 2
- Ready to push: ✅

---

## SEO Tips for Google Visibility

1. **Add meta tags** to `index.html` (I can add these if you want)
2. **Get backlinks** - Share on LinkedIn, Facebook, health forums
3. **Regular updates** - Google favors fresh content
4. **Mobile-friendly** - Already done ✅
5. **Fast loading** - Already optimized ✅

---

## Need Help?

Run these commands to check your setup:
```bash
# Check git status
git status
git log --oneline

# Check if gh is installed
gh --version

# Check current directory
pwd
ls -la
```

Contact me if you need assistance with any step!
