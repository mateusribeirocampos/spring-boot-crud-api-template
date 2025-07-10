# Spring Boot E-commerce API Template

A comprehensive Spring Boot template for building RESTful APIs with full e-commerce functionality, featuring clean architecture, JPA relationships, and H2 database support.

## 🚀 Features

- **RESTful API** with complete CRUD operations
- **Spring Boot 3.5.3** with Java 21
- **JPA/Hibernate** for data persistence with complex relationships
- **H2 Database** for development and testing
- **Layered Architecture** (Controller → Service → Repository)
- **E-commerce Domain Model** with Users, Orders, Products, Categories, Payments
- **Many-to-Many Associations** with JoinTable and extra attributes
- **Order Management System** with OrderItems, OrderStatus enum, and Payment tracking
- **Test Profile** with comprehensive database seeding
- **Maven** build system
- **Clean Code** structure following Spring Boot best practices

## 📋 Prerequisites

- Java 21 or higher
- Maven 3.6 or higher
- IDE of your choice (IntelliJ IDEA, Eclipse, VS Code)

## 🛠️ Installation & Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/mateusribeirocampos/spring-boot-crud-api-template.git
   cd spring-boot-crud-api-template
   ```

2. **Build the project:**

   ```bash
   mvn clean install
   ```

3. **Run the application:**

   ```bash
   mvn spring-boot:run
   ```

The application will start on `http://localhost:8080`

## 🗄️ Database Access

The application uses H2 in-memory database for development and testing.

- **H2 Console:** `http://localhost:8080/h2-console`
- **JDBC URL:** `jdbc:h2:mem:testdb`
- **Username:** `sa`
- **Password:** (empty)

## 📡 API Endpoints

### User Management

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/users` | Get all users |
| GET | `/users/{id}` | Get user by ID |

### Order Management

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/orders` | Get all orders |
| GET | `/orders/{id}` | Get order by ID |

### Product Management

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/products` | Get all products |
| GET | `/products/{id}` | Get product by ID |

### Category Management

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/categories` | Get all categories |
| GET | `/categories/{id}` | Get category by ID |

### Sample Data

The application automatically seeds the database with comprehensive sample data through the `TestConfig` class:

**Users:**
- Maria Brown (maria@gmail.com) - Phone: 988888888
- Alex Green (alex@gmail.com) - Phone: 977777777

**Categories:**
- Electronics
- Books
- Computers

**Products:**
- The Lord of the Rings ($90.50) - Category: Books
- Smart TV ($2190.00) - Categories: Electronics, Computers
- Macbook Pro ($1250.00) - Category: Computers
- PC Gamer ($1200.00) - Category: Computers
- Rails for Dummies ($100.99) - Category: Books

**Orders:**
- Order 1 (2019-06-20): Status PAID, User: Maria Brown
  - 2x The Lord of the Rings + 1x Macbook Pro
  - Payment completed on 2019-06-20T21:53:07Z
- Order 2 (2019-07-21): Status WAITING_PAYMENT, User: Alex Green
  - 2x Macbook Pro
- Order 3 (2019-07-22): Status WAITING_PAYMENT, User: Maria Brown
  - 2x Rails for Dummies
- Order 4 (2025-07-07): Status DELIVERED, User: Alex Green

## 🏗️ Project Structure

```bash
src/
├── main/
│   ├── java/com/campos/backend/
│   │   ├── BackendApplication.java      # Main application class
│   │   ├── config/
│   │   │   └── TestConfig.java          # Test configuration and data seeding
│   │   ├── entities/
│   │   │   ├── User.java                # User entity with order associations
│   │   │   ├── Order.java               # Order entity with status and items
│   │   │   ├── Product.java             # Product entity with categories
│   │   │   ├── Category.java            # Category entity
│   │   │   ├── OrderItem.java           # Order item with composite key
│   │   │   ├── Payment.java             # Payment entity with one-to-one order association
│   │   │   ├── enums/
│   │   │   │   └── OrderStatus.java     # Order status enumeration
│   │   │   └── pk/
│   │   │       └── OrderItemPK.java     # Composite primary key for OrderItem
│   │   ├── repositories/
│   │   │   ├── UserRepository.java      # User data access layer
│   │   │   ├── OrderRepository.java     # Order data access layer
│   │   │   ├── ProductRepository.java   # Product data access layer
│   │   │   ├── CategoryRepository.java  # Category data access layer
│   │   │   └── OrderItemRepository.java # OrderItem data access layer
│   │   ├── resources/
│   │   │   ├── UserResource.java        # User REST controller
│   │   │   ├── OrderResource.java       # Order REST controller
│   │   │   ├── ProductResource.java     # Product REST controller
│   │   │   └── CategoryResource.java    # Category REST controller
│   │   └── services/
│   │       ├── UserService.java         # User business logic layer
│   │       ├── OrderService.java        # Order business logic layer
│   │       ├── ProductService.java      # Product business logic layer
│   │       └── CategoryService.java     # Category business logic layer
│   └── resources/
│       ├── application.properties       # Main configuration
│       └── application-test.properties  # Test profile configuration
└── test/
    └── java/com/campos/backend/
        └── BackendApplicationTests.java # Test class
```

## 🔧 Configuration

### Application Properties

- **Profile:** Test profile active by default
- **Database:** H2 in-memory database
- **JPA:** Hibernate with SQL logging enabled
- **H2 Console:** Enabled for development

### Key Dependencies

- Spring Boot Starter Web
- Spring Boot Starter Data JPA
- Spring Boot Starter Test
- H2 Database

## 🧪 Testing

Run the tests using:

```bash
mvn test
```

## 📚 Usage Examples

### User Operations

```bash
# Get all users
curl -X GET http://localhost:8080/users

# Get user by ID
curl -X GET http://localhost:8080/users/1
```

### Order Operations

```bash
# Get all orders
curl -X GET http://localhost:8080/orders

# Get order by ID
curl -X GET http://localhost:8080/orders/1
```

### Product Operations

```bash
# Get all products
curl -X GET http://localhost:8080/products

# Get product by ID
curl -X GET http://localhost:8080/products/1
```

### Category Operations

```bash
# Get all categories
curl -X GET http://localhost:8080/categories

# Get category by ID
curl -X GET http://localhost:8080/categories/1
```

## 🏛️ Architecture & Design Patterns

### Domain Model
- **User**: Represents system users with personal information and order history
- **Order**: Represents customer orders with timestamps and status tracking
- **Product**: Represents items for sale with pricing and categorization
- **Category**: Represents product categories with many-to-many relationships
- **OrderItem**: Represents the association between orders and products with quantity and pricing
- **Payment**: Represents payment information with one-to-one relationship to orders

### JPA Relationships
- **OneToMany**: User → Orders (one user can have many orders)
- **ManyToOne**: Order → User (many orders belong to one user)
- **ManyToMany**: Product ↔ Category (products can belong to multiple categories)
- **ManyToMany with Extra Attributes**: Order ↔ Product through OrderItem (with quantity and price)
- **OneToOne**: Order ↔ Payment (one order has one payment)

### Order Status Management
The system implements a comprehensive order status system:
- `WAITING_PAYMENT` - Order created, awaiting payment
- `PAID` - Payment processed successfully
- `SHIPPED` - Order shipped to customer
- `DELIVERED` - Order delivered to customer
- `CANCELED` - Order canceled

## 🔮 Future Enhancements

This template can be extended with:

- Complete CRUD operations (POST, PUT, DELETE) for all entities
- Input validation and error handling with custom exceptions
- Authentication and authorization with Spring Security
- Order total calculation and payment processing
- Inventory management and stock tracking
- Advanced search and filtering capabilities
- RESTful API documentation with Swagger/OpenAPI
- Unit and integration testing with comprehensive coverage

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is open source and available under the [MIT License](LICENSE).

## 👤 Author

**Mateus Campos**

- GitHub: [@mateusribeirocampos](https://github.com/mateusribeirocampos)
- LinkedIn: [Mateus Campos](https://www.linkedin.com/in/mateus-ribeiro-de-campos-6a135331/)
