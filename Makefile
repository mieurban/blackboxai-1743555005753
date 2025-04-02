# Development commands
.PHONY: dev dev-frontend dev-backend install clean test lint build docker-dev docker-prod

# Default target
all: install dev

# Installation
install:
	npm install
	cd frontend && npm install
	cd backend && npm install

# Development
dev:
	npm run dev

dev-frontend:
	cd frontend && npm run dev

dev-backend:
	cd backend && npm run dev

# Testing
test:
	npm run test

test-frontend:
	cd frontend && npm run test

test-backend:
	cd backend && npm run test

test-coverage:
	npm run test:coverage

# Linting
lint:
	npm run lint

lint-frontend:
	cd frontend && npm run lint

lint-backend:
	cd backend && npm run lint

# Building
build:
	npm run build

build-frontend:
	cd frontend && npm run build

build-backend:
	cd backend && npm run build

# Database
db-migrate:
	cd backend && npm run db:migrate

db-seed:
	cd backend && npm run db:seed

db-reset:
	cd backend && npm run db:reset

# Docker commands
docker-dev:
	docker-compose -f docker-compose.yml up --build

docker-prod:
	docker-compose -f docker-compose.prod.yml up --build -d

docker-stop:
	docker-compose down

docker-clean:
	docker-compose down -v --rmi all

# Cleaning
clean:
	rm -rf node_modules
	cd frontend && rm -rf node_modules dist
	cd backend && rm -rf node_modules dist

# Documentation
docs:
	cd docs && npm run build

# Deployment
deploy-staging:
	./scripts/deploy-staging.sh

deploy-prod:
	./scripts/deploy-prod.sh

# Utility
logs:
	docker-compose logs -f

ps:
	docker-compose ps

# Help
help:
	@echo "Available commands:"
	@echo "  make install      - Install all dependencies"
	@echo "  make dev         - Start development servers"
	@echo "  make test        - Run all tests"
	@echo "  make lint        - Run linting"
	@echo "  make build       - Build for production"
	@echo "  make clean       - Clean up build files"
	@echo "  make docker-dev  - Start Docker development environment"
	@echo "  make docker-prod - Start Docker production environment"
	@echo "  make db-migrate  - Run database migrations"
	@echo "  make db-seed     - Seed the database"
	@echo "  make db-reset    - Reset the database"
	@echo "  make docs        - Build documentation"
	@echo "  make deploy-staging - Deploy to staging"
	@echo "  make deploy-prod    - Deploy to production"
	@echo "  make logs        - View Docker logs"
	@echo "  make ps          - List Docker containers"

# Environment variables
export NODE_ENV ?= development

# Colors
YELLOW=\033[0;33m
RED=\033[0;31m
GREEN=\033[0;32m
NC=\033[0m # No Color

# Error handling
define error_handler
	@if [ $$? -ne 0 ]; then \
		printf "${RED}Error: Command failed${NC}\n"; \
		exit 1; \
	fi
endef