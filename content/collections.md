---
title: "Collections Overview"
date: 2024-01-30
draft: false
description: "A comprehensive overview of all content collections on this site"
---

# Collections Overview

This page demonstrates how to programmatically display and analyze all collections in your Hugo site.

## Collection Statistics

Here you can see how Hugo's template functions can be used to create dynamic content displays based on your collections.

# Learning to use collections in Hugo

_Exported on 10/21/2025 at 00:00:40 EDT from Cursor (1.7.52)_

---

**User**

I'm working in this temporary hugo project to learn how to work with collections.  I'd like to learn how to add collections and display them programmaticaly using the Hugo framework.

can you please guide me through these lessons step by step?

---

**Cursor**

I'll help you learn about Hugo collections step by step! Let me first examine your current Hugo project structure to understand what we're working with, then guide you through creating and displaying collections.

Perfect! I can see you have a basic Hugo site. Now let me create a comprehensive lesson plan for learning Hugo collections and then guide you through it step by step.

# Hugo Collections Learning Journey

Welcome! I'll guide you through learning Hugo collections step by step. Let's start with the fundamentals.

## Lesson 1: Understanding Hugo Collections

**What are Hugo Collections?**

In Hugo, collections are groups of content that share a common type. By default, Hugo has these built-in collections:

- **Pages** (regular content)
- **Sections** (content organized in folders)
- **Taxonomies** (categories and tags)

But you can create **custom collections** to organize your content however you want!

**Key Concepts:**

- Collections are defined by content structure and front matter
- You can access collections programmatically using Hugo's template functions
- Collections allow you to group and display related content together

Let me show you your current site structure and then we'll build collections step by step.

**Your Current Setup:**

- You have a basic Hugo site with `_index.md` and `first.md`
- Your `hugo.toml` disables taxonomies (`disableKinds = ['taxonomy', 'term']`)
- You have basic layouts in `layouts/_default/`

Ready to start creating collections? Let's begin with **Lesson 2: Creating a Blog Collection**!

## Lesson 2: Create a Blog Collection

Let's create a blog collection! In Hugo, collections are often organized by folder structure. We'll create a `blog` folder and add some sample blog posts.

Now let's create some sample blog posts with different front matter to demonstrate collection features:

```markdown
---
title: "Getting Started with Hugo"
date: 2024-01-15
draft: false
tags: ["hugo", "tutorial", "web-development"]
categories: ["tutorials"]
author: "John Doe"
description: "Learn the basics of Hugo static site generator"
featured: true
---

# Getting Started with Hugo

Hugo is a fast and flexible static site generator built with Go. In this post, we'll explore the fundamentals of Hugo and how to get started.

## What is Hugo?

Hugo is a static site generator that takes your content and templates and generates a complete website. It's known for its speed and flexibility.

## Key Features

- **Speed**: Hugo is incredibly fast
- **Flexibility**: Highly customizable
- **Content Management**: Markdown-based content
- **Templating**: Powerful templating system

## Getting Started

To get started with Hugo, you need to:

1. Install Hugo
2. Create a new site
3. Add content
4. Customize themes
5. Deploy your site

This is just the beginning of your Hugo journey!
```

```markdown
---
title: "Advanced Hugo Techniques"
date: 2024-01-20
draft: false
tags: ["hugo", "advanced", "templates"]
categories: ["tutorials"]
author: "Jane Smith"
description: "Master advanced Hugo templating and customization"
featured: false
---

# Advanced Hugo Techniques

Once you've mastered the basics of Hugo, it's time to explore advanced techniques that will make your sites more powerful and flexible.

## Custom Collections

Hugo allows you to create custom collections by organizing your content in specific ways. This gives you powerful control over how content is grouped and displayed.

## Template Functions

Hugo provides a rich set of template functions that allow you to:

- Manipulate data
- Create complex layouts
- Filter and sort content
- Generate dynamic content

## Shortcodes

Shortcodes are Hugo's way of creating reusable content components. They allow you to embed complex HTML or functionality into your markdown content.

## Performance Optimization

Learn how to optimize your Hugo site for maximum performance and SEO.
```

```markdown
---
title: "Hugo vs Other Static Site Generators"
date: 2024-01-25
draft: false
tags: ["hugo", "comparison", "static-sites"]
categories: ["reviews"]
author: "Mike Johnson"
description: "Comparing Hugo with Jekyll, Gatsby, and other popular static site generators"
featured: true
---

# Hugo vs Other Static Site Generators

When choosing a static site generator, it's important to understand the differences between popular options.

## Hugo vs Jekyll

**Hugo Advantages:**
- Much faster build times
- No dependencies (single binary)
- More flexible templating

**Jekyll Advantages:**
- Larger community
- More themes available
- GitHub Pages integration

## Hugo vs Gatsby

**Hugo Advantages:**
- Simpler setup
- No JavaScript required
- Better for content-focused sites

**Gatsby Advantages:**
- React-based
- Rich plugin ecosystem
- Better for complex web applications

## Conclusion

Hugo excels at content-focused sites where speed and simplicity are priorities.
```

Great! Now let's create a layout specifically for the blog section. This will show how to display collections programmatically:

```html
{{ define "main" }}
<div class="blog-header">
  <h1>{{ .Title | default "Blog Posts" }}</h1>
  <p>Welcome to our blog! Here are all our posts:</p>
</div>

<div class="blog-stats">
  <p><strong>Total Posts:</strong> {{ len .Pages }}</p>
  <p><strong>Featured Posts:</strong> {{ len (where .Pages "Params.featured" true) }}</p>
</div>

<div class="blog-posts">
  {{ range .Pages }}
    <article class="blog-post">
      <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>
      <div class="post-meta">
        <span class="date">{{ .Date.Format "January 2, 2006" }}</span>
        <span class="author">by {{ .Params.author | default "Anonymous" }}</span>
        {{ if .Params.tags }}
          <span class="tags">
            {{ range .Params.tags }}
              <span class="tag">{{ . }}</span>
            {{ end }}
          </span>
        {{ end }}
      </div>
      <div class="post-excerpt">
        {{ .Summary }}
      </div>
      {{ if .Params.featured }}
        <span class="featured-badge">⭐ Featured</span>
      {{ end }}
    </article>
  {{ end }}
</div>

<style>
.blog-header {
  margin-bottom: 2rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid #eee;
}

.blog-stats {
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 5px;
  margin-bottom: 2rem;
}

.blog-posts {
  display: grid;
  gap: 2rem;
}

.blog-post {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1.5rem;
  background: white;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  position: relative;
}

.blog-post h2 {
  margin-top: 0;
  color: #333;
}

.blog-post h2 a {
  text-decoration: none;
  color: inherit;
}

.blog-post h2 a:hover {
  color: #007bff;
}

.post-meta {
  color: #666;
  font-size: 0.9rem;
  margin: 0.5rem 0;
}

.post-meta span {
  margin-right: 1rem;
}

.tags {
  display: inline-block;
}

.tag {
  background: #e9ecef;
  padding: 0.2rem 0.5rem;
  border-radius: 3px;
  font-size: 0.8rem;
  margin-right: 0.3rem;
}

.post-excerpt {
  margin: 1rem 0;
  line-height: 1.6;
}

.featured-badge {
  position: absolute;
  top: 1rem;
  right: 1rem;
  background: #ffc107;
  color: #333;
  padding: 0.3rem 0.6rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: bold;
}
</style>
{{ end }}
```

Now let's create a single post layout for individual blog posts:

```html
{{ define "main" }}
<article class="blog-post-single">
  <header class="post-header">
    <h1>{{ .Title }}</h1>
    <div class="post-meta">
      <span class="date">{{ .Date.Format "January 2, 2006" }}</span>
      <span class="author">by {{ .Params.author | default "Anonymous" }}</span>
      {{ if .Params.tags }}
        <div class="tags">
          {{ range .Params.tags }}
            <span class="tag">{{ . }}</span>
          {{ end }}
        </div>
      {{ end }}
      {{ if .Params.featured }}
        <span class="featured-badge">⭐ Featured Post</span>
      {{ end }}
    </div>
  </header>

  <div class="post-content">
    {{ .Content }}
  </div>

  <footer class="post-footer">
    <div class="post-navigation">
      {{ with .PrevInSection }}
        <a href="{{ .Permalink }}" class="nav-link prev">← {{ .Title }}</a>
      {{ end }}
      {{ with .NextInSection }}
        <a href="{{ .Permalink }}" class="nav-link next">{{ .Title }} →</a>
      {{ end }}
    </div>

    <div class="related-posts">
      <h3>Related Posts</h3>
      {{ $related := .Site.RegularPages.Related . | first 3 }}
      {{ with $related }}
        <ul>
          {{ range . }}
            <li><a href="{{ .Permalink }}">{{ .Title }}</a></li>
          {{ end }}
        </ul>
      {{ end }}
    </div>
  </footer>
</article>

<style>
.blog-post-single {
  max-width: 800px;
  margin: 0 auto;
  padding: 2rem;
}

.post-header {
  margin-bottom: 2rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid #eee;
}

.post-header h1 {
  color: #333;
  margin-bottom: 1rem;
}

.post-meta {
  color: #666;
  font-size: 0.9rem;
}

.post-meta span {
  margin-right: 1rem;
}

.tags {
  margin-top: 0.5rem;
}

.tag {
  background: #e9ecef;
  padding: 0.2rem 0.5rem;
  border-radius: 3px;
  font-size: 0.8rem;
  margin-right: 0.3rem;
}

.featured-badge {
  background: #ffc107;
  color: #333;
  padding: 0.3rem 0.6rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: bold;
  display: inline-block;
  margin-top: 0.5rem;
}

.post-content {
  line-height: 1.8;
  font-size: 1.1rem;
}

.post-content h1, .post-content h2, .post-content h3 {
  color: #333;
  margin-top: 2rem;
  margin-bottom: 1rem;
}

.post-content h1 {
  font-size: 2rem;
}

.post-content h2 {
  font-size: 1.5rem;
}

.post-content h3 {
  font-size: 1.3rem;
}

.post-footer {
  margin-top: 3rem;
  padding-top: 2rem;
  border-top: 1px solid #eee;
}

.post-navigation {
  display: flex;
  justify-content: space-between;
  margin-bottom: 2rem;
}

.nav-link {
  text-decoration: none;
  color: #007bff;
  padding: 0.5rem 1rem;
  border: 1px solid #007bff;
  border-radius: 5px;
  transition: all 0.3s;
}

.nav-link:hover {
  background: #007bff;
  color: white;
}

.related-posts h3 {
  color: #333;
  margin-bottom: 1rem;
}

.related-posts ul {
  list-style: none;
  padding: 0;
}

.related-posts li {
  margin-bottom: 0.5rem;
}

.related-posts a {
  color: #007bff;
  text-decoration: none;
}

.related-posts a:hover {
  text-decoration: underline;
}
</style>
{{ end }}
```

Perfect! Now let's test our blog collection by running Hugo:

## Lesson 2 Complete! 🎉

You've successfully created a blog collection! Here's what we accomplished:

**What we created:**

- ✅ A `content/blog/` folder with 3 sample blog posts
- ✅ Each post has rich front matter (title, date, tags, categories, author, etc.)
- ✅ A `layouts/blog/list.html` template that displays all blog posts programmatically
- ✅ A `layouts/blog/single.html` template for individual blog posts
- ✅ Styled templates with CSS for a professional look

**Key Hugo Collection Concepts Demonstrated:**

- **Content Organization**: Posts in `content/blog/` automatically become a "blog" section
- **Programmatic Display**: Using `{{ range .Pages }}` to loop through all posts
- **Front Matter Access**: Using `{{ .Params.tags }}`, `{{ .Params.author }}`, etc.
- **Conditional Logic**: `{{ if .Params.featured }}` for featured posts
- **Hugo Functions**: `{{ len .Pages }}`, `{{ where .Pages "Params.featured" true }}`

**Your Hugo server is running!** Visit `http://localhost:1313/blog/` to see your blog collection in action!

## Lesson 3: Create a Projects Collection

Now let's create a different type of collection - a projects portfolio! This will show you how to create multiple collections with different structures.

Let's create some sample projects with different front matter structure:

```markdown
---
title: "Hugo Learning Site"
date: 2024-01-10
draft: false
project_type: "web-development"
technologies: ["hugo", "markdown", "html", "css"]
status: "completed"
github_url: "https://github.com/example/hugo-learning"
demo_url: "https://hugo-learning.example.com"
featured: true
description: "A comprehensive Hugo tutorial site with collections and advanced features"
image: "/images/hugo-site-preview.jpg"
---

# Hugo Learning Site

This project demonstrates advanced Hugo features including custom collections, templating, and content organization.

## Project Overview

The Hugo Learning Site is a comprehensive tutorial platform that teaches users how to build static sites with Hugo. It includes multiple content types, custom layouts, and interactive examples.

## Key Features

- **Custom Collections**: Blog posts, tutorials, and projects
- **Advanced Templating**: Dynamic content display and filtering
- **Responsive Design**: Mobile-first approach
- **SEO Optimized**: Meta tags and structured data

## Technologies Used

- Hugo Static Site Generator
- Markdown for content
- HTML/CSS for styling
- JavaScript for interactivity

## Project Timeline

- **Planning**: 1 week
- **Development**: 3 weeks
- **Testing**: 1 week
- **Deployment**: 3 days

## Lessons Learned

This project taught me the power of Hugo's templating system and how to create flexible, maintainable static sites.
```

```markdown
---
title: "Portfolio Website"
date: 2024-01-05
draft: false
project_type: "web-development"
technologies: ["react", "nextjs", "typescript", "tailwind"]
status: "in-progress"
github_url: "https://github.com/example/portfolio"
demo_url: "https://portfolio.example.com"
featured: false
description: "A modern portfolio website built with Next.js and TypeScript"
image: "/images/portfolio-preview.jpg"
---

# Portfolio Website

A modern, responsive portfolio website showcasing my development skills and projects.

## Project Overview

This portfolio website serves as both a professional showcase and a learning project. It demonstrates modern web development practices and showcases various projects I've worked on.

## Key Features

- **Modern Design**: Clean, professional aesthetic
- **Responsive Layout**: Works on all device sizes
- **Interactive Elements**: Smooth animations and transitions
- **Performance Optimized**: Fast loading times and SEO

## Technologies Used

- Next.js 14
- TypeScript
- Tailwind CSS
- Framer Motion for animations
- Vercel for deployment

## Development Process

The project follows a component-driven development approach with reusable UI components and a well-structured codebase.

## Future Enhancements

- Blog integration
- Contact form with email integration
- Dark mode toggle
- Multi-language support
```

```markdown
---
title: "API Documentation Generator"
date: 2024-01-01
draft: false
project_type: "tooling"
technologies: ["python", "fastapi", "swagger", "docker"]
status: "completed"
github_url: "https://github.com/example/api-docs"
demo_url: "https://api-docs.example.com"
featured: true
description: "Automated API documentation generator with interactive examples"
image: "/images/api-docs-preview.jpg"
---

# API Documentation Generator

An automated tool for generating comprehensive API documentation from OpenAPI specifications.

## Project Overview

This tool automatically generates beautiful, interactive API documentation from OpenAPI/Swagger specifications. It includes code examples, interactive testing, and comprehensive guides.

## Key Features

- **Auto-Generation**: Creates docs from OpenAPI specs
- **Interactive Testing**: Built-in API testing interface
- **Code Examples**: Multiple language examples
- **Search Functionality**: Full-text search across documentation
- **Customizable Themes**: Multiple design options

## Technologies Used

- Python 3.9+
- FastAPI for the backend
- React for the frontend
- Docker for containerization
- Swagger/OpenAPI for specification

## Technical Implementation

The tool parses OpenAPI specifications and generates a static documentation site with interactive features. It supports multiple output formats and can be integrated into CI/CD pipelines.

## Impact

This tool has been adopted by multiple teams, reducing documentation time by 80% and improving API adoption rates.
```

Now let's create layouts for the projects collection:

```html
{{ define "main" }}
<div class="projects-header">
  <h1>{{ .Title | default "Projects Portfolio" }}</h1>
  <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
  <div class="stat-card">
    <h3>{{ len .Pages }}</h3>
    <p>Total Projects</p>
  </div>
  <div class="stat-card">
    <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
    <p>Completed</p>
  </div>
  <div class="stat-card">
    <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
    <p>Featured</p>
  </div>
  <div class="stat-card">
    <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
    <p>In Progress</p>
  </div>
</div>

<div class="projects-filters">
  <h3>Filter by Status:</h3>
  <div class="filter-buttons">
    <button class="filter-btn active" data-filter="all">All</button>
    <button class="filter-btn" data-filter="completed">Completed</button>
    <button class="filter-btn" data-filter="in-progress">In Progress</button>
    <button class="filter-btn" data-filter="featured">Featured</button>
  </div>
</div>

<div class="projects-grid">
  {{ range .Pages }}
    <div class="project-card"
         data-status="{{ .Params.status }}"
         data-featured="{{ .Params.featured }}">
      {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
      {{ end }}

      <div class="project-image">
        {{ if .Params.image }}
          <img src="{{ .Params.image }}" alt="{{ .Title }}" />
        {{ else }}
          <div class="placeholder-image">
            <span>{{ .Title | truncate 2 }}</span>
          </div>
        {{ end }}
      </div>

      <div class="project-content">
        <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

        <div class="project-meta">
          <span class="project-type">{{ .Params.project_type | title }}</span>
          <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
        </div>

        <p class="project-description">{{ .Params.description }}</p>

        <div class="project-technologies">
          {{ range .Params.technologies }}
            <span class="tech-tag">{{ . }}</span>
          {{ end }}
        </div>

        <div class="project-links">
          {{ if .Params.github_url }}
            <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
              GitHub
            </a>
          {{ end }}
          {{ if .Params.demo_url }}
            <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
              Live Demo
            </a>
          {{ end }}
        </div>
      </div>
    </div>
  {{ end }}
</div>

<style>
.projects-header {
  text-align: center;
  margin-bottom: 3rem;
  padding-bottom: 2rem;
  border-bottom: 2px solid #eee;
}

.projects-stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1rem;
  margin-bottom: 3rem;
}

.stat-card {
  background: #f8f9fa;
  padding: 1.5rem;
  border-radius: 8px;
  text-align: center;
  border: 1px solid #e9ecef;
}

.stat-card h3 {
  font-size: 2rem;
  margin: 0;
  color: #007bff;
}

.stat-card p {
  margin: 0.5rem 0 0 0;
  color: #666;
  font-size: 0.9rem;
}

.projects-filters {
  margin-bottom: 2rem;
}

.filter-buttons {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

.filter-btn {
  padding: 0.5rem 1rem;
  border: 1px solid #ddd;
  background: white;
  border-radius: 20px;
  cursor: pointer;
  transition: all 0.3s;
}

.filter-btn:hover,
.filter-btn.active {
  background: #007bff;
  color: white;
  border-color: #007bff;
}

.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
  gap: 2rem;
}

.project-card {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 4px 6px rgba(0,0,0,0.1);
  transition: transform 0.3s, box-shadow 0.3s;
  position: relative;
}

.project-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 25px rgba(0,0,0,0.15);
}

.featured-badge {
  position: absolute;
  top: 1rem;
  right: 1rem;
  background: #ffc107;
  color: #333;
  padding: 0.3rem 0.6rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: bold;
  z-index: 1;
}

.project-image {
  height: 200px;
  overflow: hidden;
  background: #f8f9fa;
}

.project-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.placeholder-image {
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  color: white;
  font-size: 2rem;
  font-weight: bold;
}

.project-content {
  padding: 1.5rem;
}

.project-content h2 {
  margin: 0 0 1rem 0;
  font-size: 1.3rem;
}

.project-content h2 a {
  color: #333;
  text-decoration: none;
}

.project-content h2 a:hover {
  color: #007bff;
}

.project-meta {
  display: flex;
  gap: 1rem;
  margin-bottom: 1rem;
  font-size: 0.9rem;
}

.project-type {
  color: #666;
}

.project-status {
  padding: 0.2rem 0.5rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
}

.status-completed {
  background: #d4edda;
  color: #155724;
}

.status-in-progress {
  background: #fff3cd;
  color: #856404;
}

.project-description {
  color: #666;
  line-height: 1.6;
  margin-bottom: 1rem;
}

.project-technologies {
  margin-bottom: 1rem;
}

.tech-tag {
  display: inline-block;
  background: #e9ecef;
  color: #495057;
  padding: 0.2rem 0.5rem;
  border-radius: 12px;
  font-size: 0.8rem;
  margin-right: 0.3rem;
  margin-bottom: 0.3rem;
}

.project-links {
  display: flex;
  gap: 0.5rem;
}

.project-link {
  padding: 0.5rem 1rem;
  border-radius: 5px;
  text-decoration: none;
  font-size: 0.9rem;
  font-weight: bold;
  transition: all 0.3s;
}

.project-link.github {
  background: #333;
  color: white;
}

.project-link.github:hover {
  background: #555;
}

.project-link.demo {
  background: #007bff;
  color: white;
}

.project-link.demo:hover {
  background: #0056b3;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const filterButtons = document.querySelectorAll('.filter-btn');
  const projectCards = document.querySelectorAll('.project-card');

  filterButtons.forEach(button => {
    button.addEventListener('click', function() {
      // Remove active class from all buttons
      filterButtons.forEach(btn => btn.classList.remove('active'));
      // Add active class to clicked button
      this.classList.add('active');

      const filter = this.getAttribute('data-filter');

      projectCards.forEach(card => {
        if (filter === 'all') {
          card.style.display = 'block';
        } else if (filter === 'featured') {
          if (card.getAttribute('data-featured') === 'true') {
            card.style.display = 'block';
          } else {
            card.style.display = 'none';
          }
        } else {
          if (card.getAttribute('data-status') === filter) {
            card.style.display = 'block';
          } else {
            card.style.display = 'none';
          }
        }
      });
    });
  });
});
</script>
{{ end }}
```

Now let's create a single project layout:

```html
{{ define "main" }}
<article class="project-single">
  <header class="project-header">
    {{ if .Params.featured }}
      <div class="featured-badge">⭐ Featured Project</div>
    {{ end }}

    <h1>{{ .Title }}</h1>

    <div class="project-meta">
      <div class="meta-item">
        <strong>Type:</strong> {{ .Params.project_type | title }}
      </div>
      <div class="meta-item">
        <strong>Status:</strong>
        <span class="status-badge status-{{ .Params.status }}">{{ .Params.status | title }}</span>
      </div>
      <div class="meta-item">
        <strong>Date:</strong> {{ .Date.Format "January 2, 2006" }}
      </div>
    </div>

    <div class="project-links">
      {{ if .Params.github_url }}
        <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
          <span>🔗</span> View on GitHub
        </a>
      {{ end }}
      {{ if .Params.demo_url }}
        <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
          <span>🚀</span> Live Demo
        </a>
      {{ end }}
    </div>
  </header>

  {{ if .Params.image }}
    <div class="project-image">
      <img src="{{ .Params.image }}" alt="{{ .Title }}" />
    </div>
  {{ end }}

  <div class="project-content">
    <div class="project-description">
      <h2>Project Overview</h2>
      <p>{{ .Params.description }}</p>
    </div>

    <div class="project-technologies">
      <h2>Technologies Used</h2>
      <div class="tech-grid">
        {{ range .Params.technologies }}
          <span class="tech-tag">{{ . }}</span>
        {{ end }}
      </div>
    </div>

    <div class="project-details">
      <h2>Project Details</h2>
      {{ .Content }}
    </div>
  </div>

  <footer class="project-footer">
    <div class="project-navigation">
      {{ with .PrevInSection }}
        <a href="{{ .Permalink }}" class="nav-link prev">
          <span>←</span> {{ .Title }}
        </a>
      {{ end }}
      {{ with .NextInSection }}
        <a href="{{ .Permalink }}" class="nav-link next">
          {{ .Title }} <span>→</span>
        </a>
      {{ end }}
    </div>

    <div class="related-projects">
      <h3>Other Projects</h3>
      {{ $related := .Site.RegularPages.Related . | first 3 }}
      {{ with $related }}
        <div class="related-grid">
          {{ range . }}
            <div class="related-item">
              <a href="{{ .Permalink }}">
                <h4>{{ .Title }}</h4>
                <p>{{ .Params.description | truncate 100 }}</p>
                <span class="related-tech">{{ .Params.project_type | title }}</span>
              </a>
            </div>
          {{ end }}
        </div>
      {{ end }}
    </div>
  </footer>
</article>

<style>
.project-single {
  max-width: 900px;
  margin: 0 auto;
  padding: 2rem;
}

.project-header {
  margin-bottom: 3rem;
  padding-bottom: 2rem;
  border-bottom: 2px solid #eee;
  position: relative;
}

.featured-badge {
  position: absolute;
  top: 0;
  right: 0;
  background: #ffc107;
  color: #333;
  padding: 0.5rem 1rem;
  border-radius: 20px;
  font-size: 0.9rem;
  font-weight: bold;
}

.project-header h1 {
  color: #333;
  margin-bottom: 1.5rem;
  font-size: 2.5rem;
}

.project-meta {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1rem;
  margin-bottom: 2rem;
}

.meta-item {
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 8px;
  border: 1px solid #e9ecef;
}

.status-badge {
  padding: 0.3rem 0.6rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
}

.status-completed {
  background: #d4edda;
  color: #155724;
}

.status-in-progress {
  background: #fff3cd;
  color: #856404;
}

.project-links {
  display: flex;
  gap: 1rem;
  flex-wrap: wrap;
}

.project-link {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.8rem 1.5rem;
  border-radius: 8px;
  text-decoration: none;
  font-weight: bold;
  transition: all 0.3s;
}

.project-link.github {
  background: #333;
  color: white;
}

.project-link.github:hover {
  background: #555;
  transform: translateY(-2px);
}

.project-link.demo {
  background: #007bff;
  color: white;
}

.project-link.demo:hover {
  background: #0056b3;
  transform: translateY(-2px);
}

.project-image {
  margin: 2rem 0;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 8px 25px rgba(0,0,0,0.1);
}

.project-image img {
  width: 100%;
  height: auto;
  display: block;
}

.project-content {
  line-height: 1.8;
}

.project-content h2 {
  color: #333;
  margin-top: 2.5rem;
  margin-bottom: 1rem;
  font-size: 1.8rem;
}

.project-description {
  background: #f8f9fa;
  padding: 1.5rem;
  border-radius: 8px;
  border-left: 4px solid #007bff;
  margin-bottom: 2rem;
}

.project-technologies {
  margin-bottom: 2rem;
}

.tech-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-top: 1rem;
}

.tech-tag {
  background: #007bff;
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 20px;
  font-size: 0.9rem;
  font-weight: bold;
}

.project-details {
  margin-bottom: 3rem;
}

.project-footer {
  margin-top: 3rem;
  padding-top: 2rem;
  border-top: 2px solid #eee;
}

.project-navigation {
  display: flex;
  justify-content: space-between;
  margin-bottom: 3rem;
  gap: 1rem;
}

.nav-link {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 1rem 1.5rem;
  border: 2px solid #007bff;
  border-radius: 8px;
  text-decoration: none;
  color: #007bff;
  font-weight: bold;
  transition: all 0.3s;
  flex: 1;
  max-width: 300px;
}

.nav-link:hover {
  background: #007bff;
  color: white;
  transform: translateY(-2px);
}

.related-projects h3 {
  color: #333;
  margin-bottom: 1.5rem;
  font-size: 1.5rem;
}

.related-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
}

.related-item {
  background: white;
  border: 1px solid #ddd;
  border-radius: 8px;
  overflow: hidden;
  transition: transform 0.3s, box-shadow 0.3s;
}

.related-item:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(0,0,0,0.1);
}

.related-item a {
  display: block;
  padding: 1.5rem;
  text-decoration: none;
  color: inherit;
}

.related-item h4 {
  margin: 0 0 0.5rem 0;
  color: #333;
  font-size: 1.1rem;
}

.related-item p {
  color: #666;
  font-size: 0.9rem;
  margin-bottom: 1rem;
  line-height: 1.5;
}

.related-tech {
  background: #e9ecef;
  color: #495057;
  padding: 0.3rem 0.6rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
}
</style>
{{ end }}
```

Excellent! Now let's update our main index page to showcase both collections:

```html
{{ define "main" }}
<div class="homepage">
  {{ .Content }}

  <div class="collections-overview">
    <h2>Explore My Collections</h2>

    <div class="collections-grid">
      <div class="collection-card blog">
        <h3>📝 Blog Posts</h3>
        <p>Latest articles and tutorials about web development, Hugo, and more.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "blog") }}</strong> posts</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "blog") "Params.featured" true) }}</strong> featured</span>
        </div>
        <a href="/blog/" class="collection-link">View All Posts →</a>
      </div>

      <div class="collection-card projects">
        <h3>🚀 Projects</h3>
        <p>Portfolio of development projects, tools, and technical work.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "projects") }}</strong> projects</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "projects") "Params.status" "completed") }}</strong> completed</span>
        </div>
        <a href="/projects/" class="collection-link">View All Projects →</a>
      </div>
    </div>
  </div>

  <div class="recent-content">
    <h2>Recent Content</h2>

    <div class="recent-posts">
      <h3>Latest Blog Posts</h3>
      <div class="post-list">
        {{ range first 3 (where .Site.RegularPages "Section" "blog") }}
          <div class="post-item">
            <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
            <p>{{ .Params.description | default .Summary | truncate 120 }}</p>
            <div class="post-meta">
              <span>{{ .Date.Format "Jan 2, 2006" }}</span>
              {{ if .Params.featured }}<span class="featured">⭐ Featured</span>{{ end }}
            </div>
          </div>
        {{ end }}
      </div>
    </div>

    <div class="recent-projects">
      <h3>Featured Projects</h3>
      <div class="project-list">
        {{ range first 3 (where (where .Site.RegularPages "Section" "projects") "Params.featured" true) }}
          <div class="project-item">
            <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
            <p>{{ .Params.description | truncate 120 }}</p>
            <div class="project-meta">
              <span class="status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
              <span class="type">{{ .Params.project_type | title }}</span>
            </div>
          </div>
        {{ end }}
      </div>
    </div>
  </div>
</div>

<style>
.homepage {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem;
}

.collections-overview {
  margin: 3rem 0;
  padding: 2rem 0;
  border-top: 2px solid #eee;
  border-bottom: 2px solid #eee;
}

.collections-overview h2 {
  text-align: center;
  margin-bottom: 2rem;
  color: #333;
  font-size: 2rem;
}

.collections-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-bottom: 2rem;
}

.collection-card {
  background: white;
  border: 2px solid #e9ecef;
  border-radius: 12px;
  padding: 2rem;
  text-align: center;
  transition: all 0.3s;
  position: relative;
  overflow: hidden;
}

.collection-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0,0,0,0.1);
}

.collection-card.blog {
  border-color: #28a745;
}

.collection-card.projects {
  border-color: #007bff;
}

.collection-card h3 {
  margin: 0 0 1rem 0;
  font-size: 1.5rem;
  color: #333;
}

.collection-card p {
  color: #666;
  margin-bottom: 1.5rem;
  line-height: 1.6;
}

.collection-stats {
  display: flex;
  justify-content: space-around;
  margin-bottom: 1.5rem;
  padding: 1rem;
  background: #f8f9fa;
  border-radius: 8px;
}

.collection-stats span {
  font-size: 0.9rem;
  color: #666;
}

.collection-link {
  display: inline-block;
  padding: 0.8rem 1.5rem;
  background: #007bff;
  color: white;
  text-decoration: none;
  border-radius: 25px;
  font-weight: bold;
  transition: all 0.3s;
}

.collection-link:hover {
  background: #0056b3;
  transform: translateY(-2px);
}

.recent-content {
  margin-top: 3rem;
}

.recent-content h2 {
  text-align: center;
  margin-bottom: 2rem;
  color: #333;
  font-size: 1.8rem;
}

.recent-posts,
.recent-projects {
  margin-bottom: 3rem;
}

.recent-posts h3,
.recent-projects h3 {
  color: #333;
  margin-bottom: 1.5rem;
  font-size: 1.3rem;
}

.post-list,
.project-list {
  display: grid;
  gap: 1.5rem;
}

.post-item,
.project-item {
  background: white;
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1.5rem;
  transition: all 0.3s;
}

.post-item:hover,
.project-item:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

.post-item h4,
.project-item h4 {
  margin: 0 0 0.5rem 0;
  font-size: 1.2rem;
}

.post-item h4 a,
.project-item h4 a {
  color: #333;
  text-decoration: none;
}

.post-item h4 a:hover,
.project-item h4 a:hover {
  color: #007bff;
}

.post-item p,
.project-item p {
  color: #666;
  margin-bottom: 1rem;
  line-height: 1.6;
}

.post-meta,
.project-meta {
  display: flex;
  gap: 1rem;
  font-size: 0.9rem;
  color: #666;
}

.featured {
  color: #ffc107;
  font-weight: bold;
}

.status {
  padding: 0.2rem 0.5rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
}

.status-completed {
  background: #d4edda;
  color: #155724;
}

.status-in-progress {
  background: #fff3cd;
  color: #856404;
}

.type {
  color: #666;
}
</style>
{{ end }}

```

Perfect! Now let's test our collections by visiting the site. Let me check if the Hugo server is still running and show you what we've accomplished:

Great! Hugo is running. Let me update our todo status and show you what we've accomplished:

## 🎉 Lessons 2 & 3 Complete

**What we've accomplished:**

### ✅ Blog Collection (`/blog/`)

- **3 sample blog posts** with rich front matter
- **Custom layouts** for list and single views
- **Programmatic display** using Hugo template functions
- **Features**: Featured posts, tags, categories, author info

### ✅ Projects Collection (`/projects/`)

- **3 sample projects** with different front matter structure
- **Advanced layouts** with filtering and interactive features
- **Different content types**: web-development, tooling
- **Features**: Status tracking, technology tags, GitHub/demo links

### ✅ Enhanced Homepage

- **Collection overview** with statistics
- **Recent content** from both collections
- **Cross-collection navigation**

## Lesson 4: Display Collections Programmatically

You've already seen some programmatic display, but let me show you the key Hugo functions we're using:

**Key Hugo Template Functions Demonstrated:**

1. **`{{ range .Pages }}`** - Loop through all pages in a section
2. **`{{ where .Pages "Params.featured" true }}`** - Filter pages by front matter
3. **`{{ len .Pages }}`** - Count pages
4. **`{{ first 3 .Pages }}`** - Get first N pages
5. **`{{ .Site.RegularPages }}`** - Access all regular pages
6. **`{{ .Params.tags }}`** - Access front matter parameters

Let's create a comprehensive collections overview page to demonstrate more advanced programmatic features:

```markdown
---
title: "Collections Overview"
date: 2024-01-30
draft: false
description: "A comprehensive overview of all content collections on this site"
---

# Collections Overview

This page demonstrates how to programmatically display and analyze all collections in your Hugo site.

## Collection Statistics

Here you can see how Hugo's template functions can be used to create dynamic content displays based on your collections.
```

```html
{{ define "main" }}
<article class="single-page">
  <header class="page-header">
    <h1>{{ .Title }}</h1>
    {{ if .Params.description }}
      <p class="page-description">{{ .Params.description }}</p>
    {{ end }}
  </header>

  <div class="page-content">
    {{ .Content }}
  </div>

  {{ if eq .Title "Collections Overview" }}
    <div class="collections-demo">
      <h2>Live Collection Data</h2>

      <div class="collection-analytics">
        <div class="analytics-grid">
          <div class="analytics-card">
            <h3>📊 Site Statistics</h3>
            <ul>
              <li><strong>Total Pages:</strong> {{ len .Site.RegularPages }}</li>
              <li><strong>Total Sections:</strong> {{ len .Site.Sections }}</li>
              <li><strong>Site Sections:</strong>
                {{ range $i, $section := .Site.Sections }}
                  {{ if $i }}, {{ end }}{{ $section.Title | title }}
                {{ end }}
              </li>
            </ul>
          </div>

          <div class="analytics-card">
            <h3>📝 Blog Analytics</h3>
            {{ $blogPages := where .Site.RegularPages "Section" "blog" }}
            <ul>
              <li><strong>Total Posts:</strong> {{ len $blogPages }}</li>
              <li><strong>Featured Posts:</strong> {{ len (where $blogPages "Params.featured" true) }}</li>
              <li><strong>Draft Posts:</strong> {{ len (where $blogPages "Draft" true) }}</li>
              <li><strong>Latest Post:</strong>
                {{ with (index $blogPages 0) }}
                  <a href="{{ .Permalink }}">{{ .Title }}</a> ({{ .Date.Format "Jan 2, 2006" }})
                {{ end }}
              </li>
            </ul>
          </div>

          <div class="analytics-card">
            <h3>🚀 Project Analytics</h3>
            {{ $projectPages := where .Site.RegularPages "Section" "projects" }}
            <ul>
              <li><strong>Total Projects:</strong> {{ len $projectPages }}</li>
              <li><strong>Completed:</strong> {{ len (where $projectPages "Params.status" "completed") }}</li>
              <li><strong>In Progress:</strong> {{ len (where $projectPages "Params.status" "in-progress") }}</li>
              <li><strong>Featured Projects:</strong> {{ len (where $projectPages "Params.featured" true) }}</li>
            </ul>
          </div>
        </div>
      </div>

      <div class="tag-cloud">
        <h3>🏷️ Tag Cloud</h3>
        {{ $allTags := slice }}
        {{ range .Site.RegularPages }}
          {{ if .Params.tags }}
            {{ $allTags = $allTags | append .Params.tags }}
          {{ end }}
        {{ end }}
        {{ $uniqueTags := $allTags | uniq }}
        <div class="tags">
          {{ range $uniqueTags }}
            <span class="tag">{{ . }}</span>
          {{ end }}
        </div>
      </div>

      <div class="recent-activity">
        <h3>📅 Recent Activity</h3>
        {{ $recentPages := .Site.RegularPages | first 5 }}
        <div class="activity-list">
          {{ range $recentPages }}
            <div class="activity-item">
              <span class="activity-date">{{ .Date.Format "Jan 2" }}</span>
              <span class="activity-section">{{ .Section | title }}</span>
              <a href="{{ .Permalink }}" class="activity-title">{{ .Title }}</a>
            </div>
          {{ end }}
        </div>
      </div>

      <div class="collection-examples">
        <h3>🔧 Template Function Examples</h3>
        <div class="code-examples">
          <div class="code-block">
            <h4>Filter by Front Matter</h4>
            <pre><code>{{ `{{ range where .Site.RegularPages "Params.featured" true }}` }}</code></pre>
            <p>This finds all pages where the "featured" parameter is true.</p>
          </div>

          <div class="code-block">
            <h4>Sort by Date</h4>
            <pre><code>{{ `{{ range .Site.RegularPages.ByDate.Reverse }}` }}</code></pre>
            <p>This sorts pages by date, newest first.</p>
          </div>

          <div class="code-block">
            <h4>Group by Section</h4>
            <pre><code>{{ `{{ range .Site.Sections }}` }}</code></pre>
            <p>This loops through all sections (collections).</p>
          </div>
        </div>
      </div>
    </div>
  {{ end }}
</article>

<style>
.single-page {
  max-width: 1000px;
  margin: 0 auto;
  padding: 2rem;
}

.page-header {
  text-align: center;
  margin-bottom: 3rem;
  padding-bottom: 2rem;
  border-bottom: 2px solid #eee;
}

.page-header h1 {
  color: #333;
  margin-bottom: 1rem;
  font-size: 2.5rem;
}

.page-description {
  color: #666;
  font-size: 1.2rem;
  font-style: italic;
}

.page-content {
  line-height: 1.8;
  font-size: 1.1rem;
  margin-bottom: 3rem;
}

.collections-demo {
  background: #f8f9fa;
  padding: 2rem;
  border-radius: 12px;
  margin-top: 3rem;
}

.collections-demo h2 {
  color: #333;
  margin-bottom: 2rem;
  text-align: center;
}

.analytics-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 2rem;
  margin-bottom: 3rem;
}

.analytics-card {
  background: white;
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid #ddd;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

.analytics-card h3 {
  color: #333;
  margin-bottom: 1rem;
  font-size: 1.3rem;
}

.analytics-card ul {
  list-style: none;
  padding: 0;
}

.analytics-card li {
  margin-bottom: 0.8rem;
  padding: 0.5rem;
  background: #f8f9fa;
  border-radius: 5px;
}

.analytics-card a {
  color: #007bff;
  text-decoration: none;
}

.analytics-card a:hover {
  text-decoration: underline;
}

.tag-cloud {
  margin-bottom: 3rem;
}

.tag-cloud h3 {
  color: #333;
  margin-bottom: 1.5rem;
}

.tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.tag {
  background: #007bff;
  color: white;
  padding: 0.5rem 1rem;
  border-radius: 20px;
  font-size: 0.9rem;
  font-weight: bold;
}

.recent-activity {
  margin-bottom: 3rem;
}

.recent-activity h3 {
  color: #333;
  margin-bottom: 1.5rem;
}

.activity-list {
  background: white;
  border-radius: 8px;
  overflow: hidden;
  border: 1px solid #ddd;
}

.activity-item {
  display: flex;
  align-items: center;
  padding: 1rem;
  border-bottom: 1px solid #eee;
  transition: background 0.3s;
}

.activity-item:hover {
  background: #f8f9fa;
}

.activity-item:last-child {
  border-bottom: none;
}

.activity-date {
  background: #007bff;
  color: white;
  padding: 0.3rem 0.6rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
  margin-right: 1rem;
  min-width: 50px;
  text-align: center;
}

.activity-section {
  background: #28a745;
  color: white;
  padding: 0.3rem 0.6rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
  margin-right: 1rem;
  min-width: 80px;
  text-align: center;
}

.activity-title {
  color: #333;
  text-decoration: none;
  font-weight: bold;
}

.activity-title:hover {
  color: #007bff;
}

.collection-examples h3 {
  color: #333;
  margin-bottom: 2rem;
}

.code-examples {
  display: grid;
  gap: 2rem;
}

.code-block {
  background: white;
  padding: 1.5rem;
  border-radius: 8px;
  border: 1px solid #ddd;
}

.code-block h4 {
  color: #333;
  margin-bottom: 1rem;
  font-size: 1.1rem;
}

.code-block pre {
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 5px;
  overflow-x: auto;
  margin-bottom: 1rem;
}

.code-block code {
  font-family: 'Monaco', 'Menlo', 'Ubuntu Mono', monospace;
  font-size: 0.9rem;
  color: #d63384;
}

.code-block p {
  color: #666;
  margin: 0;
  font-size: 0.9rem;
}
</style>
{{ end }}

```

Perfect! Now let's complete our final lesson:

## Lesson 5: Advanced Collection Features

Let's add some advanced features to make our collections even more powerful! We'll add pagination, advanced filtering, and sorting capabilities.

```html
{{ define "main" }}
<div class="blog-header">
  <h1>{{ .Title | default "Blog Posts" }}</h1>
  <p>Welcome to our blog! Here are all our posts:</p>
</div>

<div class="blog-stats">
  <p><strong>Total Posts:</strong> {{ len .Pages }}</p>
  <p><strong>Featured Posts:</strong> {{ len (where .Pages "Params.featured" true) }}</p>
</div>

<!-- Advanced Filtering and Sorting -->
<div class="blog-controls">
  <div class="filter-section">
    <h3>Filter Posts</h3>
    <div class="filter-buttons">
      <button class="filter-btn active" data-filter="all">All Posts</button>
      <button class="filter-btn" data-filter="featured">Featured Only</button>
      <button class="filter-btn" data-filter="tutorials">Tutorials</button>
      <button class="filter-btn" data-filter="reviews">Reviews</button>
    </div>
  </div>

  <div class="sort-section">
    <h3>Sort By</h3>
    <select id="sortSelect" class="sort-select">
      <option value="date-desc">Date (Newest First)</option>
      <option value="date-asc">Date (Oldest First)</option>
      <option value="title-asc">Title (A-Z)</option>
      <option value="title-desc">Title (Z-A)</option>
    </select>
  </div>
</div>

<div class="blog-posts" id="blogPosts">
  {{ range .Pages }}
    <article class="blog-post"
             data-featured="{{ .Params.featured }}"
             data-category="{{ .Params.categories | first 1 }}"
             data-date="{{ .Date.Format "2006-01-02" }}"
             data-title="{{ .Title | lower }}">
      <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>
      <div class="post-meta">
        <span class="date">{{ .Date.Format "January 2, 2006" }}</span>
        <span class="author">by {{ .Params.author | default "Anonymous" }}</span>
        {{ if .Params.tags }}
          <span class="tags">
            {{ range .Params.tags }}
              <span class="tag">{{ . }}</span>
            {{ end }}
          </span>
        {{ end }}
      </div>
      <div class="post-excerpt">
        {{ .Summary }}
      </div>
      {{ if .Params.featured }}
        <span class="featured-badge">⭐ Featured</span>
      {{ end }}
    </article>
  {{ end }}
</div>

<!-- Pagination -->
{{ if gt .Paginator.TotalPages 1 }}
<div class="pagination">
  {{ if .Paginator.HasPrev }}
    <a href="{{ .Paginator.Prev.URL }}" class="pagination-btn prev">← Previous</a>
  {{ end }}

  <span class="pagination-info">
    Page {{ .Paginator.PageNumber }} of {{ .Paginator.TotalPages }}
  </span>

  {{ if .Paginator.HasNext }}
    <a href="{{ .Paginator.Next.URL }}" class="pagination-btn next">Next →</a>
  {{ end }}
</div>
{{ end }}

<style>
.blog-header {
  margin-bottom: 2rem;
  padding-bottom: 1rem;
  border-bottom: 2px solid #eee;
}

.blog-stats {
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 5px;
  margin-bottom: 2rem;
}

.blog-controls {
  background: #f8f9fa;
  padding: 1.5rem;
  border-radius: 8px;
  margin-bottom: 2rem;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 2rem;
}

.filter-section h3,
.sort-section h3 {
  margin: 0 0 1rem 0;
  color: #333;
  font-size: 1.1rem;
}

.filter-buttons {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

.filter-btn {
  padding: 0.5rem 1rem;
  border: 1px solid #ddd;
  background: white;
  border-radius: 20px;
  cursor: pointer;
  transition: all 0.3s;
  font-size: 0.9rem;
}

.filter-btn:hover,
.filter-btn.active {
  background: #007bff;
  color: white;
  border-color: #007bff;
}

.sort-select {
  padding: 0.5rem;
  border: 1px solid #ddd;
  border-radius: 5px;
  background: white;
  font-size: 0.9rem;
  width: 100%;
}

.blog-posts {
  display: grid;
  gap: 2rem;
}

.blog-post {
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1.5rem;
  background: white;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
  position: relative;
  transition: all 0.3s;
}

.blog-post:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

.blog-post h2 {
  margin-top: 0;
  color: #333;
}

.blog-post h2 a {
  text-decoration: none;
  color: inherit;
}

.blog-post h2 a:hover {
  color: #007bff;
}

.post-meta {
  color: #666;
  font-size: 0.9rem;
  margin: 0.5rem 0;
}

.post-meta span {
  margin-right: 1rem;
}

.tags {
  display: inline-block;
}

.tag {
  background: #e9ecef;
  padding: 0.2rem 0.5rem;
  border-radius: 3px;
  font-size: 0.8rem;
  margin-right: 0.3rem;
}

.post-excerpt {
  margin: 1rem 0;
  line-height: 1.6;
}

.featured-badge {
  position: absolute;
  top: 1rem;
  right: 1rem;
  background: #ffc107;
  color: #333;
  padding: 0.3rem 0.6rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: bold;
}

.pagination {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 1rem;
  margin-top: 3rem;
  padding: 2rem 0;
  border-top: 1px solid #eee;
}

.pagination-btn {
  padding: 0.8rem 1.5rem;
  background: #007bff;
  color: white;
  text-decoration: none;
  border-radius: 5px;
  font-weight: bold;
  transition: all 0.3s;
}

.pagination-btn:hover {
  background: #0056b3;
  transform: translateY(-2px);
}

.pagination-info {
  color: #666;
  font-weight: bold;
}

/* Responsive Design */
@media (max-width: 768px) {
  .blog-controls {
    grid-template-columns: 1fr;
    gap: 1rem;
  }

  .filter-buttons {
    justify-content: center;
  }
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const filterButtons = document.querySelectorAll('.filter-btn');
  const sortSelect = document.getElementById('sortSelect');
  const blogPosts = document.getElementById('blogPosts');
  const posts = Array.from(document.querySelectorAll('.blog-post'));

  // Filter functionality
  filterButtons.forEach(button => {
    button.addEventListener('click', function() {
      // Remove active class from all buttons
      filterButtons.forEach(btn => btn.classList.remove('active'));
      // Add active class to clicked button
      this.classList.add('active');

      const filter = this.getAttribute('data-filter');

      posts.forEach(post => {
        if (filter === 'all') {
          post.style.display = 'block';
        } else if (filter === 'featured') {
          if (post.getAttribute('data-featured') === 'true') {
            post.style.display = 'block';
          } else {
            post.style.display = 'none';
          }
        } else if (filter === 'tutorials') {
          if (post.getAttribute('data-category') === 'tutorials') {
            post.style.display = 'block';
          } else {
            post.style.display = 'none';
          }
        } else if (filter === 'reviews') {
          if (post.getAttribute('data-category') === 'reviews') {
            post.style.display = 'block';
          } else {
            post.style.display = 'none';
          }
        }
      });
    });
  });

  // Sort functionality
  sortSelect.addEventListener('change', function() {
    const sortBy = this.value;
    const visiblePosts = posts.filter(post => post.style.display !== 'none');

    visiblePosts.sort((a, b) => {
      switch(sortBy) {
        case 'date-desc':
          return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
        case 'date-asc':
          return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
        case 'title-asc':
          return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
        case 'title-desc':
          return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
        default:
          return 0;
      }
    });

    // Reorder posts in DOM
    visiblePosts.forEach(post => {
      blogPosts.appendChild(post);
    });
  });
});
</script>
{{ end }}
```

Now let's add pagination configuration to our Hugo config:

```plaintext
baseURL = 'https://example.org/'
languageCode = 'en-us'
title = 'My New Hugo Site'
disableKinds = ['taxonomy', 'term']

# Pagination settings
paginate = 5
paginatePath = "page"

# Section settings
[params]
  # Blog section pagination
  [params.blog]
    paginate = 3

  # Projects section pagination
  [params.projects]
    paginate = 6

```

Let's also create a more advanced projects layout with search functionality:

```html
{{ define "main" }}
<div class="projects-header">
    <h1>{{ .Title | default "Projects Portfolio" }}</h1>
    <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
    <div class="stat-card">
        <h3>{{ len .Pages }}</h3>
        <p>Total Projects</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
        <p>Completed</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
        <p>Featured</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
        <p>In Progress</p>
    </div>
</div>

<div class="projects-filters">
  <div class="search-section">
    <h3>Search Projects</h3>
    <input type="text" id="projectSearch" placeholder="Search by title, description, or technology..." class="search-input">
  </div>

  <div class="filter-section">
    <h3>Filter by Status:</h3>
    <div class="filter-buttons">
      <button class="filter-btn active" data-filter="all">All</button>
      <button class="filter-btn" data-filter="completed">Completed</button>
      <button class="filter-btn" data-filter="in-progress">In Progress</button>
      <button class="filter-btn" data-filter="featured">Featured</button>
    </div>
  </div>

  <div class="sort-section">
    <h3>Sort By:</h3>
    <select id="projectSort" class="sort-select">
      <option value="date-desc">Date (Newest First)</option>
      <option value="date-asc">Date (Oldest First)</option>
      <option value="title-asc">Title (A-Z)</option>
      <option value="title-desc">Title (Z-A)</option>
      <option value="status">Status</option>
    </select>
  </div>
</div>

<div class="projects-grid">
    {{ range .Pages }}
    <div class="project-card" data-status="{{ .Params.status }}" data-featured="{{ .Params.featured }}">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
        {{ end }}

        <div class="project-image">
            {{ if .Params.image }}
            <img src="{{ .Params.image }}" alt="{{ .Title }}" />
            {{ else }}
            <div class="placeholder-image">
                <span>{{ .Title | truncate 2 }}</span>
            </div>
            {{ end }}
        </div>

        <div class="project-content">
            <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

            <div class="project-meta">
                <span class="project-type">{{ .Params.project_type | title }}</span>
                <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
            </div>

            <p class="project-description">{{ .Params.description }}</p>

            <div class="project-technologies">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>

            <div class="project-links">
                {{ if .Params.github_url }}
                <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                    GitHub
                </a>
                {{ end }}
                {{ if .Params.demo_url }}
                <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                    Live Demo
                </a>
                {{ end }}
            </div>
        </div>
    </div>
    {{ end }}
</div>

<style>
    .projects-header {
        text-align: center;
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
    }

    .projects-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 3rem;
    }

    .stat-card {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #e9ecef;
    }

    .stat-card h3 {
        font-size: 2rem;
        margin: 0;
        color: #007bff;
    }

    .stat-card p {
        margin: 0.5rem 0 0 0;
        color: #666;
        font-size: 0.9rem;
    }

    .projects-filters {
        margin-bottom: 2rem;
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .projects-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
        gap: 2rem;
    }

    .project-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        position: relative;
    }

    .project-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        z-index: 1;
    }

    .project-image {
        height: 200px;
        overflow: hidden;
        background: #f8f9fa;
    }

    .project-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .placeholder-image {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        font-size: 2rem;
        font-weight: bold;
    }

    .project-content {
        padding: 1.5rem;
    }

    .project-content h2 {
        margin: 0 0 1rem 0;
        font-size: 1.3rem;
    }

    .project-content h2 a {
        color: #333;
        text-decoration: none;
    }

    .project-content h2 a:hover {
        color: #007bff;
    }

    .project-meta {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        font-size: 0.9rem;
    }

    .project-type {
        color: #666;
    }

    .project-status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-description {
        color: #666;
        line-height: 1.6;
        margin-bottom: 1rem;
    }

    .project-technologies {
        margin-bottom: 1rem;
    }

    .tech-tag {
        display: inline-block;
        background: #e9ecef;
        color: #495057;
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
        margin-bottom: 0.3rem;
    }

    .project-links {
        display: flex;
        gap: 0.5rem;
    }

    .project-link {
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

    .project-link.demo:hover {
        background: #0056b3;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = document.querySelectorAll('.project-card');

        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                // Remove active class from all buttons
                filterButtons.forEach(btn => btn.classList.remove('active'));
                // Add active class to clicked button
                this.classList.add('active');

                const filter = this.getAttribute('data-filter');

                projectCards.forEach(card => {
                    if (filter === 'all') {
                        card.style.display = 'block';
                    } else if (filter === 'featured') {
                        if (card.getAttribute('data-featured') === 'true') {
                            card.style.display = 'block';
                        } else {
                            card.style.display = 'none';
                        }
                    } else {
                        if (card.getAttribute('data-status') === filter) {
                            card.style.display = 'block';
                        } else {
                            card.style.display = 'none';
                        }
                    }
                });
            });
        });
    });
</script>
{{ end }}

```

Now let's update the project cards to include searchable data attributes and enhance the JavaScript:

```html
    <div class="project-card"
         data-status="{{ .Params.status }}"
         data-featured="{{ .Params.featured }}"
         data-title="{{ .Title | lower }}"
         data-description="{{ .Params.description | lower }}"
         data-technologies="{{ .Params.technologies | join " " | lower }}"
         data-date="{{ .Date.Format "2006-01-02" }}"
         data-type="{{ .Params.project_type | lower }}">
```

Let me read the current file to see the exact structure:

```html
{{ define "main" }}
<div class="projects-header">
    <h1>{{ .Title | default "Projects Portfolio" }}</h1>
    <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
    <div class="stat-card">
        <h3>{{ len .Pages }}</h3>
        <p>Total Projects</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
        <p>Completed</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
        <p>Featured</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
        <p>In Progress</p>
    </div>
</div>

<div class="projects-filters">
  <div class="search-section">
    <h3>Search Projects</h3>
    <input type="text" id="projectSearch" placeholder="Search by title, description, or technology..." class="search-input">
  </div>

  <div class="filter-section">
    <h3>Filter by Status:</h3>
    <div class="filter-buttons">
      <button class="filter-btn active" data-filter="all">All</button>
      <button class="filter-btn" data-filter="completed">Completed</button>
      <button class="filter-btn" data-filter="in-progress">In Progress</button>
      <button class="filter-btn" data-filter="featured">Featured</button>
    </div>
  </div>

  <div class="sort-section">
    <h3>Sort By:</h3>
    <select id="projectSort" class="sort-select">
      <option value="date-desc">Date (Newest First)</option>
      <option value="date-asc">Date (Oldest First)</option>
      <option value="title-asc">Title (A-Z)</option>
      <option value="title-desc">Title (Z-A)</option>
      <option value="status">Status</option>
    </select>
  </div>
</div>

<div class="projects-grid">
    {{ range .Pages }}
    <div class="project-card"
         data-status="{{ .Params.status }}"
         data-featured="{{ .Params.featured }}"
         data-title="{{ .Title | lower }}"
         data-description="{{ .Params.description | lower }}"
         data-technologies="{{ .Params.technologies | join " " | lower }}"
         data-date="{{ .Date.Format "2006-01-02" }}"
         data-type="{{ .Params.project_type | lower }}">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
        {{ end }}

        <div class="project-image">
            {{ if .Params.image }}
            <img src="{{ .Params.image }}" alt="{{ .Title }}" />
            {{ else }}
            <div class="placeholder-image">
                <span>{{ .Title | truncate 2 }}</span>
            </div>
            {{ end }}
        </div>

        <div class="project-content">
            <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

            <div class="project-meta">
                <span class="project-type">{{ .Params.project_type | title }}</span>
                <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
            </div>

            <p class="project-description">{{ .Params.description }}</p>

            <div class="project-technologies">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>

            <div class="project-links">
                {{ if .Params.github_url }}
                <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                    GitHub
                </a>
                {{ end }}
                {{ if .Params.demo_url }}
                <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                    Live Demo
                </a>
                {{ end }}
            </div>
        </div>
    </div>
    {{ end }}
</div>

<style>
    .projects-header {
        text-align: center;
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
    }

    .projects-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 3rem;
    }

    .stat-card {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #e9ecef;
    }

    .stat-card h3 {
        font-size: 2rem;
        margin: 0;
        color: #007bff;
    }

    .stat-card p {
        margin: 0.5rem 0 0 0;
        color: #666;
        font-size: 0.9rem;
    }

    .projects-filters {
        margin-bottom: 2rem;
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .projects-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
        gap: 2rem;
    }

    .project-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        position: relative;
    }

    .project-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        z-index: 1;
    }

    .project-image {
        height: 200px;
        overflow: hidden;
        background: #f8f9fa;
    }

    .project-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .placeholder-image {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        font-size: 2rem;
        font-weight: bold;
    }

    .project-content {
        padding: 1.5rem;
    }

    .project-content h2 {
        margin: 0 0 1rem 0;
        font-size: 1.3rem;
    }

    .project-content h2 a {
        color: #333;
        text-decoration: none;
    }

    .project-content h2 a:hover {
        color: #007bff;
    }

    .project-meta {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        font-size: 0.9rem;
    }

    .project-type {
        color: #666;
    }

    .project-status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-description {
        color: #666;
        line-height: 1.6;
        margin-bottom: 1rem;
    }

    .project-technologies {
        margin-bottom: 1rem;
    }

    .tech-tag {
        display: inline-block;
        background: #e9ecef;
        color: #495057;
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
        margin-bottom: 0.3rem;
    }

    .project-links {
        display: flex;
        gap: 0.5rem;
    }

    .project-link {
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

    .project-link.demo:hover {
        background: #0056b3;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = document.querySelectorAll('.project-card');

        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                // Remove active class from all buttons
                filterButtons.forEach(btn => btn.classList.remove('active'));
                // Add active class to clicked button
                this.classList.add('active');

                const filter = this.getAttribute('data-filter');

                projectCards.forEach(card => {
                    if (filter === 'all') {
                        card.style.display = 'block';
                    } else if (filter === 'featured') {
                        if (card.getAttribute('data-featured') === 'true') {
                            card.style.display = 'block';
                        } else {
                            card.style.display = 'none';
                        }
                    } else {
                        if (card.getAttribute('data-status') === filter) {
                            card.style.display = 'block';
                        } else {
                            card.style.display = 'none';
                        }
                    }
                });
            });
        });
    });
</script>
{{ end }}

```

Now let's add the enhanced JavaScript functionality. Let me find the script section and update it:

Let me find the script section:

Now let me replace the entire script section with enhanced functionality:

```html
{{ define "main" }}
<div class="projects-header">
    <h1>{{ .Title | default "Projects Portfolio" }}</h1>
    <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
    <div class="stat-card">
        <h3>{{ len .Pages }}</h3>
        <p>Total Projects</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
        <p>Completed</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
        <p>Featured</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
        <p>In Progress</p>
    </div>
</div>

<div class="projects-filters">
  <div class="search-section">
    <h3>Search Projects</h3>
    <input type="text" id="projectSearch" placeholder="Search by title, description, or technology..." class="search-input">
  </div>

  <div class="filter-section">
    <h3>Filter by Status:</h3>
    <div class="filter-buttons">
      <button class="filter-btn active" data-filter="all">All</button>
      <button class="filter-btn" data-filter="completed">Completed</button>
      <button class="filter-btn" data-filter="in-progress">In Progress</button>
      <button class="filter-btn" data-filter="featured">Featured</button>
    </div>
  </div>

  <div class="sort-section">
    <h3>Sort By:</h3>
    <select id="projectSort" class="sort-select">
      <option value="date-desc">Date (Newest First)</option>
      <option value="date-asc">Date (Oldest First)</option>
      <option value="title-asc">Title (A-Z)</option>
      <option value="title-desc">Title (Z-A)</option>
      <option value="status">Status</option>
    </select>
  </div>
</div>

<div class="projects-grid">
    {{ range .Pages }}
    <div class="project-card"
         data-status="{{ .Params.status }}"
         data-featured="{{ .Params.featured }}"
         data-title="{{ .Title | lower }}"
         data-description="{{ .Params.description | lower }}"
         data-technologies="{{ .Params.technologies | join " " | lower }}"
         data-date="{{ .Date.Format "2006-01-02" }}"
         data-type="{{ .Params.project_type | lower }}">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
        {{ end }}

        <div class="project-image">
            {{ if .Params.image }}
            <img src="{{ .Params.image }}" alt="{{ .Title }}" />
            {{ else }}
            <div class="placeholder-image">
                <span>{{ .Title | truncate 2 }}</span>
            </div>
            {{ end }}
        </div>

        <div class="project-content">
            <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

            <div class="project-meta">
                <span class="project-type">{{ .Params.project_type | title }}</span>
                <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
            </div>

            <p class="project-description">{{ .Params.description }}</p>

            <div class="project-technologies">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>

            <div class="project-links">
                {{ if .Params.github_url }}
                <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                    GitHub
                </a>
                {{ end }}
                {{ if .Params.demo_url }}
                <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                    Live Demo
                </a>
                {{ end }}
            </div>
        </div>
    </div>
    {{ end }}
</div>

<style>
    .projects-header {
        text-align: center;
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
    }

    .projects-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 3rem;
    }

    .stat-card {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #e9ecef;
    }

    .stat-card h3 {
        font-size: 2rem;
        margin: 0;
        color: #007bff;
    }

    .stat-card p {
        margin: 0.5rem 0 0 0;
        color: #666;
        font-size: 0.9rem;
    }

    .projects-filters {
        margin-bottom: 2rem;
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .projects-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
        gap: 2rem;
    }

    .project-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        position: relative;
    }

    .project-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        z-index: 1;
    }

    .project-image {
        height: 200px;
        overflow: hidden;
        background: #f8f9fa;
    }

    .project-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .placeholder-image {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        font-size: 2rem;
        font-weight: bold;
    }

    .project-content {
        padding: 1.5rem;
    }

    .project-content h2 {
        margin: 0 0 1rem 0;
        font-size: 1.3rem;
    }

    .project-content h2 a {
        color: #333;
        text-decoration: none;
    }

    .project-content h2 a:hover {
        color: #007bff;
    }

    .project-meta {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        font-size: 0.9rem;
    }

    .project-type {
        color: #666;
    }

    .project-status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-description {
        color: #666;
        line-height: 1.6;
        margin-bottom: 1rem;
    }

    .project-technologies {
        margin-bottom: 1rem;
    }

    .tech-tag {
        display: inline-block;
        background: #e9ecef;
        color: #495057;
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
        margin-bottom: 0.3rem;
    }

    .project-links {
        display: flex;
        gap: 0.5rem;
    }

    .project-link {
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

    .project-link.demo:hover {
        background: #0056b3;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = Array.from(document.querySelectorAll('.project-card'));
        const searchInput = document.getElementById('projectSearch');
        const sortSelect = document.getElementById('projectSort');
        const projectsGrid = document.querySelector('.projects-grid');

        let currentFilter = 'all';
        let currentSearch = '';

        // Filter functionality
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                currentFilter = this.getAttribute('data-filter');
                applyFilters();
            });
        });

        // Search functionality
        searchInput.addEventListener('input', function () {
            currentSearch = this.value.toLowerCase();
            applyFilters();
        });

        // Sort functionality
        sortSelect.addEventListener('change', function () {
            applySorting();
        });

        function applyFilters() {
            projectCards.forEach(card => {
                const matchesFilter = matchesCurrentFilter(card);
                const matchesSearch = matchesCurrentSearch(card);

                if (matchesFilter && matchesSearch) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });

            applySorting();
        }

        function matchesCurrentFilter(card) {
            if (currentFilter === 'all') return true;
            if (currentFilter === 'featured') return card.getAttribute('data-featured') === 'true';
            return card.getAttribute('data-status') === currentFilter;
        }

        function matchesCurrentSearch(card) {
            if (!currentSearch) return true;

            const title = card.getAttribute('data-title');
            const description = card.getAttribute('data-description');
            const technologies = card.getAttribute('data-technologies');

            return title.includes(currentSearch) ||
                   description.includes(currentSearch) ||
                   technologies.includes(currentSearch);
        }

        function applySorting() {
            const visibleCards = projectCards.filter(card => card.style.display !== 'none');
            const sortBy = sortSelect.value;

            visibleCards.sort((a, b) => {
                switch(sortBy) {
                    case 'date-desc':
                        return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
                    case 'date-asc':
                        return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
                    case 'title-asc':
                        return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
                    case 'title-desc':
                        return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
                    case 'status':
                        return a.getAttribute('data-status').localeCompare(b.getAttribute('data-status'));
                    default:
                        return 0;
                }
            });

            // Reorder cards in DOM
            visibleCards.forEach(card => {
                projectsGrid.appendChild(card);
            });
        }
    });
</script>
{{ end }}

```

Now let's add some CSS for the new search and sort controls:

```html
{{ define "main" }}
<div class="projects-header">
    <h1>{{ .Title | default "Projects Portfolio" }}</h1>
    <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
    <div class="stat-card">
        <h3>{{ len .Pages }}</h3>
        <p>Total Projects</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
        <p>Completed</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
        <p>Featured</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
        <p>In Progress</p>
    </div>
</div>

<div class="projects-filters">
  <div class="search-section">
    <h3>Search Projects</h3>
    <input type="text" id="projectSearch" placeholder="Search by title, description, or technology..." class="search-input">
  </div>

  <div class="filter-section">
    <h3>Filter by Status:</h3>
    <div class="filter-buttons">
      <button class="filter-btn active" data-filter="all">All</button>
      <button class="filter-btn" data-filter="completed">Completed</button>
      <button class="filter-btn" data-filter="in-progress">In Progress</button>
      <button class="filter-btn" data-filter="featured">Featured</button>
    </div>
  </div>

  <div class="sort-section">
    <h3>Sort By:</h3>
    <select id="projectSort" class="sort-select">
      <option value="date-desc">Date (Newest First)</option>
      <option value="date-asc">Date (Oldest First)</option>
      <option value="title-asc">Title (A-Z)</option>
      <option value="title-desc">Title (Z-A)</option>
      <option value="status">Status</option>
    </select>
  </div>
</div>

<div class="projects-grid">
    {{ range .Pages }}
    <div class="project-card"
         data-status="{{ .Params.status }}"
         data-featured="{{ .Params.featured }}"
         data-title="{{ .Title | lower }}"
         data-description="{{ .Params.description | lower }}"
         data-technologies="{{ .Params.technologies | join " " | lower }}"
         data-date="{{ .Date.Format "2006-01-02" }}"
         data-type="{{ .Params.project_type | lower }}">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
        {{ end }}

        <div class="project-image">
            {{ if .Params.image }}
            <img src="{{ .Params.image }}" alt="{{ .Title }}" />
            {{ else }}
            <div class="placeholder-image">
                <span>{{ .Title | truncate 2 }}</span>
            </div>
            {{ end }}
        </div>

        <div class="project-content">
            <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

            <div class="project-meta">
                <span class="project-type">{{ .Params.project_type | title }}</span>
                <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
            </div>

            <p class="project-description">{{ .Params.description }}</p>

            <div class="project-technologies">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>

            <div class="project-links">
                {{ if .Params.github_url }}
                <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                    GitHub
                </a>
                {{ end }}
                {{ if .Params.demo_url }}
                <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                    Live Demo
                </a>
                {{ end }}
            </div>
        </div>
    </div>
    {{ end }}
</div>

<style>
    .projects-header {
        text-align: center;
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
    }

    .projects-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 3rem;
    }

    .stat-card {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #e9ecef;
    }

    .stat-card h3 {
        font-size: 2rem;
        margin: 0;
        color: #007bff;
    }

    .stat-card p {
        margin: 0.5rem 0 0 0;
        color: #666;
        font-size: 0.9rem;
    }

.projects-filters {
    background: #f8f9fa;
    padding: 2rem;
    border-radius: 12px;
    margin-bottom: 2rem;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 2rem;
}

.search-section h3,
.filter-section h3,
.sort-section h3 {
    margin: 0 0 1rem 0;
    color: #333;
    font-size: 1.1rem;
}

.search-input {
    width: 100%;
    padding: 0.8rem;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 1rem;
    transition: border-color 0.3s;
}

.search-input:focus {
    outline: none;
    border-color: #007bff;
    box-shadow: 0 0 0 2px rgba(0, 123, 255, 0.25);
}

.filter-buttons {
    display: flex;
    gap: 0.5rem;
    flex-wrap: wrap;
}

.sort-select {
    width: 100%;
    padding: 0.8rem;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-size: 1rem;
    background: white;
}

@media (max-width: 768px) {
    .projects-filters {
        grid-template-columns: 1fr;
        gap: 1.5rem;
    }
}

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .projects-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
        gap: 2rem;
    }

    .project-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        position: relative;
    }

    .project-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        z-index: 1;
    }

    .project-image {
        height: 200px;
        overflow: hidden;
        background: #f8f9fa;
    }

    .project-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .placeholder-image {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        font-size: 2rem;
        font-weight: bold;
    }

    .project-content {
        padding: 1.5rem;
    }

    .project-content h2 {
        margin: 0 0 1rem 0;
        font-size: 1.3rem;
    }

    .project-content h2 a {
        color: #333;
        text-decoration: none;
    }

    .project-content h2 a:hover {
        color: #007bff;
    }

    .project-meta {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        font-size: 0.9rem;
    }

    .project-type {
        color: #666;
    }

    .project-status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-description {
        color: #666;
        line-height: 1.6;
        margin-bottom: 1rem;
    }

    .project-technologies {
        margin-bottom: 1rem;
    }

    .tech-tag {
        display: inline-block;
        background: #e9ecef;
        color: #495057;
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
        margin-bottom: 0.3rem;
    }

    .project-links {
        display: flex;
        gap: 0.5rem;
    }

    .project-link {
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

    .project-link.demo:hover {
        background: #0056b3;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = Array.from(document.querySelectorAll('.project-card'));
        const searchInput = document.getElementById('projectSearch');
        const sortSelect = document.getElementById('projectSort');
        const projectsGrid = document.querySelector('.projects-grid');

        let currentFilter = 'all';
        let currentSearch = '';

        // Filter functionality
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                currentFilter = this.getAttribute('data-filter');
                applyFilters();
            });
        });

        // Search functionality
        searchInput.addEventListener('input', function () {
            currentSearch = this.value.toLowerCase();
            applyFilters();
        });

        // Sort functionality
        sortSelect.addEventListener('change', function () {
            applySorting();
        });

        function applyFilters() {
            projectCards.forEach(card => {
                const matchesFilter = matchesCurrentFilter(card);
                const matchesSearch = matchesCurrentSearch(card);

                if (matchesFilter && matchesSearch) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });

            applySorting();
        }

        function matchesCurrentFilter(card) {
            if (currentFilter === 'all') return true;
            if (currentFilter === 'featured') return card.getAttribute('data-featured') === 'true';
            return card.getAttribute('data-status') === currentFilter;
        }

        function matchesCurrentSearch(card) {
            if (!currentSearch) return true;

            const title = card.getAttribute('data-title');
            const description = card.getAttribute('data-description');
            const technologies = card.getAttribute('data-technologies');

            return title.includes(currentSearch) ||
                   description.includes(currentSearch) ||
                   technologies.includes(currentSearch);
        }

        function applySorting() {
            const visibleCards = projectCards.filter(card => card.style.display !== 'none');
            const sortBy = sortSelect.value;

            visibleCards.sort((a, b) => {
                switch(sortBy) {
                    case 'date-desc':
                        return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
                    case 'date-asc':
                        return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
                    case 'title-asc':
                        return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
                    case 'title-desc':
                        return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
                    case 'status':
                        return a.getAttribute('data-status').localeCompare(b.getAttribute('data-status'));
                    default:
                        return 0;
                }
            });

            // Reorder cards in DOM
            visibleCards.forEach(card => {
                projectsGrid.appendChild(card);
            });
        }
    });
</script>
{{ end }}

```

Perfect! Now let's complete our final lesson and create a summary:

# 🎉 Hugo Collections Learning Journey Complete

Congratulations! You've successfully completed all 5 lessons on Hugo collections. Here's what you've learned and built:

## 📚 What You've Accomplished

### ✅ **Lesson 1: Understanding Collections**

- Learned what Hugo collections are and how they work
- Understood the relationship between content structure and collections
- Explored Hugo's built-in collection types

### ✅ **Lesson 2: Blog Collection**

- Created a `content/blog/` folder with 3 sample posts
- Built custom layouts (`layouts/blog/list.html` and `layouts/blog/single.html`)
- Implemented programmatic display using Hugo template functions
- Added featured posts, tags, categories, and author information

### ✅ **Lesson 3: Projects Collection**

- Created a `content/projects/` folder with 3 sample projects
- Built advanced layouts with different front matter structure
- Implemented project-specific features (status, technologies, GitHub links)
- Created interactive filtering and sorting capabilities

### ✅ **Lesson 4: Programmatic Display**

- Mastered key Hugo template functions:
  - `{{ range .Pages }}` - Loop through pages
  - `{{ where .Pages "Params.featured" true }}` - Filter by front matter
  - `{{ len .Pages }}` - Count pages
  - `{{ first 3 .Pages }}` - Get first N pages
  - `{{ .Site.RegularPages }}` - Access all pages
- Created a comprehensive collections overview page
- Built analytics and statistics displays

### ✅ **Lesson 5: Advanced Features**

- Added pagination configuration
- Implemented advanced filtering and sorting
- Created search functionality for projects
- Added responsive design and interactive JavaScript
- Built comprehensive collection management tools

## 🚀 **Your Hugo Site Now Has:**

### **Blog Collection** (`/blog/`)

- ✅ 3 sample blog posts with rich front matter
- ✅ Featured post highlighting
- ✅ Tag and category system
- ✅ Author information
- ✅ Advanced filtering (All, Featured, Tutorials, Reviews)
- ✅ Sorting (Date, Title)
- ✅ Pagination support

### **Projects Collection** (`/projects/`)

- ✅ 3 sample projects with different structures
- ✅ Status tracking (Completed, In Progress)
- ✅ Technology tags
- ✅ GitHub and demo links
- ✅ Advanced search functionality
- ✅ Multiple sorting options
- ✅ Interactive filtering

### **Enhanced Homepage**

- ✅ Collection overview with statistics
- ✅ Recent content from both collections
- ✅ Cross-collection navigation
- ✅ Dynamic content display

### **Collections Overview Page** (`/collections/`)

- ✅ Live analytics and statistics
- ✅ Tag cloud generation
- ✅ Recent activity feed
- ✅ Template function examples
- ✅ Comprehensive collection data

## 🔧 **Key Hugo Concepts You've Mastered:**

1. **Content Organization**: Using folder structure to create collections
2. **Front Matter**: Rich metadata for content organization
3. **Template Functions**: Programmatic content manipulation
4. **Layouts**: Custom templates for different content types
5. **Filtering & Sorting**: Advanced content organization
6. **Pagination**: Handling large collections
7. **JavaScript Integration**: Interactive features
8. **Responsive Design**: Mobile-friendly layouts

## 🌐 **Your Site is Live!**

Visit these URLs to see your collections in action:

- **Homepage**: `http://localhost:1313/`
- **Blog Collection**: `http://localhost:1313/blog/`
- **Projects Collection**: `http://localhost:1313/projects/`
- **Collections Overview**: `http://localhost:1313/collections/`

## 🎯 **Next Steps to Continue Learning:**

1. **Add More Content**: Create additional blog posts and projects
2. **Customize Styling**: Modify the CSS to match your brand
3. **Add Taxonomies**: Enable categories and tags as taxonomies
4. **Create Shortcodes**: Build reusable content components
5. **Add RSS Feeds**: Enable automatic feed generation
6. **Deploy**: Learn about deploying Hugo sites to various platforms

You now have a solid foundation in Hugo collections and can build sophisticated, content-rich static sites! The skills you've learned here will serve you well in any Hugo project.

---

**User**

Thanks for all this and the lessons.  I think an error was encountered though.  viewing the home page (or any page) reveals this:

```
deprecated: site config key paginate was deprecated in Hugo v0.128.0 and subsequently removed. Use pagination.pagerSize instead. deprecated: site config key paginatePath was deprecated in Hugo v0.128.0 and subsequently removed. Use pagination.path instead. template: projects/list.html:61: function "join" not defined Error getting the Hugo object function "join" not defined
```

---

**Cursor**

I see the issues! Let me fix these errors for you. There are two main problems:

1. **Deprecated pagination configuration** - Hugo v0.128.0+ uses a different format
2. **Missing `join` function** - This function isn't available in Hugo templates

Let me fix these:

```plaintext
baseURL = 'https://example.org/'
languageCode = 'en-us'
title = 'My New Hugo Site'
disableKinds = ['taxonomy', 'term']

# Pagination settings (Hugo v0.128.0+ format)
[pagination]
  pagerSize = 5
  path = "page"

```

Now let's fix the `join` function issue. In Hugo, we need to use `delimit` instead of `join`:

```html
{{ define "main" }}
<div class="projects-header">
    <h1>{{ .Title | default "Projects Portfolio" }}</h1>
    <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
    <div class="stat-card">
        <h3>{{ len .Pages }}</h3>
        <p>Total Projects</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
        <p>Completed</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
        <p>Featured</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
        <p>In Progress</p>
    </div>
</div>

<div class="projects-filters">
    <div class="search-section">
        <h3>Search Projects</h3>
        <input type="text" id="projectSearch" placeholder="Search by title, description, or technology..."
            class="search-input">
    </div>

    <div class="filter-section">
        <h3>Filter by Status:</h3>
        <div class="filter-buttons">
            <button class="filter-btn active" data-filter="all">All</button>
            <button class="filter-btn" data-filter="completed">Completed</button>
            <button class="filter-btn" data-filter="in-progress">In Progress</button>
            <button class="filter-btn" data-filter="featured">Featured</button>
        </div>
    </div>

    <div class="sort-section">
        <h3>Sort By:</h3>
        <select id="projectSort" class="sort-select">
            <option value="date-desc">Date (Newest First)</option>
            <option value="date-asc">Date (Oldest First)</option>
            <option value="title-asc">Title (A-Z)</option>
            <option value="title-desc">Title (Z-A)</option>
            <option value="status">Status</option>
        </select>
    </div>
</div>

<div class="projects-grid">
    {{ range .Pages }}
    <div class="project-card" data-status="{{ .Params.status }}" data-featured="{{ .Params.featured }}"
        data-title="{{ .Title | lower }}" data-description="{{ .Params.description | lower }}"
         data-technologies="{{ .Params.technologies | delimit " " | lower }}" data-date="{{ .Date.Format " 2006-01-02" }}"
        data-type="{{ .Params.project_type | lower }}">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
        {{ end }}

        <div class="project-image">
            {{ if .Params.image }}
            <img src="{{ .Params.image }}" alt="{{ .Title }}" />
            {{ else }}
            <div class="placeholder-image">
                <span>{{ .Title | truncate 2 }}</span>
            </div>
            {{ end }}
        </div>

        <div class="project-content">
            <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

            <div class="project-meta">
                <span class="project-type">{{ .Params.project_type | title }}</span>
                <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
            </div>

            <p class="project-description">{{ .Params.description }}</p>

            <div class="project-technologies">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>

            <div class="project-links">
                {{ if .Params.github_url }}
                <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                    GitHub
                </a>
                {{ end }}
                {{ if .Params.demo_url }}
                <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                    Live Demo
                </a>
                {{ end }}
            </div>
        </div>
    </div>
    {{ end }}
</div>

<style>
    .projects-header {
        text-align: center;
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
    }

    .projects-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 3rem;
    }

    .stat-card {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #e9ecef;
    }

    .stat-card h3 {
        font-size: 2rem;
        margin: 0;
        color: #007bff;
    }

    .stat-card p {
        margin: 0.5rem 0 0 0;
        color: #666;
        font-size: 0.9rem;
    }

    .projects-filters {
        background: #f8f9fa;
        padding: 2rem;
        border-radius: 12px;
        margin-bottom: 2rem;
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 2rem;
    }

    .search-section h3,
    .filter-section h3,
    .sort-section h3 {
        margin: 0 0 1rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .search-input {
        width: 100%;
        padding: 0.8rem;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        transition: border-color 0.3s;
    }

    .search-input:focus {
        outline: none;
        border-color: #007bff;
        box-shadow: 0 0 0 2px rgba(0, 123, 255, 0.25);
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .sort-select {
        width: 100%;
        padding: 0.8rem;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        background: white;
    }

    @media (max-width: 768px) {
        .projects-filters {
            grid-template-columns: 1fr;
            gap: 1.5rem;
        }
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .projects-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
        gap: 2rem;
    }

    .project-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        position: relative;
    }

    .project-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        z-index: 1;
    }

    .project-image {
        height: 200px;
        overflow: hidden;
        background: #f8f9fa;
    }

    .project-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .placeholder-image {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        font-size: 2rem;
        font-weight: bold;
    }

    .project-content {
        padding: 1.5rem;
    }

    .project-content h2 {
        margin: 0 0 1rem 0;
        font-size: 1.3rem;
    }

    .project-content h2 a {
        color: #333;
        text-decoration: none;
    }

    .project-content h2 a:hover {
        color: #007bff;
    }

    .project-meta {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        font-size: 0.9rem;
    }

    .project-type {
        color: #666;
    }

    .project-status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-description {
        color: #666;
        line-height: 1.6;
        margin-bottom: 1rem;
    }

    .project-technologies {
        margin-bottom: 1rem;
    }

    .tech-tag {
        display: inline-block;
        background: #e9ecef;
        color: #495057;
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
        margin-bottom: 0.3rem;
    }

    .project-links {
        display: flex;
        gap: 0.5rem;
    }

    .project-link {
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

    .project-link.demo:hover {
        background: #0056b3;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = Array.from(document.querySelectorAll('.project-card'));
        const searchInput = document.getElementById('projectSearch');
        const sortSelect = document.getElementById('projectSort');
        const projectsGrid = document.querySelector('.projects-grid');

        let currentFilter = 'all';
        let currentSearch = '';

        // Filter functionality
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                currentFilter = this.getAttribute('data-filter');
                applyFilters();
            });
        });

        // Search functionality
        searchInput.addEventListener('input', function () {
            currentSearch = this.value.toLowerCase();
            applyFilters();
        });

        // Sort functionality
        sortSelect.addEventListener('change', function () {
            applySorting();
        });

        function applyFilters() {
            projectCards.forEach(card => {
                const matchesFilter = matchesCurrentFilter(card);
                const matchesSearch = matchesCurrentSearch(card);

                if (matchesFilter && matchesSearch) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });

            applySorting();
        }

        function matchesCurrentFilter(card) {
            if (currentFilter === 'all') return true;
            if (currentFilter === 'featured') return card.getAttribute('data-featured') === 'true';
            return card.getAttribute('data-status') === currentFilter;
        }

        function matchesCurrentSearch(card) {
            if (!currentSearch) return true;

            const title = card.getAttribute('data-title');
            const description = card.getAttribute('data-description');
            const technologies = card.getAttribute('data-technologies');

            return title.includes(currentSearch) ||
                description.includes(currentSearch) ||
                technologies.includes(currentSearch);
        }

        function applySorting() {
            const visibleCards = projectCards.filter(card => card.style.display !== 'none');
            const sortBy = sortSelect.value;

            visibleCards.sort((a, b) => {
                switch (sortBy) {
                    case 'date-desc':
                        return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
                    case 'date-asc':
                        return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
                    case 'title-asc':
                        return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
                    case 'title-desc':
                        return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
                    case 'status':
                        return a.getAttribute('data-status').localeCompare(b.getAttribute('data-status'));
                    default:
                        return 0;
                }
            });

            // Reorder cards in DOM
            visibleCards.forEach(card => {
                projectsGrid.appendChild(card);
            });
        }
    });
</script>
{{ end }}

```

Perfect! Now let's test the site to make sure the errors are resolved:

Let me check what the specific error is:

Great! The build completed successfully with no errors. Let me check if the Hugo server is still running and verify everything is working:

Perfect! The Hugo server is still running. Let me also check if there are any remaining issues by looking at the current terminal output:

It looks like there might still be an issue. Let me check the Hugo server logs to see what's happening:

Let me wait a moment for the server to start and then test it:

Let me check if the server is running and what the status is:

It looks like the Hugo server isn't running. Let me start it again and check for any errors:

Let me wait a moment and then test the site:

Let me check if there are any build errors by running Hugo directly:

Let me run Hugo without the quiet flag to see what errors we're getting:

Ah! I see the issue. The `delimit` function expects a string, but we're passing it an array. Let me fix this by using a different approach:

```html
{{ define "main" }}
<div class="projects-header">
    <h1>{{ .Title | default "Projects Portfolio" }}</h1>
    <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
    <div class="stat-card">
        <h3>{{ len .Pages }}</h3>
        <p>Total Projects</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
        <p>Completed</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
        <p>Featured</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
        <p>In Progress</p>
    </div>
</div>

<div class="projects-filters">
    <div class="search-section">
        <h3>Search Projects</h3>
        <input type="text" id="projectSearch" placeholder="Search by title, description, or technology..."
            class="search-input">
    </div>

    <div class="filter-section">
        <h3>Filter by Status:</h3>
        <div class="filter-buttons">
            <button class="filter-btn active" data-filter="all">All</button>
            <button class="filter-btn" data-filter="completed">Completed</button>
            <button class="filter-btn" data-filter="in-progress">In Progress</button>
            <button class="filter-btn" data-filter="featured">Featured</button>
        </div>
    </div>

    <div class="sort-section">
        <h3>Sort By:</h3>
        <select id="projectSort" class="sort-select">
            <option value="date-desc">Date (Newest First)</option>
            <option value="date-asc">Date (Oldest First)</option>
            <option value="title-asc">Title (A-Z)</option>
            <option value="title-desc">Title (Z-A)</option>
            <option value="status">Status</option>
        </select>
    </div>
</div>

<div class="projects-grid">
    {{ range .Pages }}
    <div class="project-card" data-status="{{ .Params.status }}" data-featured="{{ .Params.featured }}"
        data-title="{{ .Title | lower }}" data-description="{{ .Params.description | lower }}"
         data-technologies="{{ delimit .Params.technologies " " | lower }}" data-date="{{ .Date.Format " 2006-01-02"
        }}" data-type="{{ .Params.project_type | lower }}">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
        {{ end }}

        <div class="project-image">
            {{ if .Params.image }}
            <img src="{{ .Params.image }}" alt="{{ .Title }}" />
            {{ else }}
            <div class="placeholder-image">
                <span>{{ .Title | truncate 2 }}</span>
            </div>
            {{ end }}
        </div>

        <div class="project-content">
            <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

            <div class="project-meta">
                <span class="project-type">{{ .Params.project_type | title }}</span>
                <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
            </div>

            <p class="project-description">{{ .Params.description }}</p>

            <div class="project-technologies">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>

            <div class="project-links">
                {{ if .Params.github_url }}
                <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                    GitHub
                </a>
                {{ end }}
                {{ if .Params.demo_url }}
                <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                    Live Demo
                </a>
                {{ end }}
            </div>
        </div>
    </div>
    {{ end }}
</div>

<style>
    .projects-header {
        text-align: center;
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
    }

    .projects-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 3rem;
    }

    .stat-card {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #e9ecef;
    }

    .stat-card h3 {
        font-size: 2rem;
        margin: 0;
        color: #007bff;
    }

    .stat-card p {
        margin: 0.5rem 0 0 0;
        color: #666;
        font-size: 0.9rem;
    }

    .projects-filters {
        background: #f8f9fa;
        padding: 2rem;
        border-radius: 12px;
        margin-bottom: 2rem;
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 2rem;
    }

    .search-section h3,
    .filter-section h3,
    .sort-section h3 {
        margin: 0 0 1rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .search-input {
        width: 100%;
        padding: 0.8rem;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        transition: border-color 0.3s;
    }

    .search-input:focus {
        outline: none;
        border-color: #007bff;
        box-shadow: 0 0 0 2px rgba(0, 123, 255, 0.25);
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .sort-select {
        width: 100%;
        padding: 0.8rem;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        background: white;
    }

    @media (max-width: 768px) {
        .projects-filters {
            grid-template-columns: 1fr;
            gap: 1.5rem;
        }
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .projects-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
        gap: 2rem;
    }

    .project-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        position: relative;
    }

    .project-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        z-index: 1;
    }

    .project-image {
        height: 200px;
        overflow: hidden;
        background: #f8f9fa;
    }

    .project-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .placeholder-image {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        font-size: 2rem;
        font-weight: bold;
    }

    .project-content {
        padding: 1.5rem;
    }

    .project-content h2 {
        margin: 0 0 1rem 0;
        font-size: 1.3rem;
    }

    .project-content h2 a {
        color: #333;
        text-decoration: none;
    }

    .project-content h2 a:hover {
        color: #007bff;
    }

    .project-meta {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        font-size: 0.9rem;
    }

    .project-type {
        color: #666;
    }

    .project-status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-description {
        color: #666;
        line-height: 1.6;
        margin-bottom: 1rem;
    }

    .project-technologies {
        margin-bottom: 1rem;
    }

    .tech-tag {
        display: inline-block;
        background: #e9ecef;
        color: #495057;
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
        margin-bottom: 0.3rem;
    }

    .project-links {
        display: flex;
        gap: 0.5rem;
    }

    .project-link {
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

    .project-link.demo:hover {
        background: #0056b3;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = Array.from(document.querySelectorAll('.project-card'));
        const searchInput = document.getElementById('projectSearch');
        const sortSelect = document.getElementById('projectSort');
        const projectsGrid = document.querySelector('.projects-grid');

        let currentFilter = 'all';
        let currentSearch = '';

        // Filter functionality
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                currentFilter = this.getAttribute('data-filter');
                applyFilters();
            });
        });

        // Search functionality
        searchInput.addEventListener('input', function () {
            currentSearch = this.value.toLowerCase();
            applyFilters();
        });

        // Sort functionality
        sortSelect.addEventListener('change', function () {
            applySorting();
        });

        function applyFilters() {
            projectCards.forEach(card => {
                const matchesFilter = matchesCurrentFilter(card);
                const matchesSearch = matchesCurrentSearch(card);

                if (matchesFilter && matchesSearch) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });

            applySorting();
        }

        function matchesCurrentFilter(card) {
            if (currentFilter === 'all') return true;
            if (currentFilter === 'featured') return card.getAttribute('data-featured') === 'true';
            return card.getAttribute('data-status') === currentFilter;
        }

        function matchesCurrentSearch(card) {
            if (!currentSearch) return true;

            const title = card.getAttribute('data-title');
            const description = card.getAttribute('data-description');
            const technologies = card.getAttribute('data-technologies');

            return title.includes(currentSearch) ||
                description.includes(currentSearch) ||
                technologies.includes(currentSearch);
        }

        function applySorting() {
            const visibleCards = projectCards.filter(card => card.style.display !== 'none');
            const sortBy = sortSelect.value;

            visibleCards.sort((a, b) => {
                switch (sortBy) {
                    case 'date-desc':
                        return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
                    case 'date-asc':
                        return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
                    case 'title-asc':
                        return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
                    case 'title-desc':
                        return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
                    case 'status':
                        return a.getAttribute('data-status').localeCompare(b.getAttribute('data-status'));
                    default:
                        return 0;
                }
            });

            // Reorder cards in DOM
            visibleCards.forEach(card => {
                projectsGrid.appendChild(card);
            });
        }
    });
</script>
{{ end }}

```

Now let's test the build again:

Excellent! The build is now successful. Let's start the server again:

Let me wait a moment and test the site:

Perfect! 🎉 The errors have been fixed! Let me update our todo list to reflect that we've resolved the issues:

## ✅ **All Errors Fixed!**

Great news! I've successfully resolved both issues:

### **🔧 Issues Fixed:**

1. **✅ Deprecated Pagination Configuration**
   - **Problem**: Hugo v0.128.0+ deprecated the old `paginate` and `paginatePath` keys
   - **Solution**: Updated to the new format using `[pagination]` section with `pagerSize` and `path`

2. **✅ Template Function Error**
   - **Problem**: `join` function doesn't exist in Hugo templates
   - **Solution**: Changed to `delimit` function with correct syntax: `{{ delimit .Params.technologies " " }}`

### **🚀 Your Hugo Site is Now Working Perfectly!**

**Visit your collections:**

- **Homepage**: `http://localhost:1313/` - Shows collection overview and recent content
- **Blog Collection**: `http://localhost:1313/blog/` - Advanced filtering, sorting, and pagination
- **Projects Collection**: `http://localhost:1313/projects/` - Search, filter, and sort functionality
- **Collections Overview**: `http://localhost:1313/collections/` - Live analytics and statistics

### **🎯 What You've Successfully Built:**

✅ **Two Complete Collections** (Blog & Projects)
✅ **Advanced Filtering & Sorting**
✅ **Search Functionality**
✅ **Pagination Support**
✅ **Responsive Design**
✅ **Interactive JavaScript Features**
✅ **Live Analytics & Statistics**
✅ **Cross-Collection Navigation**

Your Hugo collections learning journey is now complete and fully functional! You have a sophisticated static site with powerful collection management capabilities. 🎉

---

**User**

Thanks!  Looking good.  I'd like to create a collection called "authors" to contain bio and details on authors that contibute content.  with that collection in place, i'd like to be able to use the collection to show how one or more authors contributed to another content type...like two authors on a blog post or three authors on a project.  can you please help me realize this concept?

---

**Cursor**

Excellent idea! Creating an "authors" collection and linking it to other content is a powerful Hugo concept. This will demonstrate advanced collection relationships and cross-referencing. Let me guide you through this step by step.

# Creating an Authors Collection with Cross-References

This is a fantastic advanced Hugo concept! We'll create an authors collection and show how to link multiple authors to blog posts and projects. This demonstrates Hugo's powerful content relationships.

## Step 1: Create the Authors Collection

Let's start by creating the authors collection structure:

Now let's create some sample author profiles with rich front matter:

```markdown
---
title: "John Doe"
slug: "john-doe"
date: 2024-01-01
draft: false
bio: "Senior Full-Stack Developer with 8+ years of experience in web technologies"
role: "Lead Developer"
company: "TechCorp Inc."
location: "San Francisco, CA"
website: "https://johndoe.dev"
github: "johndoe"
twitter: "@johndoe"
linkedin: "john-doe-dev"
email: "john@example.com"
avatar: "/images/authors/john-doe.jpg"
specialties: ["JavaScript", "React", "Node.js", "Hugo", "Web Development"]
expertise_level: "Expert"
years_experience: 8
featured: true
description: "Passionate about creating fast, accessible web experiences and sharing knowledge through technical writing."
---

# John Doe

John is a Senior Full-Stack Developer with over 8 years of experience building scalable web applications. He specializes in modern JavaScript frameworks, static site generation, and developer tooling.

## Background

John started his career as a frontend developer and gradually expanded into full-stack development. He has worked with startups and enterprise companies, always focusing on performance and user experience.

## Current Focus

Currently, John is leading the development of a new static site generation platform and mentoring junior developers. He's passionate about Hugo and has contributed to several open-source projects.

## Writing Style

John writes clear, practical tutorials that developers can immediately apply to their projects. His articles focus on real-world problems and solutions.

## Outside of Work

When not coding, John enjoys hiking, photography, and experimenting with new web technologies. He's also an active member of the local developer community.
```

```markdown
---
title: "Jane Smith"
slug: "jane-smith"
date: 2024-01-02
draft: false
bio: "UX Designer and Frontend Developer passionate about creating intuitive user experiences"
role: "UX Designer & Frontend Developer"
company: "DesignStudio"
location: "New York, NY"
website: "https://janesmith.design"
github: "janesmith"
twitter: "@janesmith"
linkedin: "jane-smith-ux"
email: "jane@example.com"
avatar: "/images/authors/jane-smith.jpg"
specialties: ["UX Design", "CSS", "Accessibility", "User Research", "Design Systems"]
expertise_level: "Expert"
years_experience: 6
featured: true
description: "Bridging the gap between design and development to create beautiful, functional user experiences."
---

# Jane Smith

Jane is a UX Designer and Frontend Developer who believes great design and great code go hand in hand. With 6 years of experience, she specializes in creating accessible, user-centered digital experiences.

## Design Philosophy

Jane approaches every project with a user-first mindset, ensuring that both the visual design and technical implementation serve the end user's needs. She's particularly passionate about accessibility and inclusive design.

## Technical Skills

While primarily focused on design, Jane has strong frontend development skills, particularly in CSS, HTML, and JavaScript. This dual expertise allows her to create designs that are both beautiful and technically feasible.

## Current Projects

Jane is currently working on a comprehensive design system and contributing to open-source accessibility tools. She regularly speaks at design and development conferences.

## Writing Focus

Jane's articles focus on the intersection of design and development, covering topics like design systems, accessibility, and the design-to-code workflow.
```

```markdown
---
title: "Mike Johnson"
slug: "mike-johnson"
date: 2024-01-03
draft: false
bio: "DevOps Engineer and Technical Writer focused on infrastructure and automation"
role: "DevOps Engineer"
company: "CloudTech Solutions"
location: "Austin, TX"
website: "https://mikejohnson.tech"
github: "mikejohnson"
twitter: "@mikejohnson"
linkedin: "mike-johnson-devops"
email: "mike@example.com"
avatar: "/images/authors/mike-johnson.jpg"
specialties: ["DevOps", "AWS", "Docker", "Kubernetes", "CI/CD", "Infrastructure"]
expertise_level: "Senior"
years_experience: 5
featured: false
description: "Simplifying complex infrastructure concepts and helping teams scale their deployment processes."
---

# Mike Johnson

Mike is a DevOps Engineer with 5 years of experience in cloud infrastructure and automation. He specializes in helping development teams scale their deployment processes and infrastructure management.

## Infrastructure Focus

Mike has extensive experience with AWS, Docker, Kubernetes, and various CI/CD tools. He's passionate about infrastructure as code and automation best practices.

## Technical Writing

Mike enjoys breaking down complex infrastructure concepts into digestible articles. His writing helps developers understand DevOps practices and implement them effectively.

## Community Involvement

Mike is an active contributor to several open-source projects and regularly shares his knowledge through blog posts and conference talks.

## Current Focus

Currently, Mike is working on improving deployment pipelines and exploring new cloud technologies. He's particularly interested in edge computing and serverless architectures.
```

```markdown
---
title: "Sarah Wilson"
slug: "sarah-wilson"
date: 2024-01-04
draft: false
bio: "Product Manager and Technical Strategist with a focus on developer tools and platforms"
role: "Senior Product Manager"
company: "PlatformCorp"
location: "Seattle, WA"
website: "https://sarahwilson.pm"
github: "sarahwilson"
twitter: "@sarahwilson"
linkedin: "sarah-wilson-pm"
email: "sarah@example.com"
avatar: "/images/authors/sarah-wilson.jpg"
specialties: ["Product Management", "Strategy", "Developer Tools", "API Design", "Team Leadership"]
expertise_level: "Senior"
years_experience: 7
featured: true
description: "Building products that developers love while balancing business needs and technical constraints."
---

# Sarah Wilson

Sarah is a Senior Product Manager with 7 years of experience in developer tools and platform products. She has a unique background combining technical expertise with business strategy.

## Product Philosophy

Sarah believes that great products emerge from understanding both user needs and business constraints. She's particularly skilled at translating complex technical concepts into clear product requirements.

## Technical Background

With a computer science degree and hands-on development experience, Sarah can effectively communicate with engineering teams and make informed technical decisions.

## Leadership Experience

Sarah has led product teams at both startups and large companies, always focusing on developer experience and platform scalability.

## Writing Style

Sarah's articles focus on product strategy, team management, and the intersection of business and technology. She provides practical insights for both technical and non-technical audiences.
```

Now let's create layouts for the authors collection:

## Step 2: Create Author Layouts

```html
{{ define "main" }}
<div class="authors-header">
  <h1>{{ .Title | default "Our Authors" }}</h1>
  <p>Meet the talented people behind our content and projects.</p>
</div>

<div class="authors-stats">
  <div class="stat-card">
    <h3>{{ len .Pages }}</h3>
    <p>Total Authors</p>
  </div>
  <div class="stat-card">
    <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
    <p>Featured Authors</p>
  </div>
  <div class="stat-card">
    <h3>{{ len (where .Pages "Params.expertise_level" "Expert") }}</h3>
    <p>Expert Level</p>
  </div>
  <div class="stat-card">
    <h3>{{ len (where .Pages "Params.role" "Lead Developer") }}</h3>
    <p>Lead Developers</p>
  </div>
</div>

<div class="authors-filters">
  <div class="filter-section">
    <h3>Filter by Role:</h3>
    <div class="filter-buttons">
      <button class="filter-btn active" data-filter="all">All</button>
      <button class="filter-btn" data-filter="featured">Featured</button>
      <button class="filter-btn" data-filter="expert">Expert Level</button>
      <button class="filter-btn" data-filter="developer">Developers</button>
      <button class="filter-btn" data-filter="designer">Designers</button>
    </div>
  </div>

  <div class="search-section">
    <h3>Search Authors:</h3>
    <input type="text" id="authorSearch" placeholder="Search by name, role, or specialty..." class="search-input">
  </div>
</div>

<div class="authors-grid" id="authorsGrid">
  {{ range .Pages }}
    <div class="author-card"
         data-featured="{{ .Params.featured }}"
         data-role="{{ .Params.role | lower }}"
         data-expertise="{{ .Params.expertise_level | lower }}"
         data-specialties="{{ delimit .Params.specialties " " | lower }}"
         data-name="{{ .Title | lower }}">

      {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
      {{ end }}

      <div class="author-avatar">
        {{ if .Params.avatar }}
          <img src="{{ .Params.avatar }}" alt="{{ .Title }}" />
        {{ else }}
          <div class="avatar-placeholder">
            <span>{{ .Title | truncate 2 }}</span>
          </div>
        {{ end }}
      </div>

      <div class="author-info">
        <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>
        <p class="author-role">{{ .Params.role }}</p>
        <p class="author-company">{{ .Params.company }}</p>
        <p class="author-location">{{ .Params.location }}</p>

        <div class="author-bio">
          <p>{{ .Params.bio | truncate 120 }}</p>
        </div>

        <div class="author-specialties">
          {{ range first 3 .Params.specialties }}
            <span class="specialty-tag">{{ . }}</span>
          {{ end }}
          {{ if gt (len .Params.specialties) 3 }}
            <span class="specialty-more">+{{ sub (len .Params.specialties) 3 }} more</span>
          {{ end }}
        </div>

        <div class="author-stats">
          <span class="experience">{{ .Params.years_experience }}+ years</span>
          <span class="level">{{ .Params.expertise_level }}</span>
        </div>

        <div class="author-links">
          {{ if .Params.github }}
            <a href="https://github.com/{{ .Params.github }}" target="_blank" class="author-link github">GitHub</a>
          {{ end }}
          {{ if .Params.twitter }}
            <a href="https://twitter.com/{{ .Params.twitter }}" target="_blank" class="author-link twitter">Twitter</a>
          {{ end }}
          {{ if .Params.website }}
            <a href="{{ .Params.website }}" target="_blank" class="author-link website">Website</a>
          {{ end }}
        </div>
      </div>
    </div>
  {{ end }}
</div>

<style>
.authors-header {
  text-align: center;
  margin-bottom: 3rem;
  padding-bottom: 2rem;
  border-bottom: 2px solid #eee;
}

.authors-header h1 {
  color: #333;
  margin-bottom: 1rem;
  font-size: 2.5rem;
}

.authors-stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1rem;
  margin-bottom: 3rem;
}

.stat-card {
  background: #f8f9fa;
  padding: 1.5rem;
  border-radius: 8px;
  text-align: center;
  border: 1px solid #e9ecef;
}

.stat-card h3 {
  font-size: 2rem;
  margin: 0;
  color: #007bff;
}

.stat-card p {
  margin: 0.5rem 0 0 0;
  color: #666;
  font-size: 0.9rem;
}

.authors-filters {
  background: #f8f9fa;
  padding: 2rem;
  border-radius: 12px;
  margin-bottom: 3rem;
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 2rem;
}

.filter-section h3,
.search-section h3 {
  margin: 0 0 1rem 0;
  color: #333;
  font-size: 1.1rem;
}

.filter-buttons {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

.filter-btn {
  padding: 0.5rem 1rem;
  border: 1px solid #ddd;
  background: white;
  border-radius: 20px;
  cursor: pointer;
  transition: all 0.3s;
  font-size: 0.9rem;
}

.filter-btn:hover,
.filter-btn.active {
  background: #007bff;
  color: white;
  border-color: #007bff;
}

.search-input {
  width: 100%;
  padding: 0.8rem;
  border: 1px solid #ddd;
  border-radius: 8px;
  font-size: 1rem;
  transition: border-color 0.3s;
}

.search-input:focus {
  outline: none;
  border-color: #007bff;
  box-shadow: 0 0 0 2px rgba(0, 123, 255, 0.25);
}

.authors-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
  gap: 2rem;
}

.author-card {
  background: white;
  border-radius: 12px;
  overflow: hidden;
  box-shadow: 0 4px 6px rgba(0,0,0,0.1);
  transition: transform 0.3s, box-shadow 0.3s;
  position: relative;
}

.author-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 25px rgba(0,0,0,0.15);
}

.featured-badge {
  position: absolute;
  top: 1rem;
  right: 1rem;
  background: #ffc107;
  color: #333;
  padding: 0.3rem 0.6rem;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: bold;
  z-index: 1;
}

.author-avatar {
  height: 120px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
}

.author-avatar img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  object-fit: cover;
  border: 3px solid white;
}

.avatar-placeholder {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  background: rgba(255,255,255,0.2);
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-size: 1.5rem;
  font-weight: bold;
}

.author-info {
  padding: 1.5rem;
}

.author-info h2 {
  margin: 0 0 0.5rem 0;
  font-size: 1.3rem;
}

.author-info h2 a {
  color: #333;
  text-decoration: none;
}

.author-info h2 a:hover {
  color: #007bff;
}

.author-role {
  color: #007bff;
  font-weight: bold;
  margin: 0 0 0.3rem 0;
  font-size: 0.9rem;
}

.author-company,
.author-location {
  color: #666;
  font-size: 0.9rem;
  margin: 0 0 0.3rem 0;
}

.author-bio {
  margin: 1rem 0;
  color: #666;
  line-height: 1.6;
  font-size: 0.9rem;
}

.author-specialties {
  margin: 1rem 0;
  display: flex;
  flex-wrap: wrap;
  gap: 0.3rem;
}

.specialty-tag {
  background: #e9ecef;
  color: #495057;
  padding: 0.2rem 0.5rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
}

.specialty-more {
  color: #666;
  font-size: 0.8rem;
  font-style: italic;
}

.author-stats {
  display: flex;
  gap: 1rem;
  margin: 1rem 0;
  font-size: 0.9rem;
}

.experience {
  color: #28a745;
  font-weight: bold;
}

.level {
  color: #007bff;
  font-weight: bold;
}

.author-links {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
}

.author-link {
  padding: 0.3rem 0.6rem;
  border-radius: 12px;
  text-decoration: none;
  font-size: 0.8rem;
  font-weight: bold;
  transition: all 0.3s;
}

.author-link.github {
  background: #333;
  color: white;
}

.author-link.twitter {
  background: #1da1f2;
  color: white;
}

.author-link.website {
  background: #007bff;
  color: white;
}

.author-link:hover {
  transform: translateY(-1px);
  opacity: 0.9;
}

@media (max-width: 768px) {
  .authors-filters {
    grid-template-columns: 1fr;
    gap: 1.5rem;
  }

  .authors-grid {
    grid-template-columns: 1fr;
  }
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const filterButtons = document.querySelectorAll('.filter-btn');
  const searchInput = document.getElementById('authorSearch');
  const authorCards = Array.from(document.querySelectorAll('.author-card'));

  let currentFilter = 'all';
  let currentSearch = '';

  // Filter functionality
  filterButtons.forEach(button => {
    button.addEventListener('click', function() {
      filterButtons.forEach(btn => btn.classList.remove('active'));
      this.classList.add('active');
      currentFilter = this.getAttribute('data-filter');
      applyFilters();
    });
  });

  // Search functionality
  searchInput.addEventListener('input', function() {
    currentSearch = this.value.toLowerCase();
    applyFilters();
  });

  function applyFilters() {
    authorCards.forEach(card => {
      const matchesFilter = matchesCurrentFilter(card);
      const matchesSearch = matchesCurrentSearch(card);

      if (matchesFilter && matchesSearch) {
        card.style.display = 'block';
      } else {
        card.style.display = 'none';
      }
    });
  }

  function matchesCurrentFilter(card) {
    if (currentFilter === 'all') return true;
    if (currentFilter === 'featured') return card.getAttribute('data-featured') === 'true';
    if (currentFilter === 'expert') return card.getAttribute('data-expertise') === 'expert';
    if (currentFilter === 'developer') return card.getAttribute('data-role').includes('developer');
    if (currentFilter === 'designer') return card.getAttribute('data-role').includes('designer');
    return true;
  }

  function matchesCurrentSearch(card) {
    if (!currentSearch) return true;

    const name = card.getAttribute('data-name');
    const role = card.getAttribute('data-role');
    const specialties = card.getAttribute('data-specialties');

    return name.includes(currentSearch) ||
           role.includes(currentSearch) ||
           specialties.includes(currentSearch);
  }
});
</script>
{{ end }}
```

Now let's create the single author layout:

```html
{{ define "main" }}
<article class="author-single">
  <header class="author-header">
    {{ if .Params.featured }}
      <div class="featured-badge">⭐ Featured Author</div>
    {{ end }}

    <div class="author-profile">
      <div class="author-avatar-large">
        {{ if .Params.avatar }}
          <img src="{{ .Params.avatar }}" alt="{{ .Title }}" />
        {{ else }}
          <div class="avatar-placeholder-large">
            <span>{{ .Title | truncate 2 }}</span>
          </div>
        {{ end }}
      </div>

      <div class="author-details">
        <h1>{{ .Title }}</h1>
        <p class="author-role">{{ .Params.role }}</p>
        <p class="author-company">{{ .Params.company }}</p>
        <p class="author-location">{{ .Params.location }}</p>

        <div class="author-bio-short">
          <p>{{ .Params.bio }}</p>
        </div>

        <div class="author-stats">
          <div class="stat">
            <strong>{{ .Params.years_experience }}+</strong>
            <span>Years Experience</span>
          </div>
          <div class="stat">
            <strong>{{ .Params.expertise_level }}</strong>
            <span>Level</span>
          </div>
          <div class="stat">
            <strong>{{ len .Params.specialties }}</strong>
            <span>Specialties</span>
          </div>
        </div>

        <div class="author-links">
          {{ if .Params.website }}
            <a href="{{ .Params.website }}" target="_blank" class="author-link website">
              <span>🌐</span> Website
            </a>
          {{ end }}
          {{ if .Params.github }}
            <a href="https://github.com/{{ .Params.github }}" target="_blank" class="author-link github">
              <span>💻</span> GitHub
            </a>
          {{ end }}
          {{ if .Params.twitter }}
            <a href="https://twitter.com/{{ .Params.twitter }}" target="_blank" class="author-link twitter">
              <span>🐦</span> Twitter
            </a>
          {{ end }}
          {{ if .Params.linkedin }}
            <a href="https://linkedin.com/in/{{ .Params.linkedin }}" target="_blank" class="author-link linkedin">
              <span>💼</span> LinkedIn
            </a>
          {{ end }}
          {{ if .Params.email }}
            <a href="mailto:{{ .Params.email }}" class="author-link email">
              <span>📧</span> Email
            </a>
          {{ end }}
        </div>
      </div>
    </div>
  </header>

  <div class="author-content">
    <div class="author-full-bio">
      <h2>About {{ .Title }}</h2>
      {{ .Content }}
    </div>

    <div class="author-specialties">
      <h2>Specialties & Expertise</h2>
      <div class="specialties-grid">
        {{ range .Params.specialties }}
          <span class="specialty-tag">{{ . }}</span>
        {{ end }}
      </div>
    </div>

    <div class="author-content-stats">
      <h2>Content by {{ .Title }}</h2>

      {{ $authorSlug := .Params.slug }}
      {{ $blogPosts := where .Site.RegularPages "Section" "blog" }}
      {{ $authorBlogPosts := where $blogPosts "Params.authors" "in" (slice $authorSlug) }}

      {{ $projectPages := where .Site.RegularPages "Section" "projects" }}
      {{ $authorProjects := where $projectPages "Params.authors" "in" (slice $authorSlug) }}

      <div class="content-stats">
        <div class="content-stat">
          <h3>{{ len $authorBlogPosts }}</h3>
          <p>Blog Posts</p>
        </div>
        <div class="content-stat">
          <h3>{{ len $authorProjects }}</h3>
          <p>Projects</p>
        </div>
        <div class="content-stat">
          <h3>{{ add (len $authorBlogPosts) (len $authorProjects) }}</h3>
          <p>Total Content</p>
        </div>
      </div>

      {{ if $authorBlogPosts }}
        <div class="author-blog-posts">
          <h3>Recent Blog Posts</h3>
          <div class="posts-list">
            {{ range first 3 $authorBlogPosts }}
              <div class="post-item">
                <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
                <p>{{ .Params.description | default .Summary | truncate 100 }}</p>
                <div class="post-meta">
                  <span>{{ .Date.Format "Jan 2, 2006" }}</span>
                  {{ if .Params.featured }}<span class="featured">⭐ Featured</span>{{ end }}
                </div>
              </div>
            {{ end }}
          </div>
        </div>
      {{ end }}

      {{ if $authorProjects }}
        <div class="author-projects">
          <h3>Projects</h3>
          <div class="projects-list">
            {{ range first 3 $authorProjects }}
              <div class="project-item">
                <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
                <p>{{ .Params.description | truncate 100 }}</p>
                <div class="project-meta">
                  <span class="status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
                  <span class="type">{{ .Params.project_type | title }}</span>
                </div>
              </div>
            {{ end }}
          </div>
        </div>
      {{ end }}
    </div>
  </div>

  <footer class="author-footer">
    <div class="author-navigation">
      {{ with .PrevInSection }}
        <a href="{{ .Permalink }}" class="nav-link prev">
          <span>←</span> {{ .Title }}
        </a>
      {{ end }}
      {{ with .NextInSection }}
        <a href="{{ .Permalink }}" class="nav-link next">
          {{ .Title }} <span>→</span>
        </a>
      {{ end }}
    </div>

    <div class="related-authors">
      <h3>Other Authors</h3>
      {{ $related := .Site.RegularPages.Related . | first 3 }}
      {{ with $related }}
        <div class="related-grid">
          {{ range . }}
            <div class="related-item">
              <a href="{{ .Permalink }}">
                <h4>{{ .Title }}</h4>
                <p>{{ .Params.role }}</p>
                <span class="related-specialty">{{ .Params.specialties | first 1 }}</span>
              </a>
            </div>
          {{ end }}
        </div>
      {{ end }}
    </div>
  </footer>
</article>

<style>
.author-single {
  max-width: 1000px;
  margin: 0 auto;
  padding: 2rem;
}

.author-header {
  margin-bottom: 3rem;
  padding-bottom: 2rem;
  border-bottom: 2px solid #eee;
  position: relative;
}

.featured-badge {
  position: absolute;
  top: 0;
  right: 0;
  background: #ffc107;
  color: #333;
  padding: 0.5rem 1rem;
  border-radius: 20px;
  font-size: 0.9rem;
  font-weight: bold;
}

.author-profile {
  display: grid;
  grid-template-columns: 200px 1fr;
  gap: 2rem;
  align-items: start;
}

.author-avatar-large {
  text-align: center;
}

.author-avatar-large img {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  object-fit: cover;
  border: 4px solid #007bff;
}

.avatar-placeholder-large {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  color: white;
  font-size: 3rem;
  font-weight: bold;
  margin: 0 auto;
}

.author-details h1 {
  color: #333;
  margin-bottom: 0.5rem;
  font-size: 2.5rem;
}

.author-role {
  color: #007bff;
  font-weight: bold;
  font-size: 1.2rem;
  margin: 0 0 0.5rem 0;
}

.author-company,
.author-location {
  color: #666;
  font-size: 1rem;
  margin: 0 0 0.3rem 0;
}

.author-bio-short {
  margin: 1.5rem 0;
  font-size: 1.1rem;
  line-height: 1.6;
  color: #555;
}

.author-stats {
  display: flex;
  gap: 2rem;
  margin: 1.5rem 0;
}

.stat {
  text-align: center;
  background: #f8f9fa;
  padding: 1rem;
  border-radius: 8px;
  border: 1px solid #e9ecef;
}

.stat strong {
  display: block;
  font-size: 1.5rem;
  color: #007bff;
  margin-bottom: 0.3rem;
}

.stat span {
  color: #666;
  font-size: 0.9rem;
}

.author-links {
  display: flex;
  gap: 0.8rem;
  flex-wrap: wrap;
  margin-top: 1.5rem;
}

.author-link {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.8rem 1.2rem;
  border-radius: 25px;
  text-decoration: none;
  font-weight: bold;
  transition: all 0.3s;
  font-size: 0.9rem;
}

.author-link.website {
  background: #007bff;
  color: white;
}

.author-link.github {
  background: #333;
  color: white;
}

.author-link.twitter {
  background: #1da1f2;
  color: white;
}

.author-link.linkedin {
  background: #0077b5;
  color: white;
}

.author-link.email {
  background: #28a745;
  color: white;
}

.author-link:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0,0,0,0.15);
}

.author-content {
  margin-bottom: 3rem;
}

.author-content h2 {
  color: #333;
  margin-top: 2.5rem;
  margin-bottom: 1.5rem;
  font-size: 1.8rem;
}

.author-full-bio {
  background: #f8f9fa;
  padding: 2rem;
  border-radius: 8px;
  border-left: 4px solid #007bff;
  margin-bottom: 2rem;
}

.author-full-bio h2 {
  margin-top: 0;
}

.specialties-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 0.8rem;
}

.specialty-tag {
  background: #007bff;
  color: white;
  padding: 0.8rem 1.2rem;
  border-radius: 20px;
  font-size: 0.9rem;
  font-weight: bold;
}

.content-stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1rem;
  margin: 2rem 0;
}

.content-stat {
  background: white;
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1.5rem;
  text-align: center;
}

.content-stat h3 {
  font-size: 2rem;
  margin: 0 0 0.5rem 0;
  color: #007bff;
}

.content-stat p {
  margin: 0;
  color: #666;
  font-size: 0.9rem;
}

.author-blog-posts,
.author-projects {
  margin: 2rem 0;
}

.author-blog-posts h3,
.author-projects h3 {
  color: #333;
  margin-bottom: 1.5rem;
  font-size: 1.3rem;
}

.posts-list,
.projects-list {
  display: grid;
  gap: 1.5rem;
}

.post-item,
.project-item {
  background: white;
  border: 1px solid #ddd;
  border-radius: 8px;
  padding: 1.5rem;
  transition: all 0.3s;
}

.post-item:hover,
.project-item:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

.post-item h4,
.project-item h4 {
  margin: 0 0 0.5rem 0;
  font-size: 1.2rem;
}

.post-item h4 a,
.project-item h4 a {
  color: #333;
  text-decoration: none;
}

.post-item h4 a:hover,
.project-item h4 a:hover {
  color: #007bff;
}

.post-item p,
.project-item p {
  color: #666;
  margin-bottom: 1rem;
  line-height: 1.6;
}

.post-meta,
.project-meta {
  display: flex;
  gap: 1rem;
  font-size: 0.9rem;
  color: #666;
}

.featured {
  color: #ffc107;
  font-weight: bold;
}

.status {
  padding: 0.2rem 0.5rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
}

.status-completed {
  background: #d4edda;
  color: #155724;
}

.status-in-progress {
  background: #fff3cd;
  color: #856404;
}

.type {
  color: #666;
}

.author-footer {
  margin-top: 3rem;
  padding-top: 2rem;
  border-top: 2px solid #eee;
}

.author-navigation {
  display: flex;
  justify-content: space-between;
  margin-bottom: 3rem;
  gap: 1rem;
}

.nav-link {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 1rem 1.5rem;
  border: 2px solid #007bff;
  border-radius: 8px;
  text-decoration: none;
  color: #007bff;
  font-weight: bold;
  transition: all 0.3s;
  flex: 1;
  max-width: 300px;
}

.nav-link:hover {
  background: #007bff;
  color: white;
  transform: translateY(-2px);
}

.related-authors h3 {
  color: #333;
  margin-bottom: 1.5rem;
  font-size: 1.5rem;
}

.related-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
}

.related-item {
  background: white;
  border: 1px solid #ddd;
  border-radius: 8px;
  overflow: hidden;
  transition: transform 0.3s, box-shadow 0.3s;
}

.related-item:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(0,0,0,0.1);
}

.related-item a {
  display: block;
  padding: 1.5rem;
  text-decoration: none;
  color: inherit;
}

.related-item h4 {
  margin: 0 0 0.5rem 0;
  color: #333;
  font-size: 1.1rem;
}

.related-item p {
  color: #666;
  font-size: 0.9rem;
  margin-bottom: 1rem;
}

.related-specialty {
  background: #e9ecef;
  color: #495057;
  padding: 0.3rem 0.6rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: bold;
}

@media (max-width: 768px) {
  .author-profile {
    grid-template-columns: 1fr;
    text-align: center;
  }

  .author-stats {
    justify-content: center;
  }

  .author-navigation {
    flex-direction: column;
  }
}
</style>
{{ end }}
```

## Step 3: Link Authors to Blog Posts and Projects

Now let's update our existing blog posts and projects to include author references. We'll use the author slugs to create the relationships:

```markdown
---
title: "Getting Started with Hugo"
date: 2024-01-15
draft: false
tags: ["hugo", "tutorial", "web-development"]
categories: ["tutorials"]
authors: ["john-doe"]
description: "Learn the basics of Hugo static site generator"
featured: true
---

# Getting Started with Hugo

Hugo is a fast and flexible static site generator built with Go. In this post, we'll explore the fundamentals of Hugo and how to get started.

## What is Hugo?

Hugo is a static site generator that takes your content and templates and generates a complete website. It's known for its speed and flexibility.

## Key Features

- **Speed**: Hugo is incredibly fast
- **Flexibility**: Highly customizable
- **Content Management**: Markdown-based content
- **Templating**: Powerful templating system

## Getting Started

To get started with Hugo, you need to:

1. Install Hugo
2. Create a new site
3. Add content
4. Customize themes
5. Deploy your site

This is just the beginning of your Hugo journey!

```

```markdown
---
title: "Advanced Hugo Techniques"
date: 2024-01-20
draft: false
tags: ["hugo", "advanced", "templates"]
categories: ["tutorials"]
authors: ["jane-smith", "john-doe"]
description: "Master advanced Hugo templating and customization"
featured: false
---

# Advanced Hugo Techniques

Once you've mastered the basics of Hugo, it's time to explore advanced techniques that will make your sites more powerful and flexible.

## Custom Collections

Hugo allows you to create custom collections by organizing your content in specific ways. This gives you powerful control over how content is grouped and displayed.

## Template Functions

Hugo provides a rich set of template functions that allow you to:

- Manipulate data
- Create complex layouts
- Filter and sort content
- Generate dynamic content

## Shortcodes

Shortcodes are Hugo's way of creating reusable content components. They allow you to embed complex HTML or functionality into your markdown content.

## Performance Optimization

Learn how to optimize your Hugo site for maximum performance and SEO.

```

```markdown
---
title: "Hugo vs Other Static Site Generators"
date: 2024-01-25
draft: false
tags: ["hugo", "comparison", "static-sites"]
categories: ["reviews"]
authors: ["mike-johnson", "sarah-wilson"]
description: "Comparing Hugo with Jekyll, Gatsby, and other popular static site generators"
featured: true
---

# Hugo vs Other Static Site Generators

When choosing a static site generator, it's important to understand the differences between popular options.

## Hugo vs Jekyll

**Hugo Advantages:**

- Much faster build times
- No dependencies (single binary)
- More flexible templating

**Jekyll Advantages:**

- Larger community
- More themes available
- GitHub Pages integration

## Hugo vs Gatsby

**Hugo Advantages:**

- Simpler setup
- No JavaScript required
- Better for content-focused sites

**Gatsby Advantages:**

- React-based
- Rich plugin ecosystem
- Better for complex web applications

## Conclusion

Hugo excels at content-focused sites where speed and simplicity are priorities.

```

Now let's update the projects to include authors:

```markdown
---
title: "Hugo Learning Site"
date: 2024-01-10
draft: false
project_type: "web-development"
technologies: ["hugo", "markdown", "html", "css"]
status: "completed"
github_url: "https://github.com/example/hugo-learning"
demo_url: "https://hugo-learning.example.com"
featured: true
description: "A comprehensive Hugo tutorial site with collections and advanced features"
image: "/images/hugo-site-preview.jpg"
authors: ["john-doe", "jane-smith"]
---

# Hugo Learning Site

This project demonstrates advanced Hugo features including custom collections, templating, and content organization.

## Project Overview

The Hugo Learning Site is a comprehensive tutorial platform that teaches users how to build static sites with Hugo. It includes multiple content types, custom layouts, and interactive examples.

## Key Features

- **Custom Collections**: Blog posts, tutorials, and projects
- **Advanced Templating**: Dynamic content display and filtering
- **Responsive Design**: Mobile-first approach
- **SEO Optimized**: Meta tags and structured data

## Technologies Used

- Hugo Static Site Generator
- Markdown for content
- HTML/CSS for styling
- JavaScript for interactivity

## Project Timeline

- **Planning**: 1 week
- **Development**: 3 weeks
- **Testing**: 1 week
- **Deployment**: 3 days

## Lessons Learned

This project taught me the power of Hugo's templating system and how to create flexible, maintainable static sites.

```

```markdown
---
title: "Portfolio Website"
date: 2024-01-05
draft: false
project_type: "web-development"
technologies: ["react", "nextjs", "typescript", "tailwind"]
status: "in-progress"
github_url: "https://github.com/example/portfolio"
demo_url: "https://portfolio.example.com"
featured: false
description: "A modern portfolio website built with Next.js and TypeScript"
image: "/images/portfolio-preview.jpg"
authors: ["jane-smith"]
---

# Portfolio Website

A modern, responsive portfolio website showcasing my development skills and projects.

## Project Overview

This portfolio website serves as both a professional showcase and a learning project. It demonstrates modern web development practices and showcases various projects I've worked on.

## Key Features

- **Modern Design**: Clean, professional aesthetic
- **Responsive Layout**: Works on all device sizes
- **Interactive Elements**: Smooth animations and transitions
- **Performance Optimized**: Fast loading times and SEO

## Technologies Used

- Next.js 14
- TypeScript
- Tailwind CSS
- Framer Motion for animations
- Vercel for deployment

## Development Process

The project follows a component-driven development approach with reusable UI components and a well-structured codebase.

## Future Enhancements

- Blog integration
- Contact form with email integration
- Dark mode toggle
- Multi-language support

```

```markdown
---
title: "API Documentation Generator"
date: 2024-01-01
draft: false
project_type: "tooling"
technologies: ["python", "fastapi", "swagger", "docker"]
status: "completed"
github_url: "https://github.com/example/api-docs"
demo_url: "https://api-docs.example.com"
featured: true
description: "Automated API documentation generator with interactive examples"
image: "/images/api-docs-preview.jpg"
authors: ["mike-johnson", "sarah-wilson", "john-doe"]
---

# API Documentation Generator

An automated tool for generating comprehensive API documentation from OpenAPI specifications.

## Project Overview

This tool automatically generates beautiful, interactive API documentation from OpenAPI/Swagger specifications. It includes code examples, interactive testing, and comprehensive guides.

## Key Features

- **Auto-Generation**: Creates docs from OpenAPI specs
- **Interactive Testing**: Built-in API testing interface
- **Code Examples**: Multiple language examples
- **Search Functionality**: Full-text search across documentation
- **Customizable Themes**: Multiple design options

## Technologies Used

- Python 3.9+
- FastAPI for the backend
- React for the frontend
- Docker for containerization
- Swagger/OpenAPI for specification

## Technical Implementation

The tool parses OpenAPI specifications and generates a static documentation site with interactive features. It supports multiple output formats and can be integrated into CI/CD pipelines.

## Impact

This tool has been adopted by multiple teams, reducing documentation time by 80% and improving API adoption rates.

```

## Step 4: Update Blog and Project Layouts to Show Authors

Now let's update our blog and project layouts to display the linked authors:

```html
{{ define "main" }}
<div class="blog-header">
    <h1>{{ .Title | default "Blog Posts" }}</h1>
    <p>Welcome to our blog! Here are all our posts:</p>
</div>

<div class="blog-stats">
    <p><strong>Total Posts:</strong> {{ len .Pages }}</p>
    <p><strong>Featured Posts:</strong> {{ len (where .Pages "Params.featured" true) }}</p>
</div>

<!-- Advanced Filtering and Sorting -->
<div class="blog-controls">
    <div class="filter-section">
        <h3>Filter Posts</h3>
        <div class="filter-buttons">
            <button class="filter-btn active" data-filter="all">All Posts</button>
            <button class="filter-btn" data-filter="featured">Featured Only</button>
            <button class="filter-btn" data-filter="tutorials">Tutorials</button>
            <button class="filter-btn" data-filter="reviews">Reviews</button>
        </div>
    </div>

    <div class="sort-section">
        <h3>Sort By</h3>
        <select id="sortSelect" class="sort-select">
            <option value="date-desc">Date (Newest First)</option>
            <option value="date-asc">Date (Oldest First)</option>
            <option value="title-asc">Title (A-Z)</option>
            <option value="title-desc">Title (Z-A)</option>
        </select>
    </div>
</div>

<div class="blog-posts" id="blogPosts">
    {{ range .Pages }}
    <article class="blog-post" data-featured="{{ .Params.featured }}" data-category="{{ .Params.categories | first 1 }}"
        data-date="{{ .Date.Format " 2006-01-02" }}" data-title="{{ .Title | lower }}">
        <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>
      <div class="post-meta">
        <span class="date">{{ .Date.Format "January 2, 2006" }}</span>
        {{ if .Params.authors }}
          <span class="authors">
            by
            {{ range $i, $authorSlug := .Params.authors }}
              {{ $author := $.Site.GetPage (printf "/authors/%s" $authorSlug) }}
              {{ if $author }}
                {{ if $i }}, {{ end }}<a href="{{ $author.Permalink }}">{{ $author.Title }}</a>
              {{ end }}
            {{ end }}
          </span>
        {{ else }}
          <span class="author">by Anonymous</span>
        {{ end }}
        {{ if .Params.tags }}
          <span class="tags">
            {{ range .Params.tags }}
              <span class="tag">{{ . }}</span>
            {{ end }}
          </span>
        {{ end }}
      </div>
        <div class="post-excerpt">
            {{ .Summary }}
        </div>
        {{ if .Params.featured }}
        <span class="featured-badge">⭐ Featured</span>
        {{ end }}
    </article>
    {{ end }}
</div>

<!-- Pagination -->
{{ if gt .Paginator.TotalPages 1 }}
<div class="pagination">
    {{ if .Paginator.HasPrev }}
    <a href="{{ .Paginator.Prev.URL }}" class="pagination-btn prev">← Previous</a>
    {{ end }}

    <span class="pagination-info">
        Page {{ .Paginator.PageNumber }} of {{ .Paginator.TotalPages }}
    </span>

    {{ if .Paginator.HasNext }}
    <a href="{{ .Paginator.Next.URL }}" class="pagination-btn next">Next →</a>
    {{ end }}
</div>
{{ end }}

<style>
    .blog-header {
        margin-bottom: 2rem;
        padding-bottom: 1rem;
        border-bottom: 2px solid #eee;
    }

    .blog-stats {
        background: #f8f9fa;
        padding: 1rem;
        border-radius: 5px;
        margin-bottom: 2rem;
    }

    .blog-controls {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        margin-bottom: 2rem;
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 2rem;
    }

    .filter-section h3,
    .sort-section h3 {
        margin: 0 0 1rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
        font-size: 0.9rem;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .sort-select {
        padding: 0.5rem;
        border: 1px solid #ddd;
        border-radius: 5px;
        background: white;
        font-size: 0.9rem;
        width: 100%;
    }

    .blog-posts {
        display: grid;
        gap: 2rem;
    }

    .blog-post {
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 1.5rem;
        background: white;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        position: relative;
        transition: all 0.3s;
    }

    .blog-post:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .blog-post h2 {
        margin-top: 0;
        color: #333;
    }

    .blog-post h2 a {
        text-decoration: none;
        color: inherit;
    }

    .blog-post h2 a:hover {
        color: #007bff;
    }

    .post-meta {
        color: #666;
        font-size: 0.9rem;
        margin: 0.5rem 0;
    }

    .post-meta span {
        margin-right: 1rem;
    }

    .tags {
        display: inline-block;
    }

    .tag {
        background: #e9ecef;
        padding: 0.2rem 0.5rem;
        border-radius: 3px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
    }

    .post-excerpt {
        margin: 1rem 0;
        line-height: 1.6;
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .pagination {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 1rem;
        margin-top: 3rem;
        padding: 2rem 0;
        border-top: 1px solid #eee;
    }

    .pagination-btn {
        padding: 0.8rem 1.5rem;
        background: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
        transition: all 0.3s;
    }

    .pagination-btn:hover {
        background: #0056b3;
        transform: translateY(-2px);
    }

    .pagination-info {
        color: #666;
        font-weight: bold;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .blog-controls {
            grid-template-columns: 1fr;
            gap: 1rem;
        }

        .filter-buttons {
            justify-content: center;
        }
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const sortSelect = document.getElementById('sortSelect');
        const blogPosts = document.getElementById('blogPosts');
        const posts = Array.from(document.querySelectorAll('.blog-post'));

        // Filter functionality
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                // Remove active class from all buttons
                filterButtons.forEach(btn => btn.classList.remove('active'));
                // Add active class to clicked button
                this.classList.add('active');

                const filter = this.getAttribute('data-filter');

                posts.forEach(post => {
                    if (filter === 'all') {
                        post.style.display = 'block';
                    } else if (filter === 'featured') {
                        if (post.getAttribute('data-featured') === 'true') {
                            post.style.display = 'block';
                        } else {
                            post.style.display = 'none';
                        }
                    } else if (filter === 'tutorials') {
                        if (post.getAttribute('data-category') === 'tutorials') {
                            post.style.display = 'block';
                        } else {
                            post.style.display = 'none';
                        }
                    } else if (filter === 'reviews') {
                        if (post.getAttribute('data-category') === 'reviews') {
                            post.style.display = 'block';
                        } else {
                            post.style.display = 'none';
                        }
                    }
                });
            });
        });

        // Sort functionality
        sortSelect.addEventListener('change', function () {
            const sortBy = this.value;
            const visiblePosts = posts.filter(post => post.style.display !== 'none');

            visiblePosts.sort((a, b) => {
                switch (sortBy) {
                    case 'date-desc':
                        return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
                    case 'date-asc':
                        return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
                    case 'title-asc':
                        return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
                    case 'title-desc':
                        return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
                    default:
                        return 0;
                }
            });

            // Reorder posts in DOM
            visiblePosts.forEach(post => {
                blogPosts.appendChild(post);
            });
        });
    });
</script>
{{ end }}

```

Let's also update the blog single layout:

```html
{{ define "main" }}
<article class="blog-post-single">
    <header class="post-header">
        <h1>{{ .Title }}</h1>
    <div class="post-meta">
      <span class="date">{{ .Date.Format "January 2, 2006" }}</span>
      {{ if .Params.authors }}
        <div class="authors">
          <span>by</span>
          {{ range $i, $authorSlug := .Params.authors }}
            {{ $author := $.Site.GetPage (printf "/authors/%s" $authorSlug) }}
            {{ if $author }}
              {{ if $i }}, {{ end }}<a href="{{ $author.Permalink }}" class="author-link">{{ $author.Title }}</a>
            {{ end }}
          {{ end }}
        </div>
      {{ else }}
        <span class="author">by Anonymous</span>
      {{ end }}
      {{ if .Params.tags }}
        <div class="tags">
          {{ range .Params.tags }}
            <span class="tag">{{ . }}</span>
          {{ end }}
        </div>
      {{ end }}
      {{ if .Params.featured }}
        <span class="featured-badge">⭐ Featured Post</span>
      {{ end }}
    </div>
    </header>

    <div class="post-content">
        {{ .Content }}
    </div>

    <footer class="post-footer">
        <div class="post-navigation">
            {{ with .PrevInSection }}
            <a href="{{ .Permalink }}" class="nav-link prev">← {{ .Title }}</a>
            {{ end }}
            {{ with .NextInSection }}
            <a href="{{ .Permalink }}" class="nav-link next">{{ .Title }} →</a>
            {{ end }}
        </div>

        <div class="related-posts">
            <h3>Related Posts</h3>
            {{ $related := .Site.RegularPages.Related . | first 3 }}
            {{ with $related }}
            <ul>
                {{ range . }}
                <li><a href="{{ .Permalink }}">{{ .Title }}</a></li>
                {{ end }}
            </ul>
            {{ end }}
        </div>
    </footer>
</article>

<style>
    .blog-post-single {
        max-width: 800px;
        margin: 0 auto;
        padding: 2rem;
    }

    .post-header {
        margin-bottom: 2rem;
        padding-bottom: 1rem;
        border-bottom: 2px solid #eee;
    }

    .post-header h1 {
        color: #333;
        margin-bottom: 1rem;
    }

    .post-meta {
        color: #666;
        font-size: 0.9rem;
    }

    .post-meta span {
        margin-right: 1rem;
    }

    .tags {
        margin-top: 0.5rem;
    }

    .tag {
        background: #e9ecef;
        padding: 0.2rem 0.5rem;
        border-radius: 3px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
    }

    .featured-badge {
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        display: inline-block;
        margin-top: 0.5rem;
    }

    .post-content {
        line-height: 1.8;
        font-size: 1.1rem;
    }

    .post-content h1,
    .post-content h2,
    .post-content h3 {
        color: #333;
        margin-top: 2rem;
        margin-bottom: 1rem;
    }

    .post-content h1 {
        font-size: 2rem;
    }

    .post-content h2 {
        font-size: 1.5rem;
    }

    .post-content h3 {
        font-size: 1.3rem;
    }

    .post-footer {
        margin-top: 3rem;
        padding-top: 2rem;
        border-top: 1px solid #eee;
    }

    .post-navigation {
        display: flex;
        justify-content: space-between;
        margin-bottom: 2rem;
    }

    .nav-link {
        text-decoration: none;
        color: #007bff;
        padding: 0.5rem 1rem;
        border: 1px solid #007bff;
        border-radius: 5px;
        transition: all 0.3s;
    }

    .nav-link:hover {
        background: #007bff;
        color: white;
    }

    .related-posts h3 {
        color: #333;
        margin-bottom: 1rem;
    }

    .related-posts ul {
        list-style: none;
        padding: 0;
    }

    .related-posts li {
        margin-bottom: 0.5rem;
    }

    .related-posts a {
        color: #007bff;
        text-decoration: none;
    }

    .related-posts a:hover {
        text-decoration: underline;
    }
</style>
{{ end }}

```

Now let's update the projects layouts to show authors:

```html
{{ define "main" }}
<div class="projects-header">
    <h1>{{ .Title | default "Projects Portfolio" }}</h1>
    <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
    <div class="stat-card">
        <h3>{{ len .Pages }}</h3>
        <p>Total Projects</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
        <p>Completed</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
        <p>Featured</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
        <p>In Progress</p>
    </div>
</div>

<div class="projects-filters">
    <div class="search-section">
        <h3>Search Projects</h3>
        <input type="text" id="projectSearch" placeholder="Search by title, description, or technology..."
            class="search-input">
    </div>

    <div class="filter-section">
        <h3>Filter by Status:</h3>
        <div class="filter-buttons">
            <button class="filter-btn active" data-filter="all">All</button>
            <button class="filter-btn" data-filter="completed">Completed</button>
            <button class="filter-btn" data-filter="in-progress">In Progress</button>
            <button class="filter-btn" data-filter="featured">Featured</button>
        </div>
    </div>

    <div class="sort-section">
        <h3>Sort By:</h3>
        <select id="projectSort" class="sort-select">
            <option value="date-desc">Date (Newest First)</option>
            <option value="date-asc">Date (Oldest First)</option>
            <option value="title-asc">Title (A-Z)</option>
            <option value="title-desc">Title (Z-A)</option>
            <option value="status">Status</option>
        </select>
    </div>
</div>

<div class="projects-grid">
    {{ range .Pages }}
    <div class="project-card" data-status="{{ .Params.status }}" data-featured="{{ .Params.featured }}"
        data-title="{{ .Title | lower }}" data-description="{{ .Params.description | lower }}"
        data-technologies="{{ delimit .Params.technologies " " | lower }}" data-date="{{ .Date.Format " 2006-01-02" }}"
        data-type="{{ .Params.project_type | lower }}">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
        {{ end }}

        <div class="project-image">
            {{ if .Params.image }}
            <img src="{{ .Params.image }}" alt="{{ .Title }}" />
            {{ else }}
            <div class="placeholder-image">
                <span>{{ .Title | truncate 2 }}</span>
            </div>
            {{ end }}
        </div>

        <div class="project-content">
            <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

        <div class="project-meta">
            <span class="project-type">{{ .Params.project_type | title }}</span>
            <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
        </div>

        {{ if .Params.authors }}
        <div class="project-authors">
            <span class="authors-label">Authors:</span>
            {{ range $i, $authorSlug := .Params.authors }}
                {{ $author := $.Site.GetPage (printf "/authors/%s" $authorSlug) }}
                {{ if $author }}
                    {{ if $i }}, {{ end }}<a href="{{ $author.Permalink }}" class="author-link">{{ $author.Title }}</a>
                {{ end }}
            {{ end }}
        </div>
        {{ end }}

            <p class="project-description">{{ .Params.description }}</p>

            <div class="project-technologies">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>

            <div class="project-links">
                {{ if .Params.github_url }}
                <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                    GitHub
                </a>
                {{ end }}
                {{ if .Params.demo_url }}
                <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                    Live Demo
                </a>
                {{ end }}
            </div>
        </div>
    </div>
    {{ end }}
</div>

<style>
    .projects-header {
        text-align: center;
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
    }

    .projects-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 3rem;
    }

    .stat-card {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #e9ecef;
    }

    .stat-card h3 {
        font-size: 2rem;
        margin: 0;
        color: #007bff;
    }

    .stat-card p {
        margin: 0.5rem 0 0 0;
        color: #666;
        font-size: 0.9rem;
    }

    .projects-filters {
        background: #f8f9fa;
        padding: 2rem;
        border-radius: 12px;
        margin-bottom: 2rem;
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 2rem;
    }

    .search-section h3,
    .filter-section h3,
    .sort-section h3 {
        margin: 0 0 1rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .search-input {
        width: 100%;
        padding: 0.8rem;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        transition: border-color 0.3s;
    }

    .search-input:focus {
        outline: none;
        border-color: #007bff;
        box-shadow: 0 0 0 2px rgba(0, 123, 255, 0.25);
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .sort-select {
        width: 100%;
        padding: 0.8rem;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        background: white;
    }

    @media (max-width: 768px) {
        .projects-filters {
            grid-template-columns: 1fr;
            gap: 1.5rem;
        }
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .projects-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
        gap: 2rem;
    }

    .project-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        position: relative;
    }

    .project-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        z-index: 1;
    }

    .project-image {
        height: 200px;
        overflow: hidden;
        background: #f8f9fa;
    }

    .project-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .placeholder-image {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        font-size: 2rem;
        font-weight: bold;
    }

    .project-content {
        padding: 1.5rem;
    }

    .project-content h2 {
        margin: 0 0 1rem 0;
        font-size: 1.3rem;
    }

    .project-content h2 a {
        color: #333;
        text-decoration: none;
    }

    .project-content h2 a:hover {
        color: #007bff;
    }

    .project-meta {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        font-size: 0.9rem;
    }

    .project-type {
        color: #666;
    }

    .project-status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-description {
        color: #666;
        line-height: 1.6;
        margin-bottom: 1rem;
    }

    .project-technologies {
        margin-bottom: 1rem;
    }

    .tech-tag {
        display: inline-block;
        background: #e9ecef;
        color: #495057;
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
        margin-bottom: 0.3rem;
    }

    .project-links {
        display: flex;
        gap: 0.5rem;
    }

    .project-link {
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

    .project-link.demo:hover {
        background: #0056b3;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = Array.from(document.querySelectorAll('.project-card'));
        const searchInput = document.getElementById('projectSearch');
        const sortSelect = document.getElementById('projectSort');
        const projectsGrid = document.querySelector('.projects-grid');

        let currentFilter = 'all';
        let currentSearch = '';

        // Filter functionality
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                currentFilter = this.getAttribute('data-filter');
                applyFilters();
            });
        });

        // Search functionality
        searchInput.addEventListener('input', function () {
            currentSearch = this.value.toLowerCase();
            applyFilters();
        });

        // Sort functionality
        sortSelect.addEventListener('change', function () {
            applySorting();
        });

        function applyFilters() {
            projectCards.forEach(card => {
                const matchesFilter = matchesCurrentFilter(card);
                const matchesSearch = matchesCurrentSearch(card);

                if (matchesFilter && matchesSearch) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });

            applySorting();
        }

        function matchesCurrentFilter(card) {
            if (currentFilter === 'all') return true;
            if (currentFilter === 'featured') return card.getAttribute('data-featured') === 'true';
            return card.getAttribute('data-status') === currentFilter;
        }

        function matchesCurrentSearch(card) {
            if (!currentSearch) return true;

            const title = card.getAttribute('data-title');
            const description = card.getAttribute('data-description');
            const technologies = card.getAttribute('data-technologies');

            return title.includes(currentSearch) ||
                description.includes(currentSearch) ||
                technologies.includes(currentSearch);
        }

        function applySorting() {
            const visibleCards = projectCards.filter(card => card.style.display !== 'none');
            const sortBy = sortSelect.value;

            visibleCards.sort((a, b) => {
                switch (sortBy) {
                    case 'date-desc':
                        return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
                    case 'date-asc':
                        return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
                    case 'title-asc':
                        return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
                    case 'title-desc':
                        return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
                    case 'status':
                        return a.getAttribute('data-status').localeCompare(b.getAttribute('data-status'));
                    default:
                        return 0;
                }
            });

            // Reorder cards in DOM
            visibleCards.forEach(card => {
                projectsGrid.appendChild(card);
            });
        }
    });
</script>
{{ end }}

```

Let's also update the project single layout:

```html
{{ define "main" }}
<article class="project-single">
    <header class="project-header">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured Project</div>
        {{ end }}

        <h1>{{ .Title }}</h1>

    <div class="project-meta">
      <div class="meta-item">
        <strong>Type:</strong> {{ .Params.project_type | title }}
      </div>
      <div class="meta-item">
        <strong>Status:</strong>
        <span class="status-badge status-{{ .Params.status }}">{{ .Params.status | title }}</span>
      </div>
      <div class="meta-item">
        <strong>Date:</strong> {{ .Date.Format "January 2, 2006" }}
      </div>
      {{ if .Params.authors }}
      <div class="meta-item">
        <strong>Authors:</strong>
        <div class="authors-list">
          {{ range $i, $authorSlug := .Params.authors }}
            {{ $author := $.Site.GetPage (printf "/authors/%s" $authorSlug) }}
            {{ if $author }}
              {{ if $i }}, {{ end }}<a href="{{ $author.Permalink }}" class="author-link">{{ $author.Title }}</a>
            {{ end }}
          {{ end }}
        </div>
      </div>
      {{ end }}
    </div>

        <div class="project-links">
            {{ if .Params.github_url }}
            <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                <span>🔗</span> View on GitHub
            </a>
            {{ end }}
            {{ if .Params.demo_url }}
            <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                <span>🚀</span> Live Demo
            </a>
            {{ end }}
        </div>
    </header>

    {{ if .Params.image }}
    <div class="project-image">
        <img src="{{ .Params.image }}" alt="{{ .Title }}" />
    </div>
    {{ end }}

    <div class="project-content">
        <div class="project-description">
            <h2>Project Overview</h2>
            <p>{{ .Params.description }}</p>
        </div>

        <div class="project-technologies">
            <h2>Technologies Used</h2>
            <div class="tech-grid">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>
        </div>

        <div class="project-details">
            <h2>Project Details</h2>
            {{ .Content }}
        </div>
    </div>

    <footer class="project-footer">
        <div class="project-navigation">
            {{ with .PrevInSection }}
            <a href="{{ .Permalink }}" class="nav-link prev">
                <span>←</span> {{ .Title }}
            </a>
            {{ end }}
            {{ with .NextInSection }}
            <a href="{{ .Permalink }}" class="nav-link next">
                {{ .Title }} <span>→</span>
            </a>
            {{ end }}
        </div>

        <div class="related-projects">
            <h3>Other Projects</h3>
            {{ $related := .Site.RegularPages.Related . | first 3 }}
            {{ with $related }}
            <div class="related-grid">
                {{ range . }}
                <div class="related-item">
                    <a href="{{ .Permalink }}">
                        <h4>{{ .Title }}</h4>
                        <p>{{ .Params.description | truncate 100 }}</p>
                        <span class="related-tech">{{ .Params.project_type | title }}</span>
                    </a>
                </div>
                {{ end }}
            </div>
            {{ end }}
        </div>
    </footer>
</article>

<style>
    .project-single {
        max-width: 900px;
        margin: 0 auto;
        padding: 2rem;
    }

    .project-header {
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
        position: relative;
    }

    .featured-badge {
        position: absolute;
        top: 0;
        right: 0;
        background: #ffc107;
        color: #333;
        padding: 0.5rem 1rem;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: bold;
    }

    .project-header h1 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 2.5rem;
    }

    .project-meta {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 1rem;
        margin-bottom: 2rem;
    }

    .meta-item {
        background: #f8f9fa;
        padding: 1rem;
        border-radius: 8px;
        border: 1px solid #e9ecef;
    }

    .status-badge {
        padding: 0.3rem 0.6rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-links {
        display: flex;
        gap: 1rem;
        flex-wrap: wrap;
    }

    .project-link {
        display: inline-flex;
        align-items: center;
        gap: 0.5rem;
        padding: 0.8rem 1.5rem;
        border-radius: 8px;
        text-decoration: none;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
        transform: translateY(-2px);
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

    .project-link.demo:hover {
        background: #0056b3;
        transform: translateY(-2px);
    }

    .project-image {
        margin: 2rem 0;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
    }

    .project-image img {
        width: 100%;
        height: auto;
        display: block;
    }

    .project-content {
        line-height: 1.8;
    }

    .project-content h2 {
        color: #333;
        margin-top: 2.5rem;
        margin-bottom: 1rem;
        font-size: 1.8rem;
    }

    .project-description {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        border-left: 4px solid #007bff;
        margin-bottom: 2rem;
    }

    .project-technologies {
        margin-bottom: 2rem;
    }

    .tech-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 0.5rem;
        margin-top: 1rem;
    }

    .tech-tag {
        background: #007bff;
        color: white;
        padding: 0.5rem 1rem;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: bold;
    }

    .project-details {
        margin-bottom: 3rem;
    }

    .project-footer {
        margin-top: 3rem;
        padding-top: 2rem;
        border-top: 2px solid #eee;
    }

    .project-navigation {
        display: flex;
        justify-content: space-between;
        margin-bottom: 3rem;
        gap: 1rem;
    }

    .nav-link {
        display: flex;
        align-items: center;
        gap: 0.5rem;
        padding: 1rem 1.5rem;
        border: 2px solid #007bff;
        border-radius: 8px;
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
        transition: all 0.3s;
        flex: 1;
        max-width: 300px;
    }

    .nav-link:hover {
        background: #007bff;
        color: white;
        transform: translateY(-2px);
    }

    .related-projects h3 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.5rem;
    }

    .related-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 1.5rem;
    }

    .related-item {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        overflow: hidden;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .related-item:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    }

    .related-item a {
        display: block;
        padding: 1.5rem;
        text-decoration: none;
        color: inherit;
    }

    .related-item h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .related-item p {
        color: #666;
        font-size: 0.9rem;
        margin-bottom: 1rem;
        line-height: 1.5;
    }

    .related-tech {
        background: #e9ecef;
        color: #495057;
        padding: 0.3rem 0.6rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }
</style>
{{ end }}

```

Now let's add some CSS for the author links and update our homepage to include the authors collection:

```html
      <div class="collection-card projects">
        <h3>🚀 Projects</h3>
        <p>Portfolio of development projects, tools, and technical work.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "projects") }}</strong> projects</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "projects") "Params.status" "completed") }}</strong> completed</span>
        </div>
        <a href="/projects/" class="collection-link">View All Projects →</a>
      </div>

      <div class="collection-card authors">
        <h3>👥 Authors</h3>
        <p>Meet the talented people behind our content and projects.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "authors") }}</strong> authors</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "authors") "Params.featured" true) }}</strong> featured</span>
        </div>
        <a href="/authors/" class="collection-link">View All Authors →</a>
      </div>
```

Let me read the current file to see the exact structure:

```html
{{ define "main" }}
<div class="homepage">
  {{ .Content }}

  <div class="collections-overview">
    <h2>Explore My Collections</h2>

    <div class="collections-grid">
      <div class="collection-card blog">
        <h3>📝 Blog Posts</h3>
        <p>Latest articles and tutorials about web development, Hugo, and more.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "blog") }}</strong> posts</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "blog") "Params.featured" true) }}</strong>
            featured</span>
        </div>
        <a href="/blog/" class="collection-link">View All Posts →</a>
      </div>

      <div class="collection-card projects">
        <h3>🚀 Projects</h3>
        <p>Portfolio of development projects, tools, and technical work.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "projects") }}</strong> projects</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "projects") "Params.status" "completed")
              }}</strong> completed</span>
        </div>
        <a href="/projects/" class="collection-link">View All Projects →</a>
      </div>

      <div class="collection-card authors">
        <h3>👥 Authors</h3>
        <p>Meet the talented people behind our content and projects.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "authors") }}</strong> authors</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "authors") "Params.featured" true) }}</strong> featured</span>
        </div>
        <a href="/authors/" class="collection-link">View All Authors →</a>
      </div>
    </div>
  </div>

  <div class="recent-content">
    <h2>Recent Content</h2>

    <div class="recent-posts">
      <h3>Latest Blog Posts</h3>
      <div class="post-list">
        {{ range first 3 (where .Site.RegularPages "Section" "blog") }}
        <div class="post-item">
          <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
          <p>{{ .Params.description | default .Summary | truncate 120 }}</p>
          <div class="post-meta">
            <span>{{ .Date.Format "Jan 2, 2006" }}</span>
            {{ if .Params.featured }}<span class="featured">⭐ Featured</span>{{ end }}
          </div>
        </div>
        {{ end }}
      </div>
    </div>

    <div class="recent-projects">
      <h3>Featured Projects</h3>
      <div class="project-list">
        {{ range first 3 (where (where .Site.RegularPages "Section" "projects") "Params.featured" true) }}
        <div class="project-item">
          <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
          <p>{{ .Params.description | truncate 120 }}</p>
          <div class="project-meta">
            <span class="status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
            <span class="type">{{ .Params.project_type | title }}</span>
          </div>
        </div>
        {{ end }}
      </div>
    </div>
  </div>
</div>

<style>
  .homepage {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
  }

  .collections-overview {
    margin: 3rem 0;
    padding: 2rem 0;
    border-top: 2px solid #eee;
    border-bottom: 2px solid #eee;
  }

  .collections-overview h2 {
    text-align: center;
    margin-bottom: 2rem;
    color: #333;
    font-size: 2rem;
  }

  .collections-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
    margin-bottom: 2rem;
  }

  .collection-card {
    background: white;
    border: 2px solid #e9ecef;
    border-radius: 12px;
    padding: 2rem;
    text-align: center;
    transition: all 0.3s;
    position: relative;
    overflow: hidden;
  }

  .collection-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
  }

  .collection-card.blog {
    border-color: #28a745;
  }

  .collection-card.projects {
    border-color: #007bff;
  }

  .collection-card h3 {
    margin: 0 0 1rem 0;
    font-size: 1.5rem;
    color: #333;
  }

  .collection-card p {
    color: #666;
    margin-bottom: 1.5rem;
    line-height: 1.6;
  }

  .collection-stats {
    display: flex;
    justify-content: space-around;
    margin-bottom: 1.5rem;
    padding: 1rem;
    background: #f8f9fa;
    border-radius: 8px;
  }

  .collection-stats span {
    font-size: 0.9rem;
    color: #666;
  }

  .collection-link {
    display: inline-block;
    padding: 0.8rem 1.5rem;
    background: #007bff;
    color: white;
    text-decoration: none;
    border-radius: 25px;
    font-weight: bold;
    transition: all 0.3s;
  }

  .collection-link:hover {
    background: #0056b3;
    transform: translateY(-2px);
  }

  .recent-content {
    margin-top: 3rem;
  }

  .recent-content h2 {
    text-align: center;
    margin-bottom: 2rem;
    color: #333;
    font-size: 1.8rem;
  }

  .recent-posts,
  .recent-projects {
    margin-bottom: 3rem;
  }

  .recent-posts h3,
  .recent-projects h3 {
    color: #333;
    margin-bottom: 1.5rem;
    font-size: 1.3rem;
  }

  .post-list,
  .project-list {
    display: grid;
    gap: 1.5rem;
  }

  .post-item,
  .project-item {
    background: white;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 1.5rem;
    transition: all 0.3s;
  }

  .post-item:hover,
  .project-item:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  }

  .post-item h4,
  .project-item h4 {
    margin: 0 0 0.5rem 0;
    font-size: 1.2rem;
  }

  .post-item h4 a,
  .project-item h4 a {
    color: #333;
    text-decoration: none;
  }

  .post-item h4 a:hover,
  .project-item h4 a:hover {
    color: #007bff;
  }

  .post-item p,
  .project-item p {
    color: #666;
    margin-bottom: 1rem;
    line-height: 1.6;
  }

  .post-meta,
  .project-meta {
    display: flex;
    gap: 1rem;
    font-size: 0.9rem;
    color: #666;
  }

  .featured {
    color: #ffc107;
    font-weight: bold;
  }

  .status {
    padding: 0.2rem 0.5rem;
    border-radius: 12px;
    font-size: 0.8rem;
    font-weight: bold;
  }

  .status-completed {
    background: #d4edda;
    color: #155724;
  }

  .status-in-progress {
    background: #fff3cd;
    color: #856404;
  }

  .type {
    color: #666;
  }
</style>
{{ end }}

```

Now let's add CSS for the authors collection card and author links:

```html
{{ define "main" }}
<div class="homepage">
  {{ .Content }}

  <div class="collections-overview">
    <h2>Explore My Collections</h2>

    <div class="collections-grid">
      <div class="collection-card blog">
        <h3>📝 Blog Posts</h3>
        <p>Latest articles and tutorials about web development, Hugo, and more.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "blog") }}</strong> posts</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "blog") "Params.featured" true) }}</strong>
            featured</span>
        </div>
        <a href="/blog/" class="collection-link">View All Posts →</a>
      </div>

      <div class="collection-card projects">
        <h3>🚀 Projects</h3>
        <p>Portfolio of development projects, tools, and technical work.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "projects") }}</strong> projects</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "projects") "Params.status" "completed")
              }}</strong> completed</span>
        </div>
        <a href="/projects/" class="collection-link">View All Projects →</a>
      </div>

      <div class="collection-card authors">
        <h3>👥 Authors</h3>
        <p>Meet the talented people behind our content and projects.</p>
        <div class="collection-stats">
          <span><strong>{{ len (where .Site.RegularPages "Section" "authors") }}</strong> authors</span>
          <span><strong>{{ len (where (where .Site.RegularPages "Section" "authors") "Params.featured" true) }}</strong> featured</span>
        </div>
        <a href="/authors/" class="collection-link">View All Authors →</a>
      </div>
    </div>
  </div>

  <div class="recent-content">
    <h2>Recent Content</h2>

    <div class="recent-posts">
      <h3>Latest Blog Posts</h3>
      <div class="post-list">
        {{ range first 3 (where .Site.RegularPages "Section" "blog") }}
        <div class="post-item">
          <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
          <p>{{ .Params.description | default .Summary | truncate 120 }}</p>
          <div class="post-meta">
            <span>{{ .Date.Format "Jan 2, 2006" }}</span>
            {{ if .Params.featured }}<span class="featured">⭐ Featured</span>{{ end }}
          </div>
        </div>
        {{ end }}
      </div>
    </div>

    <div class="recent-projects">
      <h3>Featured Projects</h3>
      <div class="project-list">
        {{ range first 3 (where (where .Site.RegularPages "Section" "projects") "Params.featured" true) }}
        <div class="project-item">
          <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
          <p>{{ .Params.description | truncate 120 }}</p>
          <div class="project-meta">
            <span class="status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
            <span class="type">{{ .Params.project_type | title }}</span>
          </div>
        </div>
        {{ end }}
      </div>
    </div>
  </div>
</div>

<style>
  .homepage {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
  }

  .collections-overview {
    margin: 3rem 0;
    padding: 2rem 0;
    border-top: 2px solid #eee;
    border-bottom: 2px solid #eee;
  }

  .collections-overview h2 {
    text-align: center;
    margin-bottom: 2rem;
    color: #333;
    font-size: 2rem;
  }

  .collections-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
    margin-bottom: 2rem;
  }

  .collection-card {
    background: white;
    border: 2px solid #e9ecef;
    border-radius: 12px;
    padding: 2rem;
    text-align: center;
    transition: all 0.3s;
    position: relative;
    overflow: hidden;
  }

  .collection-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
  }

  .collection-card.blog {
    border-color: #28a745;
  }

.collection-card.projects {
  border-color: #007bff;
}

.collection-card.authors {
  border-color: #6f42c1;
}

  .collection-card h3 {
    margin: 0 0 1rem 0;
    font-size: 1.5rem;
    color: #333;
  }

  .collection-card p {
    color: #666;
    margin-bottom: 1.5rem;
    line-height: 1.6;
  }

  .collection-stats {
    display: flex;
    justify-content: space-around;
    margin-bottom: 1.5rem;
    padding: 1rem;
    background: #f8f9fa;
    border-radius: 8px;
  }

  .collection-stats span {
    font-size: 0.9rem;
    color: #666;
  }

  .collection-link {
    display: inline-block;
    padding: 0.8rem 1.5rem;
    background: #007bff;
    color: white;
    text-decoration: none;
    border-radius: 25px;
    font-weight: bold;
    transition: all 0.3s;
  }

  .collection-link:hover {
    background: #0056b3;
    transform: translateY(-2px);
  }

  .recent-content {
    margin-top: 3rem;
  }

  .recent-content h2 {
    text-align: center;
    margin-bottom: 2rem;
    color: #333;
    font-size: 1.8rem;
  }

  .recent-posts,
  .recent-projects {
    margin-bottom: 3rem;
  }

  .recent-posts h3,
  .recent-projects h3 {
    color: #333;
    margin-bottom: 1.5rem;
    font-size: 1.3rem;
  }

  .post-list,
  .project-list {
    display: grid;
    gap: 1.5rem;
  }

  .post-item,
  .project-item {
    background: white;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 1.5rem;
    transition: all 0.3s;
  }

  .post-item:hover,
  .project-item:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  }

  .post-item h4,
  .project-item h4 {
    margin: 0 0 0.5rem 0;
    font-size: 1.2rem;
  }

  .post-item h4 a,
  .project-item h4 a {
    color: #333;
    text-decoration: none;
  }

  .post-item h4 a:hover,
  .project-item h4 a:hover {
    color: #007bff;
  }

  .post-item p,
  .project-item p {
    color: #666;
    margin-bottom: 1rem;
    line-height: 1.6;
  }

  .post-meta,
  .project-meta {
    display: flex;
    gap: 1rem;
    font-size: 0.9rem;
    color: #666;
  }

  .featured {
    color: #ffc107;
    font-weight: bold;
  }

  .status {
    padding: 0.2rem 0.5rem;
    border-radius: 12px;
    font-size: 0.8rem;
    font-weight: bold;
  }

  .status-completed {
    background: #d4edda;
    color: #155724;
  }

  .status-in-progress {
    background: #fff3cd;
    color: #856404;
  }

  .type {
    color: #666;
  }
</style>
{{ end }}

```

Let's also add CSS for author links in the blog and project layouts:

```html
{{ define "main" }}
<div class="blog-header">
    <h1>{{ .Title | default "Blog Posts" }}</h1>
    <p>Welcome to our blog! Here are all our posts:</p>
</div>

<div class="blog-stats">
    <p><strong>Total Posts:</strong> {{ len .Pages }}</p>
    <p><strong>Featured Posts:</strong> {{ len (where .Pages "Params.featured" true) }}</p>
</div>

<!-- Advanced Filtering and Sorting -->
<div class="blog-controls">
    <div class="filter-section">
        <h3>Filter Posts</h3>
        <div class="filter-buttons">
            <button class="filter-btn active" data-filter="all">All Posts</button>
            <button class="filter-btn" data-filter="featured">Featured Only</button>
            <button class="filter-btn" data-filter="tutorials">Tutorials</button>
            <button class="filter-btn" data-filter="reviews">Reviews</button>
        </div>
    </div>

    <div class="sort-section">
        <h3>Sort By</h3>
        <select id="sortSelect" class="sort-select">
            <option value="date-desc">Date (Newest First)</option>
            <option value="date-asc">Date (Oldest First)</option>
            <option value="title-asc">Title (A-Z)</option>
            <option value="title-desc">Title (Z-A)</option>
        </select>
    </div>
</div>

<div class="blog-posts" id="blogPosts">
    {{ range .Pages }}
    <article class="blog-post" data-featured="{{ .Params.featured }}" data-category="{{ .Params.categories | first 1 }}"
        data-date="{{ .Date.Format " 2006-01-02" }}" data-title="{{ .Title | lower }}">
        <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>
      <div class="post-meta">
        <span class="date">{{ .Date.Format "January 2, 2006" }}</span>
        {{ if .Params.authors }}
          <span class="authors">
            by
            {{ range $i, $authorSlug := .Params.authors }}
              {{ $author := $.Site.GetPage (printf "/authors/%s" $authorSlug) }}
              {{ if $author }}
                {{ if $i }}, {{ end }}<a href="{{ $author.Permalink }}">{{ $author.Title }}</a>
              {{ end }}
            {{ end }}
          </span>
        {{ else }}
          <span class="author">by Anonymous</span>
        {{ end }}
        {{ if .Params.tags }}
          <span class="tags">
            {{ range .Params.tags }}
              <span class="tag">{{ . }}</span>
            {{ end }}
          </span>
        {{ end }}
      </div>
        <div class="post-excerpt">
            {{ .Summary }}
        </div>
        {{ if .Params.featured }}
        <span class="featured-badge">⭐ Featured</span>
        {{ end }}
    </article>
    {{ end }}
</div>

<!-- Pagination -->
{{ if gt .Paginator.TotalPages 1 }}
<div class="pagination">
    {{ if .Paginator.HasPrev }}
    <a href="{{ .Paginator.Prev.URL }}" class="pagination-btn prev">← Previous</a>
    {{ end }}

    <span class="pagination-info">
        Page {{ .Paginator.PageNumber }} of {{ .Paginator.TotalPages }}
    </span>

    {{ if .Paginator.HasNext }}
    <a href="{{ .Paginator.Next.URL }}" class="pagination-btn next">Next →</a>
    {{ end }}
</div>
{{ end }}

<style>
    .blog-header {
        margin-bottom: 2rem;
        padding-bottom: 1rem;
        border-bottom: 2px solid #eee;
    }

    .blog-stats {
        background: #f8f9fa;
        padding: 1rem;
        border-radius: 5px;
        margin-bottom: 2rem;
    }

    .blog-controls {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        margin-bottom: 2rem;
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 2rem;
    }

    .filter-section h3,
    .sort-section h3 {
        margin: 0 0 1rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
        font-size: 0.9rem;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .sort-select {
        padding: 0.5rem;
        border: 1px solid #ddd;
        border-radius: 5px;
        background: white;
        font-size: 0.9rem;
        width: 100%;
    }

    .blog-posts {
        display: grid;
        gap: 2rem;
    }

    .blog-post {
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 1.5rem;
        background: white;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        position: relative;
        transition: all 0.3s;
    }

    .blog-post:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .blog-post h2 {
        margin-top: 0;
        color: #333;
    }

    .blog-post h2 a {
        text-decoration: none;
        color: inherit;
    }

    .blog-post h2 a:hover {
        color: #007bff;
    }

    .post-meta {
        color: #666;
        font-size: 0.9rem;
        margin: 0.5rem 0;
    }

.post-meta span {
  margin-right: 1rem;
}

.authors a {
  color: #007bff;
  text-decoration: none;
  font-weight: bold;
}

.authors a:hover {
  text-decoration: underline;
}

    .tags {
        display: inline-block;
    }

    .tag {
        background: #e9ecef;
        padding: 0.2rem 0.5rem;
        border-radius: 3px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
    }

    .post-excerpt {
        margin: 1rem 0;
        line-height: 1.6;
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .pagination {
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 1rem;
        margin-top: 3rem;
        padding: 2rem 0;
        border-top: 1px solid #eee;
    }

    .pagination-btn {
        padding: 0.8rem 1.5rem;
        background: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
        transition: all 0.3s;
    }

    .pagination-btn:hover {
        background: #0056b3;
        transform: translateY(-2px);
    }

    .pagination-info {
        color: #666;
        font-weight: bold;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .blog-controls {
            grid-template-columns: 1fr;
            gap: 1rem;
        }

        .filter-buttons {
            justify-content: center;
        }
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const sortSelect = document.getElementById('sortSelect');
        const blogPosts = document.getElementById('blogPosts');
        const posts = Array.from(document.querySelectorAll('.blog-post'));

        // Filter functionality
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                // Remove active class from all buttons
                filterButtons.forEach(btn => btn.classList.remove('active'));
                // Add active class to clicked button
                this.classList.add('active');

                const filter = this.getAttribute('data-filter');

                posts.forEach(post => {
                    if (filter === 'all') {
                        post.style.display = 'block';
                    } else if (filter === 'featured') {
                        if (post.getAttribute('data-featured') === 'true') {
                            post.style.display = 'block';
                        } else {
                            post.style.display = 'none';
                        }
                    } else if (filter === 'tutorials') {
                        if (post.getAttribute('data-category') === 'tutorials') {
                            post.style.display = 'block';
                        } else {
                            post.style.display = 'none';
                        }
                    } else if (filter === 'reviews') {
                        if (post.getAttribute('data-category') === 'reviews') {
                            post.style.display = 'block';
                        } else {
                            post.style.display = 'none';
                        }
                    }
                });
            });
        });

        // Sort functionality
        sortSelect.addEventListener('change', function () {
            const sortBy = this.value;
            const visiblePosts = posts.filter(post => post.style.display !== 'none');

            visiblePosts.sort((a, b) => {
                switch (sortBy) {
                    case 'date-desc':
                        return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
                    case 'date-asc':
                        return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
                    case 'title-asc':
                        return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
                    case 'title-desc':
                        return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
                    default:
                        return 0;
                }
            });

            // Reorder posts in DOM
            visiblePosts.forEach(post => {
                blogPosts.appendChild(post);
            });
        });
    });
</script>
{{ end }}

```

Let's add similar CSS to the projects layout:

```html
{{ define "main" }}
<div class="projects-header">
    <h1>{{ .Title | default "Projects Portfolio" }}</h1>
    <p>Explore my collection of development projects and technical work.</p>
</div>

<div class="projects-stats">
    <div class="stat-card">
        <h3>{{ len .Pages }}</h3>
        <p>Total Projects</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "completed") }}</h3>
        <p>Completed</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.featured" true) }}</h3>
        <p>Featured</p>
    </div>
    <div class="stat-card">
        <h3>{{ len (where .Pages "Params.status" "in-progress") }}</h3>
        <p>In Progress</p>
    </div>
</div>

<div class="projects-filters">
    <div class="search-section">
        <h3>Search Projects</h3>
        <input type="text" id="projectSearch" placeholder="Search by title, description, or technology..."
            class="search-input">
    </div>

    <div class="filter-section">
        <h3>Filter by Status:</h3>
        <div class="filter-buttons">
            <button class="filter-btn active" data-filter="all">All</button>
            <button class="filter-btn" data-filter="completed">Completed</button>
            <button class="filter-btn" data-filter="in-progress">In Progress</button>
            <button class="filter-btn" data-filter="featured">Featured</button>
        </div>
    </div>

    <div class="sort-section">
        <h3>Sort By:</h3>
        <select id="projectSort" class="sort-select">
            <option value="date-desc">Date (Newest First)</option>
            <option value="date-asc">Date (Oldest First)</option>
            <option value="title-asc">Title (A-Z)</option>
            <option value="title-desc">Title (Z-A)</option>
            <option value="status">Status</option>
        </select>
    </div>
</div>

<div class="projects-grid">
    {{ range .Pages }}
    <div class="project-card" data-status="{{ .Params.status }}" data-featured="{{ .Params.featured }}"
        data-title="{{ .Title | lower }}" data-description="{{ .Params.description | lower }}"
        data-technologies="{{ delimit .Params.technologies " " | lower }}" data-date="{{ .Date.Format " 2006-01-02" }}"
        data-type="{{ .Params.project_type | lower }}">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured</div>
        {{ end }}

        <div class="project-image">
            {{ if .Params.image }}
            <img src="{{ .Params.image }}" alt="{{ .Title }}" />
            {{ else }}
            <div class="placeholder-image">
                <span>{{ .Title | truncate 2 }}</span>
            </div>
            {{ end }}
        </div>

        <div class="project-content">
            <h2><a href="{{ .Permalink }}">{{ .Title }}</a></h2>

        <div class="project-meta">
            <span class="project-type">{{ .Params.project_type | title }}</span>
            <span class="project-status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
        </div>

        {{ if .Params.authors }}
        <div class="project-authors">
            <span class="authors-label">Authors:</span>
            {{ range $i, $authorSlug := .Params.authors }}
                {{ $author := $.Site.GetPage (printf "/authors/%s" $authorSlug) }}
                {{ if $author }}
                    {{ if $i }}, {{ end }}<a href="{{ $author.Permalink }}" class="author-link">{{ $author.Title }}</a>
                {{ end }}
            {{ end }}
        </div>
        {{ end }}

            <p class="project-description">{{ .Params.description }}</p>

            <div class="project-technologies">
                {{ range .Params.technologies }}
                <span class="tech-tag">{{ . }}</span>
                {{ end }}
            </div>

            <div class="project-links">
                {{ if .Params.github_url }}
                <a href="{{ .Params.github_url }}" class="project-link github" target="_blank">
                    GitHub
                </a>
                {{ end }}
                {{ if .Params.demo_url }}
                <a href="{{ .Params.demo_url }}" class="project-link demo" target="_blank">
                    Live Demo
                </a>
                {{ end }}
            </div>
        </div>
    </div>
    {{ end }}
</div>

<style>
    .projects-header {
        text-align: center;
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
    }

    .projects-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin-bottom: 3rem;
    }

    .stat-card {
        background: #f8f9fa;
        padding: 1.5rem;
        border-radius: 8px;
        text-align: center;
        border: 1px solid #e9ecef;
    }

    .stat-card h3 {
        font-size: 2rem;
        margin: 0;
        color: #007bff;
    }

    .stat-card p {
        margin: 0.5rem 0 0 0;
        color: #666;
        font-size: 0.9rem;
    }

    .projects-filters {
        background: #f8f9fa;
        padding: 2rem;
        border-radius: 12px;
        margin-bottom: 2rem;
        display: grid;
        grid-template-columns: 1fr 1fr 1fr;
        gap: 2rem;
    }

    .search-section h3,
    .filter-section h3,
    .sort-section h3 {
        margin: 0 0 1rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .search-input {
        width: 100%;
        padding: 0.8rem;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        transition: border-color 0.3s;
    }

    .search-input:focus {
        outline: none;
        border-color: #007bff;
        box-shadow: 0 0 0 2px rgba(0, 123, 255, 0.25);
    }

    .filter-buttons {
        display: flex;
        gap: 0.5rem;
        flex-wrap: wrap;
    }

    .sort-select {
        width: 100%;
        padding: 0.8rem;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        background: white;
    }

    @media (max-width: 768px) {
        .projects-filters {
            grid-template-columns: 1fr;
            gap: 1.5rem;
        }
    }

    .filter-btn {
        padding: 0.5rem 1rem;
        border: 1px solid #ddd;
        background: white;
        border-radius: 20px;
        cursor: pointer;
        transition: all 0.3s;
    }

    .filter-btn:hover,
    .filter-btn.active {
        background: #007bff;
        color: white;
        border-color: #007bff;
    }

    .projects-grid {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
        gap: 2rem;
    }

    .project-card {
        background: white;
        border-radius: 12px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
        position: relative;
    }

    .project-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .featured-badge {
        position: absolute;
        top: 1rem;
        right: 1rem;
        background: #ffc107;
        color: #333;
        padding: 0.3rem 0.6rem;
        border-radius: 15px;
        font-size: 0.8rem;
        font-weight: bold;
        z-index: 1;
    }

    .project-image {
        height: 200px;
        overflow: hidden;
        background: #f8f9fa;
    }

    .project-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }

    .placeholder-image {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        font-size: 2rem;
        font-weight: bold;
    }

    .project-content {
        padding: 1.5rem;
    }

    .project-content h2 {
        margin: 0 0 1rem 0;
        font-size: 1.3rem;
    }

    .project-content h2 a {
        color: #333;
        text-decoration: none;
    }

    .project-content h2 a:hover {
        color: #007bff;
    }

    .project-meta {
        display: flex;
        gap: 1rem;
        margin-bottom: 1rem;
        font-size: 0.9rem;
    }

    .project-type {
        color: #666;
    }

    .project-status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .project-description {
        color: #666;
        line-height: 1.6;
        margin-bottom: 1rem;
    }

    .project-technologies {
        margin-bottom: 1rem;
    }

    .tech-tag {
        display: inline-block;
        background: #e9ecef;
        color: #495057;
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        margin-right: 0.3rem;
        margin-bottom: 0.3rem;
    }

    .project-links {
        display: flex;
        gap: 0.5rem;
    }

    .project-link {
        padding: 0.5rem 1rem;
        border-radius: 5px;
        text-decoration: none;
        font-size: 0.9rem;
        font-weight: bold;
        transition: all 0.3s;
    }

    .project-link.github {
        background: #333;
        color: white;
    }

    .project-link.github:hover {
        background: #555;
    }

    .project-link.demo {
        background: #007bff;
        color: white;
    }

.project-link.demo:hover {
    background: #0056b3;
}

.project-authors {
    margin: 0.5rem 0;
    font-size: 0.9rem;
}

.authors-label {
    color: #666;
    font-weight: bold;
}

.author-link {
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
}

.author-link:hover {
    text-decoration: underline;
}
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const filterButtons = document.querySelectorAll('.filter-btn');
        const projectCards = Array.from(document.querySelectorAll('.project-card'));
        const searchInput = document.getElementById('projectSearch');
        const sortSelect = document.getElementById('projectSort');
        const projectsGrid = document.querySelector('.projects-grid');

        let currentFilter = 'all';
        let currentSearch = '';

        // Filter functionality
        filterButtons.forEach(button => {
            button.addEventListener('click', function () {
                filterButtons.forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                currentFilter = this.getAttribute('data-filter');
                applyFilters();
            });
        });

        // Search functionality
        searchInput.addEventListener('input', function () {
            currentSearch = this.value.toLowerCase();
            applyFilters();
        });

        // Sort functionality
        sortSelect.addEventListener('change', function () {
            applySorting();
        });

        function applyFilters() {
            projectCards.forEach(card => {
                const matchesFilter = matchesCurrentFilter(card);
                const matchesSearch = matchesCurrentSearch(card);

                if (matchesFilter && matchesSearch) {
                    card.style.display = 'block';
                } else {
                    card.style.display = 'none';
                }
            });

            applySorting();
        }

        function matchesCurrentFilter(card) {
            if (currentFilter === 'all') return true;
            if (currentFilter === 'featured') return card.getAttribute('data-featured') === 'true';
            return card.getAttribute('data-status') === currentFilter;
        }

        function matchesCurrentSearch(card) {
            if (!currentSearch) return true;

            const title = card.getAttribute('data-title');
            const description = card.getAttribute('data-description');
            const technologies = card.getAttribute('data-technologies');

            return title.includes(currentSearch) ||
                description.includes(currentSearch) ||
                technologies.includes(currentSearch);
        }

        function applySorting() {
            const visibleCards = projectCards.filter(card => card.style.display !== 'none');
            const sortBy = sortSelect.value;

            visibleCards.sort((a, b) => {
                switch (sortBy) {
                    case 'date-desc':
                        return new Date(b.getAttribute('data-date')) - new Date(a.getAttribute('data-date'));
                    case 'date-asc':
                        return new Date(a.getAttribute('data-date')) - new Date(b.getAttribute('data-date'));
                    case 'title-asc':
                        return a.getAttribute('data-title').localeCompare(b.getAttribute('data-title'));
                    case 'title-desc':
                        return b.getAttribute('data-title').localeCompare(a.getAttribute('data-title'));
                    case 'status':
                        return a.getAttribute('data-status').localeCompare(b.getAttribute('data-status'));
                    default:
                        return 0;
                }
            });

            // Reorder cards in DOM
            visibleCards.forEach(card => {
                projectsGrid.appendChild(card);
            });
        }
    });
</script>
{{ end }}

```

Now let's test our authors collection by building the site:

Perfect! Let's update our todo status and test the site:

Excellent! 🎉

# ✅ **Authors Collection Successfully Created!**

## 🎯 **What We've Accomplished:**

### **✅ Authors Collection (`/authors/`)**

- **4 sample author profiles** with rich front matter (bio, role, company, specialties, etc.)
- **Advanced author layouts** with filtering, search, and statistics
- **Cross-referencing system** linking authors to content

### **✅ Multi-Author Content Support**

- **Blog posts** can have multiple authors (e.g., "Advanced Hugo Techniques" by Jane Smith & John Doe)
- **Projects** can have multiple authors (e.g., "API Documentation Generator" by Mike Johnson, Sarah Wilson & John Doe)
- **Dynamic author linking** in all content displays

### **✅ Advanced Features**

- **Author filtering** by role, expertise level, and specialties
- **Search functionality** across author names, roles, and specialties
- **Cross-references** showing author content statistics
- **Responsive design** with professional styling

## 🔗 **Key Hugo Concepts Demonstrated:**

1. **Collection Relationships**: Using `{{ $.Site.GetPage (printf "/authors/%s" $authorSlug) }}` to link collections
2. **Multi-value Front Matter**: Using arrays for `authors: ["john-doe", "jane-smith"]`
3. **Cross-Collection Queries**: Finding content by author across different sections
4. **Dynamic Content Display**: Showing author statistics and related content
5. **Advanced Filtering**: JavaScript-powered search and filter functionality

## 🌐 **Your Enhanced Site Now Has:**

**Visit these new URLs:**

- **Authors Collection**: `http://localhost:1313/authors/` - Browse all authors with filtering
- **Individual Authors**: `http://localhost:1313/authors/john-doe/` - Detailed author profiles
- **Enhanced Blog Posts**: Now show linked authors with clickable links
- **Enhanced Projects**: Now display project authors with cross-references
- **Updated Homepage**: Includes authors collection overview

## 🎨 **Multi-Author Examples:**

- **"Advanced Hugo Techniques"** - Co-authored by Jane Smith & John Doe
- **"API Documentation Generator"** - Team project by Mike Johnson, Sarah Wilson & John Doe
- **"Hugo vs Other Generators"** - Collaborative review by Mike Johnson & Sarah Wilson

This demonstrates the power of Hugo's collection system for creating sophisticated content relationships! You now have a fully functional multi-author content management system with cross-references, filtering, and dynamic displays. 🚀

---

**User**

This is awesome, thanks!  One question: when viewing author single pages, the content count is 0.  is there a way to update that so it reflects a true count across the content?

---

**Cursor**

Great question! The issue is that the author single page is looking for content where the `authors` parameter contains the author's slug, but we need to make sure the query is working correctly. Let me check the current implementation and fix it.

I see the issue! The problem is that we're using `"in"` operator with a slice, but Hugo's `where` function with `"in"` expects the field to be an array and the value to be a single item. Let me fix this by using the correct approach:

```html
{{ define "main" }}
<article class="author-single">
    <header class="author-header">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured Author</div>
        {{ end }}

        <div class="author-profile">
            <div class="author-avatar-large">
                {{ if .Params.avatar }}
                <img src="{{ .Params.avatar }}" alt="{{ .Title }}" />
                {{ else }}
                <div class="avatar-placeholder-large">
                    <span>{{ .Title | truncate 2 }}</span>
                </div>
                {{ end }}
            </div>

            <div class="author-details">
                <h1>{{ .Title }}</h1>
                <p class="author-role">{{ .Params.role }}</p>
                <p class="author-company">{{ .Params.company }}</p>
                <p class="author-location">{{ .Params.location }}</p>

                <div class="author-bio-short">
                    <p>{{ .Params.bio }}</p>
                </div>

                <div class="author-stats">
                    <div class="stat">
                        <strong>{{ .Params.years_experience }}+</strong>
                        <span>Years Experience</span>
                    </div>
                    <div class="stat">
                        <strong>{{ .Params.expertise_level }}</strong>
                        <span>Level</span>
                    </div>
                    <div class="stat">
                        <strong>{{ len .Params.specialties }}</strong>
                        <span>Specialties</span>
                    </div>
                </div>

                <div class="author-links">
                    {{ if .Params.website }}
                    <a href="{{ .Params.website }}" target="_blank" class="author-link website">
                        <span>🌐</span> Website
                    </a>
                    {{ end }}
                    {{ if .Params.github }}
                    <a href="https://github.com/{{ .Params.github }}" target="_blank" class="author-link github">
                        <span>💻</span> GitHub
                    </a>
                    {{ end }}
                    {{ if .Params.twitter }}
                    <a href="https://twitter.com/{{ .Params.twitter }}" target="_blank" class="author-link twitter">
                        <span>🐦</span> Twitter
                    </a>
                    {{ end }}
                    {{ if .Params.linkedin }}
                    <a href="https://linkedin.com/in/{{ .Params.linkedin }}" target="_blank"
                        class="author-link linkedin">
                        <span>💼</span> LinkedIn
                    </a>
                    {{ end }}
                    {{ if .Params.email }}
                    <a href="mailto:{{ .Params.email }}" class="author-link email">
                        <span>📧</span> Email
                    </a>
                    {{ end }}
                </div>
            </div>
        </div>
    </header>

    <div class="author-content">
        <div class="author-full-bio">
            <h2>About {{ .Title }}</h2>
            {{ .Content }}
        </div>

        <div class="author-specialties">
            <h2>Specialties & Expertise</h2>
            <div class="specialties-grid">
                {{ range .Params.specialties }}
                <span class="specialty-tag">{{ . }}</span>
                {{ end }}
            </div>
        </div>

        <div class="author-content-stats">
            <h2>Content by {{ .Title }}</h2>

            {{ $authorSlug := .Params.slug }}
            {{ $blogPosts := where .Site.RegularPages "Section" "blog" }}
            {{ $authorBlogPosts := where $blogPosts "Params.authors" "intersect" (slice $authorSlug) }}

            {{ $projectPages := where .Site.RegularPages "Section" "projects" }}
            {{ $authorProjects := where $projectPages "Params.authors" "intersect" (slice $authorSlug) }}

            <div class="content-stats">
                <div class="content-stat">
                    <h3>{{ len $authorBlogPosts }}</h3>
                    <p>Blog Posts</p>
                </div>
                <div class="content-stat">
                    <h3>{{ len $authorProjects }}</h3>
                    <p>Projects</p>
                </div>
                <div class="content-stat">
                    <h3>{{ add (len $authorBlogPosts) (len $authorProjects) }}</h3>
                    <p>Total Content</p>
                </div>
            </div>

            {{ if $authorBlogPosts }}
            <div class="author-blog-posts">
                <h3>Recent Blog Posts</h3>
                <div class="posts-list">
                    {{ range first 3 $authorBlogPosts }}
                    <div class="post-item">
                        <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
                        <p>{{ .Params.description | default .Summary | truncate 100 }}</p>
                        <div class="post-meta">
                            <span>{{ .Date.Format "Jan 2, 2006" }}</span>
                            {{ if .Params.featured }}<span class="featured">⭐ Featured</span>{{ end }}
                        </div>
                    </div>
                    {{ end }}
                </div>
            </div>
            {{ end }}

            {{ if $authorProjects }}
            <div class="author-projects">
                <h3>Projects</h3>
                <div class="projects-list">
                    {{ range first 3 $authorProjects }}
                    <div class="project-item">
                        <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
                        <p>{{ .Params.description | truncate 100 }}</p>
                        <div class="project-meta">
                            <span class="status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
                            <span class="type">{{ .Params.project_type | title }}</span>
                        </div>
                    </div>
                    {{ end }}
                </div>
            </div>
            {{ end }}
        </div>
    </div>

    <footer class="author-footer">
        <div class="author-navigation">
            {{ with .PrevInSection }}
            <a href="{{ .Permalink }}" class="nav-link prev">
                <span>←</span> {{ .Title }}
            </a>
            {{ end }}
            {{ with .NextInSection }}
            <a href="{{ .Permalink }}" class="nav-link next">
                {{ .Title }} <span>→</span>
            </a>
            {{ end }}
        </div>

        <div class="related-authors">
            <h3>Other Authors</h3>
            {{ $related := .Site.RegularPages.Related . | first 3 }}
            {{ with $related }}
            <div class="related-grid">
                {{ range . }}
                <div class="related-item">
                    <a href="{{ .Permalink }}">
                        <h4>{{ .Title }}</h4>
                        <p>{{ .Params.role }}</p>
                        <span class="related-specialty">{{ .Params.specialties | first 1 }}</span>
                    </a>
                </div>
                {{ end }}
            </div>
            {{ end }}
        </div>
    </footer>
</article>

<style>
    .author-single {
        max-width: 1000px;
        margin: 0 auto;
        padding: 2rem;
    }

    .author-header {
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
        position: relative;
    }

    .featured-badge {
        position: absolute;
        top: 0;
        right: 0;
        background: #ffc107;
        color: #333;
        padding: 0.5rem 1rem;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: bold;
    }

    .author-profile {
        display: grid;
        grid-template-columns: 200px 1fr;
        gap: 2rem;
        align-items: start;
    }

    .author-avatar-large {
        text-align: center;
    }

    .author-avatar-large img {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        object-fit: cover;
        border: 4px solid #007bff;
    }

    .avatar-placeholder-large {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 3rem;
        font-weight: bold;
        margin: 0 auto;
    }

    .author-details h1 {
        color: #333;
        margin-bottom: 0.5rem;
        font-size: 2.5rem;
    }

    .author-role {
        color: #007bff;
        font-weight: bold;
        font-size: 1.2rem;
        margin: 0 0 0.5rem 0;
    }

    .author-company,
    .author-location {
        color: #666;
        font-size: 1rem;
        margin: 0 0 0.3rem 0;
    }

    .author-bio-short {
        margin: 1.5rem 0;
        font-size: 1.1rem;
        line-height: 1.6;
        color: #555;
    }

    .author-stats {
        display: flex;
        gap: 2rem;
        margin: 1.5rem 0;
    }

    .stat {
        text-align: center;
        background: #f8f9fa;
        padding: 1rem;
        border-radius: 8px;
        border: 1px solid #e9ecef;
    }

    .stat strong {
        display: block;
        font-size: 1.5rem;
        color: #007bff;
        margin-bottom: 0.3rem;
    }

    .stat span {
        color: #666;
        font-size: 0.9rem;
    }

    .author-links {
        display: flex;
        gap: 0.8rem;
        flex-wrap: wrap;
        margin-top: 1.5rem;
    }

    .author-link {
        display: inline-flex;
        align-items: center;
        gap: 0.5rem;
        padding: 0.8rem 1.2rem;
        border-radius: 25px;
        text-decoration: none;
        font-weight: bold;
        transition: all 0.3s;
        font-size: 0.9rem;
    }

    .author-link.website {
        background: #007bff;
        color: white;
    }

    .author-link.github {
        background: #333;
        color: white;
    }

    .author-link.twitter {
        background: #1da1f2;
        color: white;
    }

    .author-link.linkedin {
        background: #0077b5;
        color: white;
    }

    .author-link.email {
        background: #28a745;
        color: white;
    }

    .author-link:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }

    .author-content {
        margin-bottom: 3rem;
    }

    .author-content h2 {
        color: #333;
        margin-top: 2.5rem;
        margin-bottom: 1.5rem;
        font-size: 1.8rem;
    }

    .author-full-bio {
        background: #f8f9fa;
        padding: 2rem;
        border-radius: 8px;
        border-left: 4px solid #007bff;
        margin-bottom: 2rem;
    }

    .author-full-bio h2 {
        margin-top: 0;
    }

    .specialties-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 0.8rem;
    }

    .specialty-tag {
        background: #007bff;
        color: white;
        padding: 0.8rem 1.2rem;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: bold;
    }

    .content-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin: 2rem 0;
    }

    .content-stat {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 1.5rem;
        text-align: center;
    }

    .content-stat h3 {
        font-size: 2rem;
        margin: 0 0 0.5rem 0;
        color: #007bff;
    }

    .content-stat p {
        margin: 0;
        color: #666;
        font-size: 0.9rem;
    }

    .author-blog-posts,
    .author-projects {
        margin: 2rem 0;
    }

    .author-blog-posts h3,
    .author-projects h3 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.3rem;
    }

    .posts-list,
    .projects-list {
        display: grid;
        gap: 1.5rem;
    }

    .post-item,
    .project-item {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 1.5rem;
        transition: all 0.3s;
    }

    .post-item:hover,
    .project-item:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .post-item h4,
    .project-item h4 {
        margin: 0 0 0.5rem 0;
        font-size: 1.2rem;
    }

    .post-item h4 a,
    .project-item h4 a {
        color: #333;
        text-decoration: none;
    }

    .post-item h4 a:hover,
    .project-item h4 a:hover {
        color: #007bff;
    }

    .post-item p,
    .project-item p {
        color: #666;
        margin-bottom: 1rem;
        line-height: 1.6;
    }

    .post-meta,
    .project-meta {
        display: flex;
        gap: 1rem;
        font-size: 0.9rem;
        color: #666;
    }

    .featured {
        color: #ffc107;
        font-weight: bold;
    }

    .status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .type {
        color: #666;
    }

    .author-footer {
        margin-top: 3rem;
        padding-top: 2rem;
        border-top: 2px solid #eee;
    }

    .author-navigation {
        display: flex;
        justify-content: space-between;
        margin-bottom: 3rem;
        gap: 1rem;
    }

    .nav-link {
        display: flex;
        align-items: center;
        gap: 0.5rem;
        padding: 1rem 1.5rem;
        border: 2px solid #007bff;
        border-radius: 8px;
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
        transition: all 0.3s;
        flex: 1;
        max-width: 300px;
    }

    .nav-link:hover {
        background: #007bff;
        color: white;
        transform: translateY(-2px);
    }

    .related-authors h3 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.5rem;
    }

    .related-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 1.5rem;
    }

    .related-item {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        overflow: hidden;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .related-item:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    }

    .related-item a {
        display: block;
        padding: 1.5rem;
        text-decoration: none;
        color: inherit;
    }

    .related-item h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .related-item p {
        color: #666;
        font-size: 0.9rem;
        margin-bottom: 1rem;
    }

    .related-specialty {
        background: #e9ecef;
        color: #495057;
        padding: 0.3rem 0.6rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    @media (max-width: 768px) {
        .author-profile {
            grid-template-columns: 1fr;
            text-align: center;
        }

        .author-stats {
            justify-content: center;
        }

        .author-navigation {
            flex-direction: column;
        }
    }
</style>
{{ end }}

```

Actually, let me try a different approach. The `intersect` operator might not work as expected either. Let me use a more reliable method by checking if the author slug is in the authors array:

```html
{{ define "main" }}
<article class="author-single">
    <header class="author-header">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured Author</div>
        {{ end }}

        <div class="author-profile">
            <div class="author-avatar-large">
                {{ if .Params.avatar }}
                <img src="{{ .Params.avatar }}" alt="{{ .Title }}" />
                {{ else }}
                <div class="avatar-placeholder-large">
                    <span>{{ .Title | truncate 2 }}</span>
                </div>
                {{ end }}
            </div>

            <div class="author-details">
                <h1>{{ .Title }}</h1>
                <p class="author-role">{{ .Params.role }}</p>
                <p class="author-company">{{ .Params.company }}</p>
                <p class="author-location">{{ .Params.location }}</p>

                <div class="author-bio-short">
                    <p>{{ .Params.bio }}</p>
                </div>

                <div class="author-stats">
                    <div class="stat">
                        <strong>{{ .Params.years_experience }}+</strong>
                        <span>Years Experience</span>
                    </div>
                    <div class="stat">
                        <strong>{{ .Params.expertise_level }}</strong>
                        <span>Level</span>
                    </div>
                    <div class="stat">
                        <strong>{{ len .Params.specialties }}</strong>
                        <span>Specialties</span>
                    </div>
                </div>

                <div class="author-links">
                    {{ if .Params.website }}
                    <a href="{{ .Params.website }}" target="_blank" class="author-link website">
                        <span>🌐</span> Website
                    </a>
                    {{ end }}
                    {{ if .Params.github }}
                    <a href="https://github.com/{{ .Params.github }}" target="_blank" class="author-link github">
                        <span>💻</span> GitHub
                    </a>
                    {{ end }}
                    {{ if .Params.twitter }}
                    <a href="https://twitter.com/{{ .Params.twitter }}" target="_blank" class="author-link twitter">
                        <span>🐦</span> Twitter
                    </a>
                    {{ end }}
                    {{ if .Params.linkedin }}
                    <a href="https://linkedin.com/in/{{ .Params.linkedin }}" target="_blank"
                        class="author-link linkedin">
                        <span>💼</span> LinkedIn
                    </a>
                    {{ end }}
                    {{ if .Params.email }}
                    <a href="mailto:{{ .Params.email }}" class="author-link email">
                        <span>📧</span> Email
                    </a>
                    {{ end }}
                </div>
            </div>
        </div>
    </header>

    <div class="author-content">
        <div class="author-full-bio">
            <h2>About {{ .Title }}</h2>
            {{ .Content }}
        </div>

        <div class="author-specialties">
            <h2>Specialties & Expertise</h2>
            <div class="specialties-grid">
                {{ range .Params.specialties }}
                <span class="specialty-tag">{{ . }}</span>
                {{ end }}
            </div>
        </div>

        <div class="author-content-stats">
            <h2>Content by {{ .Title }}</h2>

            {{ $authorSlug := .Params.slug }}
            {{ $blogPosts := where .Site.RegularPages "Section" "blog" }}
            {{ $authorBlogPosts := slice }}
            {{ range $blogPosts }}
              {{ if in .Params.authors $authorSlug }}
                {{ $authorBlogPosts = $authorBlogPosts | append . }}
              {{ end }}
            {{ end }}

            {{ $projectPages := where .Site.RegularPages "Section" "projects" }}
            {{ $authorProjects := slice }}
            {{ range $projectPages }}
              {{ if in .Params.authors $authorSlug }}
                {{ $authorProjects = $authorProjects | append . }}
              {{ end }}
            {{ end }}

            <div class="content-stats">
                <div class="content-stat">
                    <h3>{{ len $authorBlogPosts }}</h3>
                    <p>Blog Posts</p>
                </div>
                <div class="content-stat">
                    <h3>{{ len $authorProjects }}</h3>
                    <p>Projects</p>
                </div>
                <div class="content-stat">
                    <h3>{{ add (len $authorBlogPosts) (len $authorProjects) }}</h3>
                    <p>Total Content</p>
                </div>
            </div>

            {{ if $authorBlogPosts }}
            <div class="author-blog-posts">
                <h3>Recent Blog Posts</h3>
                <div class="posts-list">
                    {{ range first 3 $authorBlogPosts }}
                    <div class="post-item">
                        <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
                        <p>{{ .Params.description | default .Summary | truncate 100 }}</p>
                        <div class="post-meta">
                            <span>{{ .Date.Format "Jan 2, 2006" }}</span>
                            {{ if .Params.featured }}<span class="featured">⭐ Featured</span>{{ end }}
                        </div>
                    </div>
                    {{ end }}
                </div>
            </div>
            {{ end }}

            {{ if $authorProjects }}
            <div class="author-projects">
                <h3>Projects</h3>
                <div class="projects-list">
                    {{ range first 3 $authorProjects }}
                    <div class="project-item">
                        <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
                        <p>{{ .Params.description | truncate 100 }}</p>
                        <div class="project-meta">
                            <span class="status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
                            <span class="type">{{ .Params.project_type | title }}</span>
                        </div>
                    </div>
                    {{ end }}
                </div>
            </div>
            {{ end }}
        </div>
    </div>

    <footer class="author-footer">
        <div class="author-navigation">
            {{ with .PrevInSection }}
            <a href="{{ .Permalink }}" class="nav-link prev">
                <span>←</span> {{ .Title }}
            </a>
            {{ end }}
            {{ with .NextInSection }}
            <a href="{{ .Permalink }}" class="nav-link next">
                {{ .Title }} <span>→</span>
            </a>
            {{ end }}
        </div>

        <div class="related-authors">
            <h3>Other Authors</h3>
            {{ $related := .Site.RegularPages.Related . | first 3 }}
            {{ with $related }}
            <div class="related-grid">
                {{ range . }}
                <div class="related-item">
                    <a href="{{ .Permalink }}">
                        <h4>{{ .Title }}</h4>
                        <p>{{ .Params.role }}</p>
                        <span class="related-specialty">{{ .Params.specialties | first 1 }}</span>
                    </a>
                </div>
                {{ end }}
            </div>
            {{ end }}
        </div>
    </footer>
</article>

<style>
    .author-single {
        max-width: 1000px;
        margin: 0 auto;
        padding: 2rem;
    }

    .author-header {
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
        position: relative;
    }

    .featured-badge {
        position: absolute;
        top: 0;
        right: 0;
        background: #ffc107;
        color: #333;
        padding: 0.5rem 1rem;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: bold;
    }

    .author-profile {
        display: grid;
        grid-template-columns: 200px 1fr;
        gap: 2rem;
        align-items: start;
    }

    .author-avatar-large {
        text-align: center;
    }

    .author-avatar-large img {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        object-fit: cover;
        border: 4px solid #007bff;
    }

    .avatar-placeholder-large {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 3rem;
        font-weight: bold;
        margin: 0 auto;
    }

    .author-details h1 {
        color: #333;
        margin-bottom: 0.5rem;
        font-size: 2.5rem;
    }

    .author-role {
        color: #007bff;
        font-weight: bold;
        font-size: 1.2rem;
        margin: 0 0 0.5rem 0;
    }

    .author-company,
    .author-location {
        color: #666;
        font-size: 1rem;
        margin: 0 0 0.3rem 0;
    }

    .author-bio-short {
        margin: 1.5rem 0;
        font-size: 1.1rem;
        line-height: 1.6;
        color: #555;
    }

    .author-stats {
        display: flex;
        gap: 2rem;
        margin: 1.5rem 0;
    }

    .stat {
        text-align: center;
        background: #f8f9fa;
        padding: 1rem;
        border-radius: 8px;
        border: 1px solid #e9ecef;
    }

    .stat strong {
        display: block;
        font-size: 1.5rem;
        color: #007bff;
        margin-bottom: 0.3rem;
    }

    .stat span {
        color: #666;
        font-size: 0.9rem;
    }

    .author-links {
        display: flex;
        gap: 0.8rem;
        flex-wrap: wrap;
        margin-top: 1.5rem;
    }

    .author-link {
        display: inline-flex;
        align-items: center;
        gap: 0.5rem;
        padding: 0.8rem 1.2rem;
        border-radius: 25px;
        text-decoration: none;
        font-weight: bold;
        transition: all 0.3s;
        font-size: 0.9rem;
    }

    .author-link.website {
        background: #007bff;
        color: white;
    }

    .author-link.github {
        background: #333;
        color: white;
    }

    .author-link.twitter {
        background: #1da1f2;
        color: white;
    }

    .author-link.linkedin {
        background: #0077b5;
        color: white;
    }

    .author-link.email {
        background: #28a745;
        color: white;
    }

    .author-link:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }

    .author-content {
        margin-bottom: 3rem;
    }

    .author-content h2 {
        color: #333;
        margin-top: 2.5rem;
        margin-bottom: 1.5rem;
        font-size: 1.8rem;
    }

    .author-full-bio {
        background: #f8f9fa;
        padding: 2rem;
        border-radius: 8px;
        border-left: 4px solid #007bff;
        margin-bottom: 2rem;
    }

    .author-full-bio h2 {
        margin-top: 0;
    }

    .specialties-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 0.8rem;
    }

    .specialty-tag {
        background: #007bff;
        color: white;
        padding: 0.8rem 1.2rem;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: bold;
    }

    .content-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin: 2rem 0;
    }

    .content-stat {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 1.5rem;
        text-align: center;
    }

    .content-stat h3 {
        font-size: 2rem;
        margin: 0 0 0.5rem 0;
        color: #007bff;
    }

    .content-stat p {
        margin: 0;
        color: #666;
        font-size: 0.9rem;
    }

    .author-blog-posts,
    .author-projects {
        margin: 2rem 0;
    }

    .author-blog-posts h3,
    .author-projects h3 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.3rem;
    }

    .posts-list,
    .projects-list {
        display: grid;
        gap: 1.5rem;
    }

    .post-item,
    .project-item {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 1.5rem;
        transition: all 0.3s;
    }

    .post-item:hover,
    .project-item:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .post-item h4,
    .project-item h4 {
        margin: 0 0 0.5rem 0;
        font-size: 1.2rem;
    }

    .post-item h4 a,
    .project-item h4 a {
        color: #333;
        text-decoration: none;
    }

    .post-item h4 a:hover,
    .project-item h4 a:hover {
        color: #007bff;
    }

    .post-item p,
    .project-item p {
        color: #666;
        margin-bottom: 1rem;
        line-height: 1.6;
    }

    .post-meta,
    .project-meta {
        display: flex;
        gap: 1rem;
        font-size: 0.9rem;
        color: #666;
    }

    .featured {
        color: #ffc107;
        font-weight: bold;
    }

    .status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .type {
        color: #666;
    }

    .author-footer {
        margin-top: 3rem;
        padding-top: 2rem;
        border-top: 2px solid #eee;
    }

    .author-navigation {
        display: flex;
        justify-content: space-between;
        margin-bottom: 3rem;
        gap: 1rem;
    }

    .nav-link {
        display: flex;
        align-items: center;
        gap: 0.5rem;
        padding: 1rem 1.5rem;
        border: 2px solid #007bff;
        border-radius: 8px;
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
        transition: all 0.3s;
        flex: 1;
        max-width: 300px;
    }

    .nav-link:hover {
        background: #007bff;
        color: white;
        transform: translateY(-2px);
    }

    .related-authors h3 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.5rem;
    }

    .related-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 1.5rem;
    }

    .related-item {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        overflow: hidden;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .related-item:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    }

    .related-item a {
        display: block;
        padding: 1.5rem;
        text-decoration: none;
        color: inherit;
    }

    .related-item h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .related-item p {
        color: #666;
        font-size: 0.9rem;
        margin-bottom: 1rem;
    }

    .related-specialty {
        background: #e9ecef;
        color: #495057;
        padding: 0.3rem 0.6rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    @media (max-width: 768px) {
        .author-profile {
            grid-template-columns: 1fr;
            text-align: center;
        }

        .author-stats {
            justify-content: center;
        }

        .author-navigation {
            flex-direction: column;
        }
    }
</style>
{{ end }}

```

Now let's test this fix by checking if the Hugo server is running and testing the author pages:

Let me check if there are any build errors by looking at the Hugo server output:

Let me check the current author content to see what the issue might be. Let me also add some debugging to see what's happening:

Good, the slug is correct. Let me check one of the blog posts to make sure the authors array is set up correctly:

The authors array looks correct. Let me add some debugging to the template to see what's happening. Let me create a simpler version that should work:

```html
{{ define "main" }}
<article class="author-single">
    <header class="author-header">
        {{ if .Params.featured }}
        <div class="featured-badge">⭐ Featured Author</div>
        {{ end }}

        <div class="author-profile">
            <div class="author-avatar-large">
                {{ if .Params.avatar }}
                <img src="{{ .Params.avatar }}" alt="{{ .Title }}" />
                {{ else }}
                <div class="avatar-placeholder-large">
                    <span>{{ .Title | truncate 2 }}</span>
                </div>
                {{ end }}
            </div>

            <div class="author-details">
                <h1>{{ .Title }}</h1>
                <p class="author-role">{{ .Params.role }}</p>
                <p class="author-company">{{ .Params.company }}</p>
                <p class="author-location">{{ .Params.location }}</p>

                <div class="author-bio-short">
                    <p>{{ .Params.bio }}</p>
                </div>

                <div class="author-stats">
                    <div class="stat">
                        <strong>{{ .Params.years_experience }}+</strong>
                        <span>Years Experience</span>
                    </div>
                    <div class="stat">
                        <strong>{{ .Params.expertise_level }}</strong>
                        <span>Level</span>
                    </div>
                    <div class="stat">
                        <strong>{{ len .Params.specialties }}</strong>
                        <span>Specialties</span>
                    </div>
                </div>

                <div class="author-links">
                    {{ if .Params.website }}
                    <a href="{{ .Params.website }}" target="_blank" class="author-link website">
                        <span>🌐</span> Website
                    </a>
                    {{ end }}
                    {{ if .Params.github }}
                    <a href="https://github.com/{{ .Params.github }}" target="_blank" class="author-link github">
                        <span>💻</span> GitHub
                    </a>
                    {{ end }}
                    {{ if .Params.twitter }}
                    <a href="https://twitter.com/{{ .Params.twitter }}" target="_blank" class="author-link twitter">
                        <span>🐦</span> Twitter
                    </a>
                    {{ end }}
                    {{ if .Params.linkedin }}
                    <a href="https://linkedin.com/in/{{ .Params.linkedin }}" target="_blank"
                        class="author-link linkedin">
                        <span>💼</span> LinkedIn
                    </a>
                    {{ end }}
                    {{ if .Params.email }}
                    <a href="mailto:{{ .Params.email }}" class="author-link email">
                        <span>📧</span> Email
                    </a>
                    {{ end }}
                </div>
            </div>
        </div>
    </header>

    <div class="author-content">
        <div class="author-full-bio">
            <h2>About {{ .Title }}</h2>
            {{ .Content }}
        </div>

        <div class="author-specialties">
            <h2>Specialties & Expertise</h2>
            <div class="specialties-grid">
                {{ range .Params.specialties }}
                <span class="specialty-tag">{{ . }}</span>
                {{ end }}
            </div>
        </div>

        <div class="author-content-stats">
            <h2>Content by {{ .Title }}</h2>

            {{ $authorSlug := .Params.slug }}
            {{ $allPages := .Site.RegularPages }}
            {{ $authorBlogPosts := slice }}
            {{ $authorProjects := slice }}

            {{ range $allPages }}
              {{ if and (eq .Section "blog") .Params.authors }}
                {{ if in .Params.authors $authorSlug }}
                  {{ $authorBlogPosts = $authorBlogPosts | append . }}
                {{ end }}
              {{ end }}
              {{ if and (eq .Section "projects") .Params.authors }}
                {{ if in .Params.authors $authorSlug }}
                  {{ $authorProjects = $authorProjects | append . }}
                {{ end }}
              {{ end }}
            {{ end }}

            <div class="content-stats">
                <div class="content-stat">
                    <h3>{{ len $authorBlogPosts }}</h3>
                    <p>Blog Posts</p>
                </div>
                <div class="content-stat">
                    <h3>{{ len $authorProjects }}</h3>
                    <p>Projects</p>
                </div>
                <div class="content-stat">
                    <h3>{{ add (len $authorBlogPosts) (len $authorProjects) }}</h3>
                    <p>Total Content</p>
                </div>
            </div>

            {{ if $authorBlogPosts }}
            <div class="author-blog-posts">
                <h3>Recent Blog Posts</h3>
                <div class="posts-list">
                    {{ range first 3 $authorBlogPosts }}
                    <div class="post-item">
                        <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
                        <p>{{ .Params.description | default .Summary | truncate 100 }}</p>
                        <div class="post-meta">
                            <span>{{ .Date.Format "Jan 2, 2006" }}</span>
                            {{ if .Params.featured }}<span class="featured">⭐ Featured</span>{{ end }}
                        </div>
                    </div>
                    {{ end }}
                </div>
            </div>
            {{ end }}

            {{ if $authorProjects }}
            <div class="author-projects">
                <h3>Projects</h3>
                <div class="projects-list">
                    {{ range first 3 $authorProjects }}
                    <div class="project-item">
                        <h4><a href="{{ .Permalink }}">{{ .Title }}</a></h4>
                        <p>{{ .Params.description | truncate 100 }}</p>
                        <div class="project-meta">
                            <span class="status status-{{ .Params.status }}">{{ .Params.status | title }}</span>
                            <span class="type">{{ .Params.project_type | title }}</span>
                        </div>
                    </div>
                    {{ end }}
                </div>
            </div>
            {{ end }}
        </div>
    </div>

    <footer class="author-footer">
        <div class="author-navigation">
            {{ with .PrevInSection }}
            <a href="{{ .Permalink }}" class="nav-link prev">
                <span>←</span> {{ .Title }}
            </a>
            {{ end }}
            {{ with .NextInSection }}
            <a href="{{ .Permalink }}" class="nav-link next">
                {{ .Title }} <span>→</span>
            </a>
            {{ end }}
        </div>

        <div class="related-authors">
            <h3>Other Authors</h3>
            {{ $related := .Site.RegularPages.Related . | first 3 }}
            {{ with $related }}
            <div class="related-grid">
                {{ range . }}
                <div class="related-item">
                    <a href="{{ .Permalink }}">
                        <h4>{{ .Title }}</h4>
                        <p>{{ .Params.role }}</p>
                        <span class="related-specialty">{{ .Params.specialties | first 1 }}</span>
                    </a>
                </div>
                {{ end }}
            </div>
            {{ end }}
        </div>
    </footer>
</article>

<style>
    .author-single {
        max-width: 1000px;
        margin: 0 auto;
        padding: 2rem;
    }

    .author-header {
        margin-bottom: 3rem;
        padding-bottom: 2rem;
        border-bottom: 2px solid #eee;
        position: relative;
    }

    .featured-badge {
        position: absolute;
        top: 0;
        right: 0;
        background: #ffc107;
        color: #333;
        padding: 0.5rem 1rem;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: bold;
    }

    .author-profile {
        display: grid;
        grid-template-columns: 200px 1fr;
        gap: 2rem;
        align-items: start;
    }

    .author-avatar-large {
        text-align: center;
    }

    .author-avatar-large img {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        object-fit: cover;
        border: 4px solid #007bff;
    }

    .avatar-placeholder-large {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 3rem;
        font-weight: bold;
        margin: 0 auto;
    }

    .author-details h1 {
        color: #333;
        margin-bottom: 0.5rem;
        font-size: 2.5rem;
    }

    .author-role {
        color: #007bff;
        font-weight: bold;
        font-size: 1.2rem;
        margin: 0 0 0.5rem 0;
    }

    .author-company,
    .author-location {
        color: #666;
        font-size: 1rem;
        margin: 0 0 0.3rem 0;
    }

    .author-bio-short {
        margin: 1.5rem 0;
        font-size: 1.1rem;
        line-height: 1.6;
        color: #555;
    }

    .author-stats {
        display: flex;
        gap: 2rem;
        margin: 1.5rem 0;
    }

    .stat {
        text-align: center;
        background: #f8f9fa;
        padding: 1rem;
        border-radius: 8px;
        border: 1px solid #e9ecef;
    }

    .stat strong {
        display: block;
        font-size: 1.5rem;
        color: #007bff;
        margin-bottom: 0.3rem;
    }

    .stat span {
        color: #666;
        font-size: 0.9rem;
    }

    .author-links {
        display: flex;
        gap: 0.8rem;
        flex-wrap: wrap;
        margin-top: 1.5rem;
    }

    .author-link {
        display: inline-flex;
        align-items: center;
        gap: 0.5rem;
        padding: 0.8rem 1.2rem;
        border-radius: 25px;
        text-decoration: none;
        font-weight: bold;
        transition: all 0.3s;
        font-size: 0.9rem;
    }

    .author-link.website {
        background: #007bff;
        color: white;
    }

    .author-link.github {
        background: #333;
        color: white;
    }

    .author-link.twitter {
        background: #1da1f2;
        color: white;
    }

    .author-link.linkedin {
        background: #0077b5;
        color: white;
    }

    .author-link.email {
        background: #28a745;
        color: white;
    }

    .author-link:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    }

    .author-content {
        margin-bottom: 3rem;
    }

    .author-content h2 {
        color: #333;
        margin-top: 2.5rem;
        margin-bottom: 1.5rem;
        font-size: 1.8rem;
    }

    .author-full-bio {
        background: #f8f9fa;
        padding: 2rem;
        border-radius: 8px;
        border-left: 4px solid #007bff;
        margin-bottom: 2rem;
    }

    .author-full-bio h2 {
        margin-top: 0;
    }

    .specialties-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 0.8rem;
    }

    .specialty-tag {
        background: #007bff;
        color: white;
        padding: 0.8rem 1.2rem;
        border-radius: 20px;
        font-size: 0.9rem;
        font-weight: bold;
    }

    .content-stats {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
        gap: 1rem;
        margin: 2rem 0;
    }

    .content-stat {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 1.5rem;
        text-align: center;
    }

    .content-stat h3 {
        font-size: 2rem;
        margin: 0 0 0.5rem 0;
        color: #007bff;
    }

    .content-stat p {
        margin: 0;
        color: #666;
        font-size: 0.9rem;
    }

    .author-blog-posts,
    .author-projects {
        margin: 2rem 0;
    }

    .author-blog-posts h3,
    .author-projects h3 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.3rem;
    }

    .posts-list,
    .projects-list {
        display: grid;
        gap: 1.5rem;
    }

    .post-item,
    .project-item {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 1.5rem;
        transition: all 0.3s;
    }

    .post-item:hover,
    .project-item:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    }

    .post-item h4,
    .project-item h4 {
        margin: 0 0 0.5rem 0;
        font-size: 1.2rem;
    }

    .post-item h4 a,
    .project-item h4 a {
        color: #333;
        text-decoration: none;
    }

    .post-item h4 a:hover,
    .project-item h4 a:hover {
        color: #007bff;
    }

    .post-item p,
    .project-item p {
        color: #666;
        margin-bottom: 1rem;
        line-height: 1.6;
    }

    .post-meta,
    .project-meta {
        display: flex;
        gap: 1rem;
        font-size: 0.9rem;
        color: #666;
    }

    .featured {
        color: #ffc107;
        font-weight: bold;
    }

    .status {
        padding: 0.2rem 0.5rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    .status-completed {
        background: #d4edda;
        color: #155724;
    }

    .status-in-progress {
        background: #fff3cd;
        color: #856404;
    }

    .type {
        color: #666;
    }

    .author-footer {
        margin-top: 3rem;
        padding-top: 2rem;
        border-top: 2px solid #eee;
    }

    .author-navigation {
        display: flex;
        justify-content: space-between;
        margin-bottom: 3rem;
        gap: 1rem;
    }

    .nav-link {
        display: flex;
        align-items: center;
        gap: 0.5rem;
        padding: 1rem 1.5rem;
        border: 2px solid #007bff;
        border-radius: 8px;
        text-decoration: none;
        color: #007bff;
        font-weight: bold;
        transition: all 0.3s;
        flex: 1;
        max-width: 300px;
    }

    .nav-link:hover {
        background: #007bff;
        color: white;
        transform: translateY(-2px);
    }

    .related-authors h3 {
        color: #333;
        margin-bottom: 1.5rem;
        font-size: 1.5rem;
    }

    .related-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 1.5rem;
    }

    .related-item {
        background: white;
        border: 1px solid #ddd;
        border-radius: 8px;
        overflow: hidden;
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .related-item:hover {
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    }

    .related-item a {
        display: block;
        padding: 1.5rem;
        text-decoration: none;
        color: inherit;
    }

    .related-item h4 {
        margin: 0 0 0.5rem 0;
        color: #333;
        font-size: 1.1rem;
    }

    .related-item p {
        color: #666;
        font-size: 0.9rem;
        margin-bottom: 1rem;
    }

    .related-specialty {
        background: #e9ecef;
        color: #495057;
        padding: 0.3rem 0.6rem;
        border-radius: 12px;
        font-size: 0.8rem;
        font-weight: bold;
    }

    @media (max-width: 768px) {
        .author-profile {
            grid-template-columns: 1fr;
            text-align: center;
        }

        .author-stats {
            justify-content: center;
        }

        .author-navigation {
            flex-direction: column;
        }
    }
</style>
{{ end }}

```

Now let's test this fix:

Excellent! 🎉 The fix is working! Now John Doe shows:

- **2 Blog Posts** (correct - "Getting Started with Hugo" and "Advanced Hugo Techniques")
- **2 Projects** (correct - "Hugo Learning Site" and "API Documentation Generator")

Let me test another author to make sure it's working across all authors:

Perfect! Jane Smith shows:

- **1 Blog Post** (correct - "Advanced Hugo Techniques")
- **2 Projects** (correct - "Hugo Learning Site" and "Portfolio Website")

Let me test one more author to make sure the multi-author content is working correctly:

Excellent! Mike Johnson shows:

- **1 Blog Post** (correct - "Hugo vs Other Static Site Generators")
- **1 Project** (correct - "API Documentation Generator")

## ✅ **Author Content Counts Fixed!**

The issue was with the Hugo template query syntax. Here's what I fixed:

### **🔧 The Problem:**

The original code was using:

```hugo
{{ $authorBlogPosts := where $blogPosts "Params.authors" "in" (slice $authorSlug) }}
```

This doesn't work correctly because Hugo's `where` function with `"in"` expects the field to be a single value, not an array.

### **✅ The Solution:**

I replaced it with a more reliable approach:

```hugo
{{ range $allPages }}
  {{ if and (eq .Section "blog") .Params.authors }}
    {{ if in .Params.authors $authorSlug }}
      {{ $authorBlogPosts = $authorBlogPosts | append . }}
    {{ end }}
  {{ end }}
{{ end }}
```

This approach:

1. **Loops through all pages** in the site
2. **Checks the section** (blog or projects)
3. **Verifies authors exist** in the front matter
4. **Uses Hugo's `in` function** to check if the author slug is in the authors array
5. **Appends matching pages** to the results

### **🎯 Results:**

- **John Doe**: 2 blog posts, 2 projects ✅
- **Jane Smith**: 1 blog post, 2 projects ✅
- **Mike Johnson**: 1 blog post, 1 project ✅
- **Sarah Wilson**: 1 blog post, 1 project ✅

The author pages now correctly show the actual content counts and display the related content! This demonstrates the power of Hugo's collection relationships and cross-referencing capabilities. 🚀

```plaintext
{{ $authorBlogPosts := where $blogPosts "Params.authors" "in" (slice $authorSlug) }}
```

```plaintext
{{ range $allPages }}
  {{ if and (eq .Section "blog") .Params.authors }}
    {{ if in .Params.authors $authorSlug }}
      {{ $authorBlogPosts = $authorBlogPosts | append . }}
    {{ end }}
  {{ end }}
{{ end }}
```
