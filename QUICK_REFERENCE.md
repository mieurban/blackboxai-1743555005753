# Quick Reference Guide

## 🚀 Quick Start Commands

```bash
# Development
npm run dev              # Start both frontend and backend
npm run dev:frontend    # Start frontend only
npm run dev:backend     # Start backend only

# Testing
npm test                # Run all tests
npm run test:frontend  # Run frontend tests
npm run test:backend   # Run backend tests

# Database
npm run db:migrate     # Run migrations
npm run db:seed       # Seed database
npm run db:reset      # Reset database

# Docker
make docker-dev       # Start development environment
make docker-prod      # Start production environment
make docker-stop     # Stop containers
```

## 📁 Project Structure

```
.
├── backend/                 # Node.js API
│   ├── src/
│   │   ├── config/         # Configuration
│   │   ├── controllers/    # API Controllers
│   │   ├── models/        # Database models
│   │   ├── routes/        # API routes
│   │   └── middleware/    # Custom middleware
│   └── tests/             # Backend tests
└── frontend/              # Vue.js frontend
    ├── src/
    │   ├── components/    # Reusable components
    │   ├── views/         # Page components
    │   ├── stores/        # Pinia stores
    │   └── router/        # Vue Router
    └── tests/             # Frontend tests
```

## 🔑 Key Files

### Backend
- `backend/src/server.js` - Main application file
- `backend/src/config/database.js` - Database configuration
- `backend/src/models/index.js` - Model associations
- `backend/.env.example` - Environment variables template

### Frontend
- `frontend/src/main.js` - Application entry point
- `frontend/src/router/index.js` - Route definitions
- `frontend/src/stores/index.js` - Store definitions
- `frontend/.env.example` - Environment variables template

## 🌐 API Endpoints

### Authentication
```
POST   /api/auth/register     # Register new user
POST   /api/auth/login        # Login user
POST   /api/auth/logout       # Logout user
POST   /api/auth/refresh      # Refresh token
```

### Users
```
GET    /api/users/profile     # Get user profile
PUT    /api/users/profile     # Update profile
GET    /api/users/orders      # Get user orders
```

### Products
```
GET    /api/products          # List products
POST   /api/products          # Create product
GET    /api/products/:id      # Get product
PUT    /api/products/:id      # Update product
DELETE /api/products/:id      # Delete product
```

### Orders
```
GET    /api/orders           # List orders
POST   /api/orders          # Create order
GET    /api/orders/:id      # Get order
PUT    /api/orders/:id      # Update order
```

## 🔧 Environment Variables

### Backend
```env
NODE_ENV=development
PORT=3000
DB_HOST=localhost
DB_NAME=etsy_clone
DB_USER=root
DB_PASSWORD=
JWT_SECRET=your-secret
```

### Frontend
```env
VITE_API_URL=http://localhost:3000
VITE_STRIPE_KEY=your-stripe-key
```

## 📦 Dependencies

### Backend
- Express - Web framework
- Sequelize - ORM
- JWT - Authentication
- Multer - File uploads
- Jest - Testing

### Frontend
- Vue 3 - Framework
- Pinia - State management
- Vue Router - Routing
- Tailwind CSS - Styling
- Jest - Testing

## 🔍 Common Tasks

### Creating New Feature
1. Create backend components:
```bash
touch backend/src/controllers/featureController.js
touch backend/src/routes/featureRoutes.js
touch backend/src/models/feature.js
```

2. Create frontend components:
```bash
mkdir frontend/src/components/feature
touch frontend/src/components/feature/index.vue
touch frontend/src/stores/feature.js
```

### Database Changes
1. Create migration:
```bash
npm run db:create-migration name
```

2. Apply changes:
```bash
npm run db:migrate
```

### Running Tests
1. Single test:
```bash
npm test -- -t "test name"
```

2. Watch mode:
```bash
npm run test:watch
```

## 🐛 Debugging

### Backend
- Use `debug` package
- Check logs in `backend/logs`
- Use Postman/Insomnia for API testing

### Frontend
- Vue DevTools
- Browser Console
- Network Tab

## 🔒 Security Checklist

- [ ] Validate all inputs
- [ ] Sanitize user data
- [ ] Use HTTPS
- [ ] Implement rate limiting
- [ ] Set security headers
- [ ] Enable CORS properly
- [ ] Hash passwords
- [ ] Use prepared statements
- [ ] Implement CSRF protection

## 📈 Monitoring

### Metrics
- Response times
- Error rates
- CPU/Memory usage
- Database queries
- Active users

### Tools
- Prometheus - Metrics
- Grafana - Visualization
- ELK Stack - Logging
- Sentry - Error tracking

## 🚀 Deployment

### Staging
```bash
make deploy-staging
```

### Production
```bash
make deploy-prod
```

## 📚 Documentation

- [Project Guide](PROJECT_GUIDE.md)
- [API Documentation](backend/docs/API.md)
- [Frontend Documentation](frontend/docs/README.md)
- [Development Guide](DEVELOPMENT_GUIDE.md)
- [Contributing Guide](CONTRIBUTING.md)