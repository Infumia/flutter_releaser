# Flutter Releaser Server

This directory contains the backend server for the Flutter Releaser tool, which enables automated packaging, releasing, and updating of Flutter desktop applications across Windows, Linux, and macOS platforms.

## Overview

The Flutter Releaser Server is a robust backend API built with Kotlin and the Ktor framework. It handles version management, file storage, and release management for Flutter desktop applications, providing a centralized system for managing application updates across multiple platforms.

### Key Features

- **Version Management**: Track and manage different versions of your Flutter applications
- **File Storage**: Secure file storage using S3-compatible services (with MinIO support)
- **Release Management**: Comprehensive release workflow management
- **Authentication**: JWT-based authentication for secure access
- **API Documentation**: OpenAPI/Swagger documentation with Redoc interface
- **Database Integration**: PostgreSQL database with migration support
- **Cross-platform Support**: Handles releases for Windows, Linux, and macOS

## Architecture

The server is built using the following technologies:

- **Backend Framework**: [Ktor](https://ktor.io/) for Kotlin
- **Language**: Kotlin
- **Database**: PostgreSQL
- **Storage**: S3-compatible object storage (with MinIO support)
- **Dependency Injection**: Koin
- **Database ORM**: Exposed
- **Serialization**: Kotlinx Serialization
- **Authentication**: JWT (JSON Web Tokens)

## Setup and Installation

### Prerequisites

- Java 17 or higher
- Docker and Docker Compose (for local development with PostgreSQL and MinIO)

### Local Development Setup

1. **Clone the repository**:
   ```bash
   git clone <repository-url>
   cd flutter_releaser/server/kotlin
   ```

2. **Set up local environment**:
   Create a `.local.env` file based on the example with your environment variables:
   ```env
   DATABASE_URL=jdbc:postgresql://localhost:5432/flutter_releaser
   DATABASE_USER=root
   DATABASE_PASSWORD=local
   S3_ACCESS_KEY=your_access_key
   S3_SECRET_KEY=your_secret_key
   S3_ENDPOINT=http://localhost:9000
   S3_BUCKET_NAME=flutter-releaser
   JWT_SECRET=your_jwt_secret
   ```

3. **Start required services**:
   The server requires PostgreSQL and MinIO (S3-compatible storage). Use the provided Docker Compose file:
   ```bash
   cd kotlin
   docker-compose up -d
   ```

4. **Run the application**:
   ```bash
   ./gradlew run
   ```

The server will start on `http://localhost:8080`.

### Database Migrations

The server uses Flyway for database migrations. To generate a new migration:
```bash
./gradlew generateMigration -PmigrationName="your_migration_name"
```

## API Documentation

The API is documented using OpenAPI/Swagger. Once the server is running, you can access:

- **Swagger UI**: `http://localhost:8080/swagger`
- **ReDoc**: `http://localhost:8080/redoc`
- **OpenAPI JSON**: `http://localhost:8080/openapi.json`

## Production Deployment

For production deployment, you can build a fat JAR:

```bash
./gradlew shadowJar
```

The resulting JAR file will be located at `build/libs/flutter_releaser_api.jar`.

### Docker Deployment

The server can also be containerized for deployment. An example Dockerfile would package the fat JAR and run it with the appropriate environment variables.

## Configuration

The server uses `application.yaml` for configuration, which can be found in `src/main/resources/application.yaml`. 

Key configuration points:
- Server port (default: 8080)
- Database connection settings
- S3 storage configuration
- JWT authentication settings
- Application modules configuration

## Environment Variables

Required environment variables:

- `DATABASE_URL`: PostgreSQL database URL
- `DATABASE_USER`: Database user
- `DATABASE_PASSWORD`: Database password
- `S3_ACCESS_KEY`: S3 access key
- `S3_SECRET_KEY`: S3 secret key
- `S3_ENDPOINT`: S3 endpoint URL
- `S3_BUCKET_NAME`: S3 bucket name for file storage
- `JWT_SECRET`: Secret key for JWT token generation

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run the formatter: `./gradlew format`
5. Commit your changes (`git commit -m 'Add some amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

## Project Structure

```
server/kotlin/
├── build.gradle.kts          # Gradle build configuration
├── settings.gradle.kts       # Gradle settings
├── docker-compose.yaml       # Docker services for local development
├── .local.env                # Local environment variables template
├── src/
│   └── main/
│       ├── kotlin/           # Kotlin source code
│       └── resources/
│           └── application.yaml # Application configuration
└── README.md                 # This file
```

## License

This project is licensed under the terms specified in the main repository.