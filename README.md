# Spring Boot CRUD API Template

A professional Spring Boot template for building RESTful APIs with CRUD operations, featuring clean architecture, JPA integration, and H2 database support.

## 🚀 Features

- **RESTful API** with complete CRUD operations
- **Spring Boot 3.5.3** with Java 21
- **JPA/Hibernate** for data persistence
- **H2 Database** for development and testing
- **Layered Architecture** (Controller → Service → Repository)
- **Test Profile** with database seeding
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

### Sample Data

The application automatically seeds the database with sample users:

- Maria Brown (maria@gmail.com)
- Alex Green (alex@gmail.com)

## 🏗️ Project Structure

```bash
src/
├── main/
│   ├── java/com/campos/backend/
│   │   ├── BackendApplication.java      # Main application class
│   │   ├── config/
│   │   │   └── TestConfig.java          # Test configuration and data seeding
│   │   ├── entities/
│   │   │   └── User.java                # User entity
│   │   ├── repositories/
│   │   │   └── UserRepository.java      # Data access layer
│   │   ├── resources/
│   │   │   └── UserResource.java        # REST controller
│   │   └── services/
│   │       └── UserService.java         # Business logic layer
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

### Get All Users

```bash
curl -X GET http://localhost:8080/users
```

### Get User by ID

```bash
curl -X GET http://localhost:8080/users/1
```

## 🔮 Future Enhancements

This template can be extended with:

- Complete CRUD operations (POST, PUT, DELETE)
- Input validation and error handling
- Authentication and authorization

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
- LinkedIn: [Mateus Campos](https://linkedin.com/in/mateusribeirocampos)
