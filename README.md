# 🛍 ShopSphere — Java E-Commerce Platform

A full-featured, layered-architecture Java e-commerce application with both a **console interface** and an **embedded web server** with a beautiful dark-mode SPA frontend.

---

## 📁 Project Structure

```
shopsphere_project/
├── src/com/shopsphere/
│   ├── app/          → Main.java             (entry point)
│   ├── dao/          → ProductDAO, UserDAO, OrderDAO
│   ├── exception/    → ShopSphereException
│   ├── interfaces/   → ProductOperations
│   ├── menu/         → MainMenu (console UI)
│   ├── model/        → Product, User, Order
│   ├── service/      → ProductService, UserService, OrderService
│   ├── storage/      → DataStorage (file I/O)
│   ├── test/         → ShopSphereTest (JUnit 5)
│   ├── util/         → InputUtil (console helpers)
│   └── web/          → WebController (HTTP server + SPA)
├── data/             → .ser and .csv persistence files
├── database/         → shopsphere.sql (MySQL schema)
├── pom.xml
└── run_*.bat / *.ps1
```

---

## 🚀 Quick Start

### Prerequisites
- Java 17+
- Maven 3.8+

### 1. Build
```bash
mvn package -DskipTests
```

### 2. Run — Console Mode
```bash
# Windows
run_app.bat

# PowerShell
.\run_app.ps1

# Manual
java -jar shopsphere.jar console
```

### 3. Run — Web Mode
```bash
# Windows
run_web.bat

# Manual
java -jar shopsphere.jar web
```
Then open **http://localhost:8080** in your browser.

### 4. Run Tests
```bash
# Windows
run_tests.bat

# Manual
mvn test
```

---

## 🔑 Default Credentials

| Role     | Username | Password   |
|----------|----------|------------|
| Admin    | `admin`  | `admin123` |
| Customer | Register via app |  |

---

## ✨ Features

### Console Interface
- Role-based menus (Admin / Customer / Guest)
- Browse, search, and filter products by category
- Shopping cart with quantity management
- Secure checkout flow
- Order history and cancellation
- Admin: full product CRUD, order status updates, user management
- Admin: CSV import/export, live dashboard stats

### Web Interface (http://localhost:8080)
- 🌑 Dark-mode SPA with glassmorphism design
- Animated product cards with category emoji icons
- Slide-in cart sidebar with real-time total
- Login / Register modals
- Admin dashboard with stats cards and order status management
- Product search, category filter, and sort
- Toast notifications for all actions
- JWT-like session token authentication

### Data Layer
- **Java Serialisation** (`.ser` files) for Products, Users, Orders
- **CSV** import/export for products (`data/products.csv`)
- **MySQL schema** (`database/shopsphere.sql`) ready for production

---

## 🏗 Architecture

```
┌─────────────────────────────────────────────────────┐
│  Presentation Layer                                 │
│  ┌──────────────┐    ┌──────────────────────────┐  │
│  │  MainMenu    │    │  WebController (HTTP/SPA) │  │
│  │  (console)   │    │  REST API + Gson JSON     │  │
│  └──────┬───────┘    └────────────┬─────────────┘  │
│         └──────────────────────────┘               │
├─────────────────────────────────────────────────────┤
│  Service Layer (Business Logic)                     │
│  ProductService │ UserService │ OrderService        │
├─────────────────────────────────────────────────────┤
│  DAO Layer (Data Access)                            │
│  ProductDAO │ UserDAO │ OrderDAO                    │
├─────────────────────────────────────────────────────┤
│  Storage Layer                                      │
│  DataStorage → products.ser / users.ser / orders.ser│
└─────────────────────────────────────────────────────┘
```

---

## 🧪 Tests

27 JUnit 5 tests covering:
- Product model (emoji assignment, availability, equality)
- User model (password hashing, role checks)
- ProductService (CRUD, validation, stock management)
- UserService (registration, login, duplicate checks)
- OrderService (placement, status lifecycle, cancellation, stock restore)
- ShopSphereException

---

## 🛠 Technology Stack

| Concern | Technology |
|---------|-----------|
| Language | Java 17 |
| Build | Maven 3.8+ |
| JSON | Gson 2.10.1 |
| HTTP Server | `com.sun.net.httpserver` (JDK built-in) |
| Persistence | Java Serialisation + CSV |
| Testing | JUnit Jupiter 5.10 |
| Frontend | Vanilla HTML/CSS/JS (no frameworks) |

---

## 📜 License
MIT — free to use, modify, and distribute.
