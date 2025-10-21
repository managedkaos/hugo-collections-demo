# Hugo Collections Demo - Makefile
# A comprehensive Makefile for Hugo static site development

.PHONY: help build serve clean install check lint format test deploy preview

# Default target
.DEFAULT_GOAL := help

# Variables
HUGO_VERSION := 0.128.0
SITE_URL := http://localhost:1313
BUILD_DIR := public
CONTENT_DIR := content
LAYOUTS_DIR := layouts
STATIC_DIR := static

# Colors for output
GREEN := \033[0;32m
YELLOW := \033[1;33m
RED := \033[0;31m
NC := \033[0m # No Color

help: ## Show this help message
	@echo "$(GREEN)Hugo Collections Demo - Available Commands$(NC)"
	@echo "=========================================="
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "  $(YELLOW)%-15s$(NC) %s\n", $$1, $$2}' $(MAKEFILE_LIST)

install: ## Install Hugo and dependencies
	@echo "$(GREEN)Installing Hugo...$(NC)"
	@if command -v hugo >/dev/null 2>&1; then \
		echo "$(YELLOW)Hugo is already installed$(NC)"; \
		hugo version; \
	else \
		echo "$(YELLOW)Installing Hugo via Homebrew...$(NC)"; \
		brew install hugo; \
	fi
	@echo "$(GREEN)Hugo installation complete$(NC)"

check: ## Check Hugo installation and site configuration
	@echo "$(GREEN)Checking Hugo installation...$(NC)"
	@hugo version
	@echo "$(GREEN)Checking site configuration...$(NC)"
	@hugo config
	@echo "$(GREEN)Site check complete$(NC)"

build: clean ## Build the static site
	@echo "$(GREEN)Building Hugo site...$(NC)"
	@hugo --minify --gc
	@echo "$(GREEN)Build complete! Site generated in $(BUILD_DIR)/$(NC)"

serve: ## Start Hugo development server
	@echo "$(GREEN)Starting Hugo development server...$(NC)"
	@echo "$(YELLOW)Site will be available at: $(SITE_URL)$(NC)"
	@echo "$(YELLOW)Press Ctrl+C to stop the server$(NC)"
	@hugo server -D --bind 0.0.0.0 --port 1313

preview: build ## Build and preview the site locally
	@echo "$(GREEN)Building site for preview...$(NC)"
	@hugo --minify
	@echo "$(GREEN)Starting preview server...$(NC)"
	@cd $(BUILD_DIR) && python3 -m http.server 8000
	@echo "$(YELLOW)Preview available at: http://localhost:8000$(NC)"

clean: ## Clean build artifacts
	@echo "$(GREEN)Cleaning build artifacts...$(NC)"
	@rm -rf $(BUILD_DIR)
	@rm -rf resources/_gen
	@echo "$(GREEN)Clean complete$(NC)"

lint: ## Lint content and templates
	@echo "$(GREEN)Linting Hugo site...$(NC)"
	@echo "$(YELLOW)Checking for broken links...$(NC)"
	@if command -v htmltest >/dev/null 2>&1; then \
		htmltest -c .htmltest.yml $(BUILD_DIR) || true; \
	else \
		echo "$(YELLOW)htmltest not installed. Install with: brew install htmltest$(NC)"; \
	fi
	@echo "$(YELLOW)Checking for orphaned content...$(NC)"
	@hugo --quiet --gc 2>&1 | grep -i "orphaned" || echo "$(GREEN)No orphaned content found$(NC)"
	@echo "$(GREEN)Linting complete$(NC)"

format: ## Format content and templates
	@echo "$(GREEN)Formatting Hugo site...$(NC)"
	@echo "$(YELLOW)Formatting Markdown files...$(NC)"
	@find $(CONTENT_DIR) -name "*.md" -exec prettier --write {} \; 2>/dev/null || echo "$(YELLOW)Prettier not installed. Install with: npm install -g prettier$(NC)"
	@echo "$(GREEN)Formatting complete$(NC)"

test: build ## Run tests on the built site
	@echo "$(GREEN)Running site tests...$(NC)"
	@echo "$(YELLOW)Testing site structure...$(NC)"
	@test -f $(BUILD_DIR)/index.html || (echo "$(RED)Error: index.html not found$(NC)" && exit 1)
	@test -f $(BUILD_DIR)/blog/index.html || (echo "$(RED)Error: blog index not found$(NC)" && exit 1)
	@test -f $(BUILD_DIR)/projects/index.html || (echo "$(RED)Error: projects index not found$(NC)" && exit 1)
	@test -f $(BUILD_DIR)/authors/index.html || (echo "$(RED)Error: authors index not found$(NC)" && exit 1)
	@echo "$(GREEN)All tests passed!$(NC)"

deploy: build ## Deploy to production (customize for your hosting)
	@echo "$(GREEN)Deploying site...$(NC)"
	@echo "$(YELLOW)Customize this target for your hosting provider$(NC)"
	@echo "$(YELLOW)Examples:$(NC)"
	@echo "  - Netlify: netlify deploy --prod --dir=$(BUILD_DIR)"
	@echo "  - Vercel: vercel --prod"
	@echo "  - AWS S3: aws s3 sync $(BUILD_DIR)/ s3://your-bucket-name/"
	@echo "$(GREEN)Deploy target ready - customize as needed$(NC)"

new-post: ## Create a new blog post (usage: make new-post NAME="post-title")
	@if [ -z "$(NAME)" ]; then \
		echo "$(RED)Error: Please provide a name. Usage: make new-post NAME=\"post-title\"$(NC)"; \
		exit 1; \
	fi
	@echo "$(GREEN)Creating new blog post: $(NAME)$(NC)"
	@hugo new blog/$(shell echo $(NAME) | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g').md
	@echo "$(GREEN)Blog post created!$(NC)"

new-project: ## Create a new project (usage: make new-project NAME="project-title")
	@if [ -z "$(NAME)" ]; then \
		echo "$(RED)Error: Please provide a name. Usage: make new-project NAME=\"project-title\"$(NC)"; \
		exit 1; \
	fi
	@echo "$(GREEN)Creating new project: $(NAME)$(NC)"
	@hugo new projects/$(shell echo $(NAME) | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g').md
	@echo "$(GREEN)Project created!$(NC)"

new-author: ## Create a new author (usage: make new-author NAME="author-name")
	@if [ -z "$(NAME)" ]; then \
		echo "$(RED)Error: Please provide a name. Usage: make new-author NAME=\"author-name\"$(NC)"; \
		exit 1; \
	fi
	@echo "$(GREEN)Creating new author: $(NAME)$(NC)"
	@hugo new authors/$(shell echo $(NAME) | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g').md
	@echo "$(GREEN)Author created!$(NC)"

stats: ## Show site statistics
	@echo "$(GREEN)Site Statistics$(NC)"
	@echo "=================="
	@echo "$(YELLOW)Total pages:$(NC) $$(find $(CONTENT_DIR) -name "*.md" | wc -l)"
	@echo "$(YELLOW)Blog posts:$(NC) $$(find $(CONTENT_DIR)/blog -name "*.md" | wc -l)"
	@echo "$(YELLOW)Projects:$(NC) $$(find $(CONTENT_DIR)/projects -name "*.md" | wc -l)"
	@echo "$(YELLOW)Authors:$(NC) $$(find $(CONTENT_DIR)/authors -name "*.md" | wc -l)"
	@echo "$(YELLOW)Layouts:$(NC) $$(find $(LAYOUTS_DIR) -name "*.html" | wc -l)"
	@echo "$(GREEN)Statistics complete$(NC)"

validate: build ## Validate the built site
	@echo "$(GREEN)Validating site...$(NC)"
	@echo "$(YELLOW)Checking HTML validity...$(NC)"
	@if command -v html5validator >/dev/null 2>&1; then \
		html5validator --root $(BUILD_DIR) || true; \
	else \
		echo "$(YELLOW)html5validator not installed. Install with: pip install html5validator$(NC)"; \
	fi
	@echo "$(GREEN)Validation complete$(NC)"

watch: ## Watch for changes and rebuild automatically
	@echo "$(GREEN)Watching for changes...$(NC)"
	@echo "$(YELLOW)Press Ctrl+C to stop$(NC)"
	@hugo server -D --watch --bind 0.0.0.0 --port 1313

deps: ## Install development dependencies
	@echo "$(GREEN)Installing development dependencies...$(NC)"
	@echo "$(YELLOW)Installing htmltest for link checking...$(NC)"
	@if command -v brew >/dev/null 2>&1; then \
		brew install htmltest; \
	else \
		echo "$(YELLOW)Homebrew not found. Please install htmltest manually$(NC)"; \
	fi
	@echo "$(YELLOW)Installing prettier for code formatting...$(NC)"
	@if command -v npm >/dev/null 2>&1; then \
		npm install -g prettier; \
	else \
		echo "$(YELLOW)Node.js/npm not found. Please install prettier manually$(NC)"; \
	fi
	@echo "$(GREEN)Dependencies installed$(NC)"

# Development workflow targets
dev: clean serve ## Start development environment

prod: clean build test ## Build for production

ci: clean build test lint validate ## Run CI pipeline

# Quick development commands
quick-serve: ## Quick serve without drafts
	@hugo server --bind 0.0.0.0 --port 1313

quick-build: ## Quick build without minification
	@hugo --gc

# Content management shortcuts
post: new-post ## Alias for new-post
project: new-project ## Alias for new-project
author: new-author ## Alias for new-author
