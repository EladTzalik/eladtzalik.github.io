#!/bin/bash

# Script to deploy website to GitHub Pages
# Run this script from Terminal: bash deploy.sh

echo "=========================================="
echo "Deploying Elad Tzalik's Personal Website"
echo "=========================================="
echo ""

# Step 1: Clean up unnecessary files
echo "Step 1: Cleaning up unnecessary files..."
rm -f TODO.md FINAL_STATUS.md IMAGE_SETUP.md Image.png .DS_Store
echo "✓ Cleanup complete"
echo ""

# Step 2: Check git status
echo "Step 2: Checking git status..."
git status
echo ""

# Step 3: Add all files
echo "Step 3: Adding files to git..."
git add .
echo "✓ Files added"
echo ""

# Step 4: Commit
echo "Step 4: Creating commit..."
git commit -m "Initial commit: Personal academic website"
echo "✓ Commit created"
echo ""

# Step 5: Rename branch to main (if needed)
echo "Step 5: Ensuring branch is named 'main'..."
git branch -M main
echo "✓ Branch renamed to main"
echo ""

echo "=========================================="
echo "Local setup complete!"
echo "=========================================="
echo ""
echo "NEXT STEPS:"
echo "1. Create a GitHub repository at https://github.com/new"
echo "   - Name it: [your-username].github.io (e.g., eladtzalik.github.io)"
echo "   - Make it Public"
echo "   - Do NOT initialize with README"
echo ""
echo "2. After creating the repository, run these commands:"
echo ""
echo "   git remote add origin https://github.com/[your-username]/[your-username].github.io.git"
echo "   git push -u origin main"
echo ""
echo "3. Then enable GitHub Pages:"
echo "   - Go to repository Settings → Pages"
echo "   - Source: Deploy from a branch"
echo "   - Branch: main / (root)"
echo "   - Click Save"
echo ""
echo "4. Your site will be live at: https://[your-username].github.io"
echo ""
echo "=========================================="
