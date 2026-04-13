# GitHub Pages Deployment Guide

This guide will help you deploy your portfolio to GitHub Pages for free hosting.

## 🚀 Quick Deployment Steps

### Step 1: Create GitHub Repository

1. Go to [GitHub](https://github.com) and sign in (or create an account if you don't have one)
2. Click the "+" icon in the top right → "New repository"
3. Repository settings:
   - **Repository name:** `portfolio` (or any name you prefer)
   - **Description:** "Professional Portfolio - Analytics & AI Leader"
   - **Visibility:** Public
   - **DO NOT** initialize with README (we already have files)
4. Click "Create repository"

### Step 2: Initialize Git and Push to GitHub

Open your terminal and run these commands:

```bash
# Navigate to portfolio folder
cd /Users/skumar90/Documents/sk-py-lab/portfolio

# Initialize git repository
git init

# Add all files
git add .

# Create first commit
git commit -m "Initial commit: Professional portfolio website"

# Add your GitHub repository as remote (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/portfolio.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click "Settings" tab
3. Click "Pages" in the left sidebar
4. Under "Source":
   - Branch: Select `main`
   - Folder: Select `/ (root)`
5. Click "Save"
6. Wait 1-2 minutes for deployment

Your portfolio will be live at: `https://YOUR_USERNAME.github.io/portfolio/`

---

## 🌐 Custom Domain Setup (Optional)

If you want a custom domain like `sumankumar.dev`:

### Step 1: Buy a Domain
- Purchase from: Namecheap, GoDaddy, Google Domains, etc.
- Recommended: `.dev`, `.io`, or `.com`

### Step 2: Configure DNS Settings

In your domain registrar's DNS settings, add these records:

```
Type: A
Host: @
Value: 185.199.108.153

Type: A
Host: @
Value: 185.199.109.153

Type: A
Host: @
Value: 185.199.110.153

Type: A
Host: @
Value: 185.199.111.153

Type: CNAME
Host: www
Value: YOUR_USERNAME.github.io
```

### Step 3: Configure GitHub Pages

1. In your repository Settings → Pages
2. Under "Custom domain", enter your domain (e.g., `sumankumar.dev`)
3. Check "Enforce HTTPS" (after DNS propagates, ~24 hours)

---

## 📝 Update Your Portfolio

Whenever you make changes:

```bash
cd /Users/skumar90/Documents/sk-py-lab/portfolio

# Add changed files
git add .

# Commit changes
git commit -m "Update portfolio content"

# Push to GitHub
git push origin main
```

GitHub Pages will automatically redeploy in 1-2 minutes.

---

## 🎨 Alternative Hosting Options

### Netlify (Recommended for ease of use)

1. Go to [Netlify](https://www.netlify.com)
2. Sign up with GitHub
3. Click "Add new site" → "Import an existing project"
4. Select your GitHub repository
5. Deploy settings:
   - Build command: (leave empty)
   - Publish directory: (leave empty or `/`)
6. Click "Deploy site"
7. Your site is live! You can customize the URL or add a custom domain

**Benefits:**
- Automatic HTTPS
- Faster deployment
- Better analytics
- Form handling (if you add a contact form later)

### Vercel

1. Go to [Vercel](https://vercel.com)
2. Sign up with GitHub
3. Click "Add New..." → "Project"
4. Import your GitHub repository
5. Click "Deploy"

**Benefits:**
- Extremely fast
- Automatic previews for changes
- Edge network for global speed

---

## 🔧 Troubleshooting

### Portfolio not showing after enabling GitHub Pages
- Wait 2-5 minutes for initial deployment
- Check that `index.html` is in the root directory
- Verify Settings → Pages shows a green success message

### Images or PDFs not loading
- Ensure all file paths in `index.html` are relative (no leading `/`)
- Check that PDF files are committed to the repository

### Changes not appearing
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)
- Wait 1-2 minutes after pushing changes
- Check GitHub Actions tab for deployment status

---

## 📊 Next Steps After Deployment

1. **Share your portfolio:**
   - Add the link to your LinkedIn profile
   - Include it in your email signature
   - Share it on professional networks

2. **Set up analytics:**
   - Add Google Analytics to track visitors
   - Monitor which sections get the most attention

3. **SEO optimization:**
   - Add meta tags for social media sharing
   - Submit to Google Search Console
   - Create a sitemap

4. **Regular updates:**
   - Add new projects as you complete them
   - Update awards and achievements
   - Keep technology skills current

---

## 📞 Need Help?

If you encounter any issues during deployment, common solutions:

1. **Git authentication issues:**
   ```bash
   # Use personal access token instead of password
   # Create token at: GitHub Settings → Developer settings → Personal access tokens
   ```

2. **Permission denied:**
   ```bash
   # Check your Git credentials
   git config --global user.name "Your Name"
   git config --global user.email "your.email@example.com"
   ```

3. **Merge conflicts:**
   ```bash
   # Pull latest changes first
   git pull origin main
   # Then push your changes
   git push origin main
   ```

Good luck with your deployment! 🚀
