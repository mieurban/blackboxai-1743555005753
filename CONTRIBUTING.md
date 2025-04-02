# Contributing to Etsy Clone

First off, thank you for considering contributing to Etsy Clone! It's people like you that make this project such a great tool.

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct. By participating, you are expected to uphold this code.

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check the issue list as you might find out that you don't need to create one. When you are creating a bug report, please include as many details as possible:

* Use a clear and descriptive title
* Describe the exact steps which reproduce the problem
* Provide specific examples to demonstrate the steps
* Describe the behavior you observed after following the steps
* Explain which behavior you expected to see instead and why
* Include screenshots and animated GIFs if possible

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an enhancement suggestion, please include:

* Use a clear and descriptive title
* Provide a step-by-step description of the suggested enhancement
* Provide specific examples to demonstrate the steps
* Describe the current behavior and explain which behavior you expected to see instead
* Explain why this enhancement would be useful

### Pull Requests

* Fill in the required template
* Do not include issue numbers in the PR title
* Include screenshots and animated GIFs in your pull request whenever possible
* Follow the JavaScript and Vue.js styleguides
* End all files with a newline
* Avoid platform-dependent code

## Development Process

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Setup Development Environment

```bash
# Clone your fork
git clone https://github.com/<your-username>/etsy-clone.git

# Navigate to the project directory
cd etsy-clone

# Install dependencies
npm install

# Create environment files
cp .env.example .env

# Start development server
npm run dev
```

### Code Style

We use ESLint and Prettier to maintain code quality. Please ensure your code follows these standards:

* Use 2 spaces for indentation
* Use single quotes for strings
* Add trailing commas
* No unused variables
* No console.log in production code

### Testing

* Write test cases for new features
* Ensure all tests pass before submitting PR
* Maintain or increase test coverage

```bash
# Run tests
npm test

# Run tests with coverage
npm run test:coverage
```

## Project Structure

```
.
├── backend/                # Backend application
│   ├── src/
│   │   ├── config/        # Configuration files
│   │   ├── controllers/   # Route controllers
│   │   ├── models/        # Database models
│   │   ├── routes/        # API routes
│   │   ├── middleware/    # Custom middleware
│   │   └── utils/         # Utility functions
│   └── tests/             # Backend tests
└── frontend/              # Frontend application
    ├── src/
    │   ├── components/    # Vue components
    │   ├── views/         # Page components
    │   ├── stores/        # Pinia stores
    │   ├── router/        # Vue router
    │   └── assets/        # Static assets
    └── tests/             # Frontend tests
```

## Commit Messages

* Use the present tense ("Add feature" not "Added feature")
* Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
* Limit the first line to 72 characters or less
* Reference issues and pull requests liberally after the first line

### Commit Message Format
```
<type>(<scope>): <subject>

<body>

<footer>
```

Types:
* feat: A new feature
* fix: A bug fix
* docs: Documentation only changes
* style: Changes that do not affect the meaning of the code
* refactor: A code change that neither fixes a bug nor adds a feature
* perf: A code change that improves performance
* test: Adding missing tests
* chore: Changes to the build process or auxiliary tools

## Branch Naming Convention

* feature/: New features
* bugfix/: Bug fixes
* hotfix/: Critical fixes
* release/: Release branches
* docs/: Documentation updates

Example: `feature/add-payment-gateway`

## Review Process

1. Maintainers will review your PR
2. Address any comments or requested changes
3. Once approved, your PR will be merged
4. Delete your branch after merging

## Additional Notes

### Git Workflow

1. Keep your fork up to date
```bash
git remote add upstream https://github.com/original/etsy-clone.git
git fetch upstream
git merge upstream/main
```

2. Create feature branches from main
```bash
git checkout main
git pull
git checkout -b feature/your-feature
```

### Documentation

* Update README.md with details of changes to the interface
* Update API documentation when changing endpoints
* Add JSDoc comments for new functions
* Update component documentation

### Testing Guidelines

* Write unit tests for utilities and helpers
* Write integration tests for API endpoints
* Write component tests for Vue components
* Write E2E tests for critical user flows

## Questions?

Feel free to open an issue with the tag `question` if you have any questions about contributing.

Thank you for your contributions! 🎉