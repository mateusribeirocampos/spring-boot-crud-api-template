# 🛍️ Spring Boot E-commerce API

[![Production Deploy](https://img.shields.io/badge/Production-Live-brightgreen)](https://spring-boot-ecommerce-api.onrender.com/)
[![Java](https://img.shields.io/badge/Java-21-orange)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-3.5.3-brightgreen)](https://spring.io/projects/spring-boot)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue)](https://www.postgresql.org/)
[![Maven](https://img.shields.io/badge/Maven-3.6+-red)](https://maven.apache.org/)

A professional-grade Spring Boot REST API for e-commerce applications, featuring complete CRUD operations, complex JPA relationships, and production-ready PostgreSQL deployment on Render.

## 🌟 Live Demo

**Production API**: [https://spring-boot-ecommerce-api.onrender.com/](https://spring-boot-ecommerce-api.onrender.com/)

Test the API using Postman or any REST client with the endpoints documented below.

## 🚀 Features

- ✅ **Complete RESTful API** with full CRUD operations (GET, POST, PUT, DELETE)
- ✅ **Spring Boot 3.5.3** with Java 21 LTS
- ✅ **Production PostgreSQL** database on Render
- ✅ **H2 Database** for development and testing
- ✅ **Professional Architecture** (Controller → Service → Repository)
- ✅ **E-commerce Domain Model** with Users, Orders, Products, Categories, Payments
- ✅ **Complex JPA Relationships** with proper associations and cascading
- ✅ **Order Management System** with OrderItems, OrderStatus enum, and Payment tracking
- ✅ **Exception Handling** with custom error responses
- ✅ **Connection Pooling** with HikariCP for production
- ✅ **Environment Profiles** (dev, test, prod)
- ✅ **Maven Build System** with optimized dependencies
- ✅ **Production Ready** with proper logging and monitoring

## 📋 Prerequisites

- **Java 21** or higher
- **Maven 3.6** or higher
- **PostgreSQL** (for production)
- **Postman** or REST client for testing

## 🛠️ Installation & Setup

### Local Development

1. **Clone the repository:**

   ```bash
   git clone https://github.com/mateusribeirocampos/spring-boot-crud-api-template.git
   cd spring-boot-crud-api-template
   ```

2. **Build the project:**

   ```bash
   mvn clean install
   ```

3. **Run locally (H2 database):**

   ```bash
   # Switch to test profile for H2
   mvn spring-boot:run -Dspring-boot.run.profiles=test
   ```

4. **Access the application:**
   - **API Base URL:** `http://localhost:8080`
   - **H2 Console:** `http://localhost:8080/h2-console`

### Production Deployment

The application is configured for production deployment on Render with PostgreSQL.

## 🗄️ Database Configuration

### Development (H2)

- **Console:** `http://localhost:8080/h2-console`
- **JDBC URL:** `jdbc:h2:mem:testdb`
- **Username:** `sa`
- **Password:** (empty)

### Production (PostgreSQL)

- **Database:** PostgreSQL 16
- **Connection Pool:** HikariCP optimized for production
- **Environment Variables:** `DATABASE_HOST`, `DATABASE_PORT`, `DATABASE_NAME`, `DATABASE_USERNAME`, `DATABASE_PASSWORD`

## 📡 API Endpoints

### 🔗 Base URL

- **Production:** `https://spring-boot-ecommerce-api.onrender.com`
- **Local:** `http://localhost:8080`

### 👤 User Management

| Method | Endpoint      | Description     | Status |
| ------ | ------------- | --------------- | ------ |
| GET    | `/users`      | Get all users   | ✅     |
| GET    | `/users/{id}` | Get user by ID  | ✅     |
| POST   | `/users`      | Create new user | ✅     |
| PUT    | `/users/{id}` | Update user     | ✅     |
| DELETE | `/users/{id}` | Delete user     | ✅     |

### 📦 Order Management

| Method | Endpoint       | Description     | Status |
| ------ | -------------- | --------------- | ------ |
| GET    | `/orders`      | Get all orders  | ✅     |
| GET    | `/orders/{id}` | Get order by ID | ✅     |

### 🛍️ Product Management

| Method | Endpoint         | Description       | Status |
| ------ | ---------------- | ----------------- | ------ |
| GET    | `/products`      | Get all products  | ✅     |
| GET    | `/products/{id}` | Get product by ID | ✅     |

### 📂 Category Management

| Method | Endpoint           | Description        | Status |
| ------ | ------------------ | ------------------ | ------ |
| GET    | `/categories`      | Get all categories | ✅     |
| GET    | `/categories/{id}` | Get category by ID | ✅     |

## 📊 Sample Data

The application automatically seeds the database with comprehensive sample data through the `TestConfig` class:

### 👥 Users

| ID  | Name        | Email           | Phone     |
| --- | ----------- | --------------- | --------- |
| 1   | Maria Brown | [maria@gmail.com] | 988888888 |
| 2   | Alex Green  | [alex@gmail.com]  | 977777777 |

### 📂 Categories

| ID  | Name        |
| --- | ----------- |
| 1   | Electronics |
| 2   | Books       |
| 3   | Computers   |
| 4   | Finance     |
| 5   | Games       |
| 6   | Health      |
| 7   | Internet    |
| 8   | Education   |
| 9   | Science     |
| 10  | Sports      |

### 🛍️ Products

| ID  | Name                  | Price    | Categories             |
| --- | --------------------- | -------- | ---------------------- |
| 1   | The Lord of the Rings | $90.50   | Books                  |
| 2   | Smart TV              | $2190.00 | Electronics, Computers |
| 3   | Macbook Pro           | $1250.00 | Computers              |
| 4   | PC Gamer              | $1200.00 | Computers              |
| 5   | Rails for Dummies     | $100.99  | Books                  |

### 📦 Orders

| ID  | Date       | Status          | User        | Items                                     |
| --- | ---------- | --------------- | ----------- | ----------------------------------------- |
| 1   | 2025-06-20 | PAID            | Maria Brown | 2x The Lord of the Rings + 1x Macbook Pro |
| 2   | 2025-07-21 | WAITING_PAYMENT | Alex Green  | 2x Macbook Pro                            |
| 3   | 2025-07-22 | WAITING_PAYMENT | Maria Brown | 2x Rails for Dummies                      |
| 4   | 2025-07-07 | DELIVERED       | Alex Green  | Various items                             |

## 🧪 Testing with Postman

### Quick Start Examples

1. **Get all users:**

   ```bash
   GET https://spring-boot-ecommerce-api.onrender.com/users
   ```

2. **Get user by ID:**

   ```bash
   GET https://spring-boot-ecommerce-api.onrender.com/users/1
   ```

3. **Create new user:**

   ```bash
   POST https://spring-boot-ecommerce-api.onrender.com/users
   Content-Type: application/json

   {
     "name": "João Silva",
     "email": "joao@email.com",
     "phone": "999999999",
     "password": "123456"
   }
   ```

4. **Get all products:**

   ```bash
   GET https://spring-boot-ecommerce-api.onrender.com/products-ç
   ```

5. **Get order details:**

   ```bash
   GET https://spring-boot-ecommerce-api.onrender.com/orders/1
   ```

## 🏗️ Project Architecture

### 📁 Directory Structure

```bash
src/
├── main/
│   ├── java/com/campos/backend/
│   │   ├── BackendApplication.java          # 🚀 Main application class
│   │   ├── config/
│   │   │   └── TestConfig.java              # ⚙️ Database seeding configuration
│   │   ├── entities/                        # 📊 JPA Entities
│   │   │   ├── User.java                    # 👤 User entity
│   │   │   ├── Order.java                   # 📦 Order entity
│   │   │   ├── Product.java                 # 🛍️ Product entity
│   │   │   ├── Category.java                # 📂 Category entity
│   │   │   ├── OrderItem.java               # 📝 Order item entity
│   │   │   ├── Payment.java                 # 💳 Payment entity
│   │   │   ├── enums/
│   │   │   │   └── OrderStatus.java         # 📋 Order status enum
│   │   │   └── pk/
│   │   │       └── OrderItemPK.java         # 🔑 Composite primary key
│   │   ├── repositories/                    # 🗄️ Data Access Layer
│   │   │   ├── UserRepository.java
│   │   │   ├── OrderRepository.java
│   │   │   ├── ProductRepository.java
│   │   │   ├── CategoryRepository.java
│   │   │   └── OrderItemRepository.java
│   │   ├── resources/                       # 🌐 REST Controllers
│   │   │   ├── UserResource.java
│   │   │   ├── OrderResource.java
│   │   │   ├── ProductResource.java
│   │   │   ├── CategoryResource.java
│   │   │   └── exceptions/                  # ⚠️ Exception handlers
│   │   │       ├── ResourceExceptionHandler.java
│   │   │       └── StandardError.java
│   │   └── services/                        # 💼 Business Logic Layer
│   │       ├── UserService.java
│   │       ├── OrderService.java
│   │       ├── ProductService.java
│   │       ├── CategoryService.java
│   │       └── exceptions/                  # ⚠️ Custom exceptions
│   │           ├── DatabaseException.java
│   │           └── ResourceNotFoundException.java
│   └── resources/
│       ├── application.properties           # 🔧 Production config
│       ├── application-prod.properties      # 🏭 Production config
│       └── application-test.properties      # 🧪 Test config
└── test/
    └── java/com/campos/backend/
        └── BackendApplicationTests.java     # ✅ Test class
```

### 🔧 Environment Configuration

#### Production Profile (`application-prod.properties`)

```properties
# PostgreSQL Database
spring.datasource.url=jdbc:postgresql://${DATABASE_HOST}:${DATABASE_PORT}/${DATABASE_NAME}
spring.datasource.username=${DATABASE_USERNAME}
spring.datasource.password=${DATABASE_PASSWORD}

# HikariCP Connection Pool
spring.datasource.hikari.maximum-pool-size=20
spring.datasource.hikari.minimum-idle=5

# JPA Configuration
spring.jpa.hibernate.ddl-auto=validate
spring.jpa.show-sql=false
```

#### Test Profile (`application-test.properties`)

```properties
# H2 In-Memory Database
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.username=sa
spring.datasource.password=

# JPA Configuration
spring.jpa.hibernate.ddl-auto=create-drop
spring.jpa.show-sql=true
```

### 📦 Key Dependencies

```xml
<dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-web</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>
    <dependency>
        <groupId>org.postgresql</groupId>
        <artifactId>postgresql</artifactId>
    </dependency>
    <dependency>
        <groupId>com.h2database</groupId>
        <artifactId>h2</artifactId>
    </dependency>
</dependencies>
```

## 🧪 Testing

### Run Tests

```bash
mvn test
```

### Build & Package

```bash
mvn clean install
```

### Run with Different Profiles

```bash
# Test profile (H2 database)
mvn spring-boot:run -Dspring-boot.run.profiles=test

# Production profile (PostgreSQL)
mvn spring-boot:run -Dspring-boot.run.profiles=prod
```

## 🏛️ Architecture & Design Patterns

### 🔄 Layered Architecture

```bash
┌─────────────────────────────────────────────────────────────────────┐
│                          🌐 REST Layer                              │
│                    (UserResource, OrderResource)                    │
├─────────────────────────────────────────────────────────────────────┤
│                         💼 Service Layer                            │
│                   (UserService, OrderService)                       │
├─────────────────────────────────────────────────────────────────────┤
│                       🗄️ Repository Layer                           │
│                 (UserRepository, OrderRepository)                   │
├─────────────────────────────────────────────────────────────────────┤
│                        📊 Entity Layer                              │
│                      (User, Order, Product)                         │
├─────────────────────────────────────────────────────────────────────┤
│                        🐘 Database Layer                            │
│                        (PostgreSQL / H2)                            │
└─────────────────────────────────────────────────────────────────────┘
```

### 📊 Domain Model

| Entity        | Description               | Key Features                 |
| ------------- | ------------------------- | ---------------------------- |
| **User**      | System users              | Personal info, order history |
| **Order**     | Customer orders           | Timestamps, status tracking  |
| **Product**   | Items for sale            | Pricing, categorization      |
| **Category**  | Product categories        | Many-to-many relationships   |
| **OrderItem** | Order-Product association | Quantity, pricing            |
| **Payment**   | Payment information       | One-to-one with orders       |

### 🔗 JPA Relationships

- **OneToMany**: User → Orders
- **ManyToOne**: Order → User
- **ManyToMany**: Product ↔ Category
- **ManyToMany with Extra Attributes**: Order ↔ Product (via OrderItem)
- **OneToOne**: Order ↔ Payment

### 📋 Order Status Management

| Status            | Description                     |
| ----------------- | ------------------------------- |
| `WAITING_PAYMENT` | Order created, awaiting payment |
| `PAID`            | Payment processed successfully  |
| `SHIPPED`         | Order shipped to customer       |
| `DELIVERED`       | Order delivered to customer     |
| `CANCELED`        | Order canceled                  |

## 🚀 Production Features

### ✅ What's Implemented

- ✅ Full CRUD operations for Users
- ✅ Read operations for Orders, Products, Categories
- ✅ Complex JPA relationships
- ✅ Exception handling
- ✅ Production PostgreSQL deployment
- ✅ Connection pooling with HikariCP
- ✅ Environment-specific configurations
- ✅ Comprehensive sample data

### 🔮 Future Enhancements

- 🔄 Complete CRUD for all entities
- 🔐 Authentication & authorization (Spring Security)
- 📊 API documentation (Swagger/OpenAPI)
- 🧪 Comprehensive testing suite
- 📈 Monitoring and metrics
- 🔍 Advanced search and filtering
- 📝 Input validation
- 💰 Payment processing integration

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. **Fork the repository**
2. **Create a feature branch**

   ```bash
   git checkout -b feature/amazing-feature
   ```

3. **Commit your changes**

   ```bash
   git commit -m 'Add some amazing feature'
   ```

4. **Push to the branch**

   ```bash
   git push origin feature/amazing-feature
   ```

5. **Open a Pull Request**

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👤 Author

## **Mateus R Campos**

- 🌐 **Portfolio**: [mateusribeirocampos](https://portfolio-mateusribeirocampos.vercel.app/)
- 💼 **LinkedIn**: [Mateus Ribeiro de Campos](https://www.linkedin.com/in/mateus-ribeiro-de-campos-6a135331/)
- 🐙 **GitHub**: [@mateusribeirocampos](https://github.com/mateusribeirocampos)

---

⭐ **Star this repository if you find it helpful!**

🚀 **Live API**: [https://spring-boot-ecommerce-api.onrender.com/](https://spring-boot-ecommerce-api.onrender.com/)

📧 **Questions?** Feel free to reach out via LinkedIn or create an issue in this repository.
