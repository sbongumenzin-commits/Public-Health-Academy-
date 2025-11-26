#!/bin/bash
# Quick deployment script for Public Health Academy website

echo "================================================"
echo "Public Health Academy - Deployment Script"
echo "================================================"
echo ""

# Check if gh is installed
if ! command -v gh &> /dev/null; then
    echo "⚠️  GitHub CLI (gh) is not installed."
    echo ""
    echo "Install it now? This will install Homebrew first if needed."
    echo "Press Ctrl+C to cancel, or Enter to continue..."
    read
    
    # Install Homebrew if not present
    if ! command -v brew &> /dev/null; then
        echo "📦 Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
    
    echo "📦 Installing GitHub CLI..."
    brew install gh
fi

echo "✅ GitHub CLI is installed"
echo ""

# Check if authenticated
if ! gh auth status &> /dev/null; then
    echo "🔐 Please authenticate with GitHub..."
    gh auth login
fi

echo "✅ Authenticated with GitHub"
echo ""

# Create and push repo
echo "🚀 Creating GitHub repository and pushing code..."
gh repo create Public-Health-Academy-Full --public --source=. --remote=origin --push || {
    echo "⚠️  Repository might already exist. Trying to push..."
    git push -u origin main
}

echo ""
echo "✅ Code pushed to GitHub!"
echo ""

# Enable GitHub Pages
echo "🌐 Enabling GitHub Pages..."
gh repo edit --enable-pages --pages-branch main --pages-build-type workflow || {
    echo "⚠️  Please enable GitHub Pages manually:"
    echo "   1. Go to your repo Settings → Pages"
    echo "   2. Select branch 'main' and folder '/ (root)'"
    echo "   3. Click Save"
}

echo ""
echo "================================================"
echo "✅ Deployment Complete!"
echo "================================================"
echo ""
echo "Your website will be live at:"
gh repo view --web --json url -q .url | sed 's/github.com/github.io/' | sed 's/$/\/Public-Health-Academy-Full/'
echo ""
echo "📝 Next steps for Google visibility:"
echo "   1. Submit to Google Search Console"
echo "   2. Share your URL on social media"
echo "   3. See DEPLOYMENT.md for detailed instructions"
echo ""
