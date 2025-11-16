# GitHub Pages Setup Instructions

## 🌐 Documentation URL
Your CurlDotNet documentation will be available at:
**https://jacob-mellor.github.io/curl-dot-net/**

## 🚀 Quick Setup

### Step 1: Enable GitHub Pages
1. Go to your repository settings: https://github.com/jacob-mellor/curl-dot-net/settings/pages
2. Under "Build and deployment", select **Source: GitHub Actions**
3. Save the settings

### Step 2: Deploy Documentation
The documentation will automatically deploy when you:
```bash
git add .
git commit -m "Add comprehensive DocFX documentation"
git push origin dotnetcurl
```

### Step 3: Trigger Manual Deployment (Optional)
You can manually trigger the deployment:
1. Go to Actions tab: https://github.com/jacob-mellor/curl-dot-net/actions
2. Select "Deploy DocFX to GitHub Pages" workflow
3. Click "Run workflow"
4. Select your branch and click "Run workflow"

## 📚 Documentation Links

Once deployed, your documentation will be available at:

- **Home Page**: https://jacob-mellor.github.io/curl-dot-net/
- **Getting Started**: https://jacob-mellor.github.io/curl-dot-net/articles/getting-started.html
- **Installation Guide**: https://jacob-mellor.github.io/curl-dot-net/articles/installation.html
- **API Reference**: https://jacob-mellor.github.io/curl-dot-net/api/
- **Examples**: https://jacob-mellor.github.io/curl-dot-net/articles/examples.html

## 🔧 Local Testing

To test the documentation locally:

```bash
# Build documentation
./build/deploy-docs.sh

# Or manually:
cd docfx
docfx build
docfx serve _site -p 8080
```

Then open http://localhost:8080 in your browser.

## 📝 Adding More Documentation

To add more documentation articles:

1. Create markdown files in `docfx/articles/`
2. Update `docfx/toc.yml` to include new articles
3. Build and test locally
4. Commit and push to trigger deployment

## 🔄 Automatic Updates

The documentation automatically updates when:
- You push changes to `docfx/**` files
- You update source code in `src/**` (API docs regenerate)
- You modify the workflow file `.github/workflows/deploy-docs.yml`

## 🎯 Status Check

After deployment, check:
1. **GitHub Actions**: https://github.com/jacob-mellor/curl-dot-net/actions
2. **Pages Deployment**: https://github.com/jacob-mellor/curl-dot-net/deployments
3. **Live Site**: https://jacob-mellor.github.io/curl-dot-net/

## ⚠️ Troubleshooting

If documentation doesn't appear:
1. Ensure GitHub Pages is enabled with "GitHub Actions" as source
2. Check Actions tab for build errors
3. Wait 5-10 minutes for initial deployment
4. Clear browser cache and refresh

## 📦 NuGet Package Documentation Link

The NuGet package README already links to the documentation.
Users will see the documentation link when they visit:
https://www.nuget.org/packages/CurlDotNet/