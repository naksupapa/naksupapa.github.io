# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Jekyll-based static blog using the **Chirpy theme** (jekyll-theme-chirpy v4.3.4+), hosted on GitHub Pages at https://naksupapa.github.io. The blog language is Korean (`lang: ko`).

## Common Commands

### Setup
```bash
bundle                          # Install Ruby dependencies
npm install                     # Install Node.js dependencies (required for JS build)
```

### Development
```bash
bundle exec jekyll serve        # Start local dev server (http://localhost:4000)
npx gulp dev                    # Watch and rebuild JavaScript (development mode)
```

### Build
```bash
bundle exec jekyll b                              # Build site to _site/
JEKYLL_ENV=production bundle exec jekyll b        # Production build
npx gulp                                          # Build minified JavaScript
```

### Testing
```bash
bundle exec htmlproofer _site --disable-external --check-html --allow_hash_href
```

### Deployment
Deployment runs automatically via GitHub Actions on push to main branch. The `tools/deploy.sh` script is for CI use only (requires `GITHUB_ACTION` environment variable).

## Architecture

### Content Structure
- `_posts/` - Published blog posts (Markdown with YAML front matter)
- `_drafts/` - Draft posts (not published)
- `_tabs/` - Navigation pages (About, Archives, Categories, Tags)
- `_data/` - YAML data files and localization

### Template System
- `_layouts/` - Jekyll page layout templates
- `_includes/` - Reusable HTML/Liquid template snippets
- `_sass/` - SCSS stylesheets (customizable via `_sass/variables-hook.scss`)

### JavaScript Pipeline (Gulp)
- Source: `_javascript/commons/` and `_javascript/utils/`
- Output: `assets/js/dist/` (minified bundles)
- Config: `gulpfile.js/index.js` and `gulpfile.js/tasks/js.js`

### Key Configuration
- `_config.yml` - Main Jekyll configuration
- Post permalink format: `/posts/:title/`
- Dark theme mode enabled by default
- Auto-generated TOC for posts

### Custom Plugin
- `_plugins/posts-lastmod-hook.rb` - Automatically sets post `last_modified_at` from git history (only if post has >1 commit)

## Writing Posts

Posts go in `_posts/` with filename format: `YYYY-MM-DD-title.md`

### Front Matter Template
```yaml
---
title: Post Title
author: naksupapa
date: YYYY-MM-DD HH:MM:SS +0900
categories: [Category1, Category2]
tags: [tag1, tag2, tag3]
---
```

- `future: true` is enabled in `_config.yml`, so future-dated posts will be published
- Posts automatically get TOC and comments enabled via defaults in `_config.yml`
