#!/bin/bash

# Portfolio Deployment Script for GitHub Pages
# Usage: ./deploy.sh "Your commit message"

echo "======================================"
echo "Portfolio Deployment to GitHub Pages"
echo "======================================"
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "⚠️  Git repository not initialized!"
    echo ""
    read -p "Would you like to initialize Git now? (y/n): " -n 1 -r
    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        git init
        echo "✅ Git initialized"
    else
        echo "❌ Deployment cancelled. Please initialize Git first."
        exit 1
    fi
fi

# Check if remote is set
if ! git remote | grep -q 'origin'; then
    echo "⚠️  No remote repository configured!"
    echo ""
    read -p "Enter your GitHub username: " github_username
    read -p "Enter your repository name (default: portfolio): " repo_name
    repo_name=${repo_name:-portfolio}

    git remote add origin "https://github.com/$github_username/$repo_name.git"
    echo "✅ Remote added: https://github.com/$github_username/$repo_name.git"
fi

# Get commit message
if [ -z "$1" ]; then
    read -p "Enter commit message (default: Update portfolio): " commit_msg
    commit_msg=${commit_msg:-"Update portfolio"}
else
    commit_msg="$1"
fi

echo ""
echo "📝 Preparing deployment..."

# Add all files
git add .

# Show status
echo ""
echo "📋 Files to be committed:"
git status --short

echo ""
read -p "Continue with deployment? (y/n): " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Deployment cancelled."
    exit 1
fi

# Commit changes
git commit -m "$commit_msg"

if [ $? -ne 0 ]; then
    echo "⚠️  No changes to commit or commit failed."
    echo ""
    read -p "Push anyway? (y/n): " -n 1 -r
    echo ""
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "❌ Deployment cancelled."
        exit 1
    fi
fi

# Check if main branch exists, if not create it
current_branch=$(git branch --show-current)
if [ -z "$current_branch" ]; then
    git branch -M main
    echo "✅ Created main branch"
fi

# Push to GitHub
echo ""
echo "🚀 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "======================================"
    echo "✨ Deployment Successful!"
    echo "======================================"
    echo ""
    echo "Your portfolio will be live in 1-2 minutes at:"

    # Try to get the remote URL
    remote_url=$(git config --get remote.origin.url)
    if [[ $remote_url =~ github\.com[:/]([^/]+)/([^/]+)(\.git)?$ ]]; then
        username="${BASH_REMATCH[1]}"
        repo="${BASH_REMATCH[2]}"
        repo="${repo%.git}"
        echo "🌐 https://$username.github.io/$repo/"
    else
        echo "🌐 https://YOUR_USERNAME.github.io/YOUR_REPO/"
    fi
    echo ""
    echo "Next steps:"
    echo "1. Go to your GitHub repository"
    echo "2. Click Settings → Pages"
    echo "3. Under 'Source', select branch 'main' and folder '/ (root)'"
    echo "4. Click Save"
    echo ""
    echo "📝 See DEPLOYMENT_GUIDE.md for more details"
else
    echo ""
    echo "======================================"
    echo "❌ Deployment Failed"
    echo "======================================"
    echo ""
    echo "Common issues:"
    echo "1. Check your GitHub credentials"
    echo "2. Ensure the repository exists on GitHub"
    echo "3. Verify you have push access to the repository"
    echo ""
    echo "For help, see DEPLOYMENT_GUIDE.md"
    exit 1
fi
