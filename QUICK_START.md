# 🚀 Quick Start Guide

Get your portfolio live in 5 minutes!

## Option 1: GitHub Pages (Free & Easy)

### Step 1: Create GitHub Account
- Go to [github.com](https://github.com) and sign up (if you don't have an account)

### Step 2: Deploy Using the Script

```bash
# Make the deploy script executable
chmod +x /Users/skumar90/Documents/sk-py-lab/portfolio/deploy.sh

# Run the deployment script
cd /Users/skumar90/Documents/sk-py-lab/portfolio
./deploy.sh "Initial portfolio deployment"
```

The script will:
1. Initialize Git (if needed)
2. Ask for your GitHub username
3. Add all files
4. Commit and push to GitHub
5. Give you your live URL

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under "Source":
   - Branch: `main`
   - Folder: `/ (root)`
4. Click **Save**

**Your portfolio will be live at:** `https://YOUR_USERNAME.github.io/portfolio/`

---

## Option 2: Manual GitHub Deployment

```bash
cd /Users/skumar90/Documents/sk-py-lab/portfolio

# Initialize Git
git init

# Add files
git add .

# Commit
git commit -m "Initial portfolio deployment"

# Create repository on GitHub (via web browser), then:
# Replace YOUR_USERNAME with your GitHub username
git remote add origin https://github.com/YOUR_USERNAME/portfolio.git

# Push to GitHub
git branch -M main
git push -u origin main
```

Then follow Step 3 above to enable GitHub Pages.

---

## Option 3: Netlify (Fastest)

1. Go to [netlify.com](https://netlify.com)
2. Sign up with GitHub
3. Click "Add new site" → "Import an existing project"
4. Connect to your GitHub repository
5. Click "Deploy site"

**Done!** Your site is live instantly with a custom URL.

---

## 📝 After Deployment

### Update Your Resume
The portfolio includes a download link for your resume. Make sure the PDF is up to date:

```bash
# Regenerate PDFs with latest content
cd /Users/skumar90/Documents/sk-py-lab/portfolio
./convert_to_pdf.sh
```

### Share Your Portfolio

Add your portfolio URL to:
- ✅ LinkedIn profile (Featured section or Contact info)
- ✅ Email signature
- ✅ Resume (add URL at the top)
- ✅ GitHub profile README

### Track Visitors (Optional)

Add Google Analytics:
1. Create account at [analytics.google.com](https://analytics.google.com)
2. Get your tracking ID
3. Add this before `</head>` in index.html:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=YOUR-GA-ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'YOUR-GA-ID');
</script>
```

---

## 🔄 Updating Your Portfolio

Whenever you make changes:

```bash
cd /Users/skumar90/Documents/sk-py-lab/portfolio

# Edit your files (index.html, resume, etc.)

# Deploy updates
./deploy.sh "Update: Added new project"
```

Changes go live in 1-2 minutes!

---

## 🎨 Customization Ideas

### Change Colors
Edit the CSS variables in `index.html`:

```css
:root {
    --primary-color: #2563eb;  /* Main blue color */
    --secondary-color: #1e40af; /* Darker blue */
    --accent-color: #3b82f6;   /* Light blue */
}
```

### Add New Sections
- Blog posts
- Testimonials
- Case studies
- Video introductions

### Enhance Features
- Contact form integration
- Dark mode toggle
- More animations
- Interactive charts

---

## 📞 Need Help?

Check these resources:
- [DEPLOYMENT_GUIDE.md](DEPLOYMENT_GUIDE.md) - Detailed deployment instructions
- [GitHub Pages Docs](https://pages.github.com)
- [Netlify Docs](https://docs.netlify.com)

---

## ✅ Checklist Before Going Live

- [ ] Updated resume PDF with latest information
- [ ] All links work (LinkedIn, email, download resume)
- [ ] Tested on mobile device
- [ ] Spell-checked all content
- [ ] Updated meta tags with your info
- [ ] Added Google Analytics (optional)
- [ ] Tested in different browsers

**You're ready to go live! 🎉**
