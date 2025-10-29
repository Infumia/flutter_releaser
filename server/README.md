# Flutter Releaser Server Templates

This directory contains backend server templates for the Flutter Releaser tool. This is a collection of example implementations in different technologies that provide a foundation for creating your own server to manage automated packaging, releasing, and updating of Flutter desktop applications across Windows, Linux, and macOS platforms.

## Overview

The Flutter Releaser Server Templates are robust backend APIs that serve as examples you can customize and deploy to handle version management, file storage, and release management for your own Flutter desktop applications. This directory contains multiple technology-specific implementations to suit different preferences and requirements.

Currently available implementations:
- **Kotlin**: A Ktor-based implementation in the `kotlin/` directory

Future implementations may include:
- **Go**
- **Node.js/TypeScript**
- **Python/FastAPI**
- **Rust**

### Key Features

All server implementations provide:

- **Version Management**: Track and manage different versions of your Flutter applications
- **File Storage**: Secure file storage using S3-compatible services (with MinIO support)
- **Release Management**: Comprehensive release workflow management
- **Authentication**: Access key and secret key based authentication for secure access
- **API Documentation**: OpenAPI documentation with Swagger/Redoc interface
- **Database Integration**: PostgreSQL database with migration support
- **Cross-platform Support**: Handles releases for Windows, Linux, and macOS

## Getting Started

These are templates that should be customized for your own deployment. Follow these steps to set up your own instance:

### Using This Template

1. **Choose your preferred technology stack** from the available implementations
2. **Create a new repository** from your chosen template:
   - Create a new repository in your preferred Git hosting service
   - Copy the code from the relevant subdirectory (e.g., `server/kotlin/`) to your new repository
   - Update package names and application settings to match your organization

3. **Set up local environment**:
   Create a `.local.env` file with your environment variables:
   ```env
   DATABASE_DRIVER_CLASS_NAME=org.postgresql.Driver
   DATABASE_JDBC_URL=jdbc:postgresql://127.0.0.1:5432/flutter_releaser
   DATABASE_USERNAME=root
   DATABASE_PASSWORD=local
   S3_HOST=http://127.0.0.1:9000
   S3_REGION=us-east-1
   S3_ACCESS_KEY=
   S3_SECRET_KEY=
   S3_APPLICATION_ARCHIVE_BUCKET_ID=flutter-releaser
   S3_APPLICATION_ARCHIVE_BUCKET_PATH=
   FLUTTER_RELEASER_ACCESS_KEY=root
   FLUTTER_RELEASER_SECRET_KEY=local
   APPLICATION_ARCHIVE_NAME='Flutter Releaser'
   APPLICATION_ARCHIVE_DESCRIPTION='Flutter releaser application to upload/download/test your own applications'
   ```

4. **Start required services** (Docker Compose is provided for local development):
   The server requires PostgreSQL and MinIO (S3-compatible storage). Use the provided Docker Compose file:
   ```bash
   docker compose up -d
   ```

5. **Run the application** (commands vary by implementation):
   For Kotlin:
   ```bash
   ./gradlew run
   ```

The server will start on `http://localhost:8080`.

### Customization

When using any template, you should customize:

- Package names to match your organization
- Application name and configuration
- Database configuration
- S3 storage settings
- Flutter Releaser access and secret keys for authentication
- API endpoints to match your specific requirements

## Available Implementations

### Kotlin Implementation

Located in the `kotlin/` directory, built with:

- **Backend Framework**: [Ktor](https://ktor.io/) for Kotlin
- **Language**: Kotlin
- **Database**: PostgreSQL
- **Storage**: S3-compatible object storage
- **Dependency Injection**: Koin
- **Database ORM**: Exposed
- **Serialization**: Kotlinx Serialization
- **Authentication**: Access key and secret key based authentication

To run the Kotlin implementation:
```bash
cd kotlin
./gradlew run
```

More implementation details are in the `kotlin/README.md` file.

## API Documentation

All implementations provide API documentation using OpenAPI/Swagger. Once the server is running, you can typically access:

- **Swagger UI**: `http://localhost:8080/swagger`
- **ReDoc**: `http://localhost:8080/redoc`
- **OpenAPI JSON**: `http://localhost:8080/openapi.json`

## Production Deployment

Each implementation has its own deployment strategy:

- **Kotlin**: Build a fat JAR with `./gradlew shadowJar`

Check the README in each implementation's directory for specific deployment instructions.

## Configuration

Each implementation has its own configuration approach. See the relevant subdirectory for details.

## Environment Variables

Required environment variables for the Kotlin implementation:

- `DATABASE_DRIVER_CLASS_NAME`: Database driver class name (e.g., org.postgresql.Driver)
- `DATABASE_JDBC_URL`: PostgreSQL database JDBC URL
- `DATABASE_USERNAME`: Database username
- `DATABASE_PASSWORD`: Database password
- `S3_HOST`: S3-compatible storage host URL
- `S3_REGION`: S3 region
- `S3_ACCESS_KEY`: S3 access key
- `S3_SECRET_KEY`: S3 secret key
- `S3_APPLICATION_ARCHIVE_BUCKET_ID`: S3 bucket ID for application archives
- `S3_APPLICATION_ARCHIVE_BUCKET_PATH`: S3 path for application archives
- `FLUTTER_RELEASER_ACCESS_KEY`: Access key for Flutter Releaser authentication
- `FLUTTER_RELEASER_SECRET_KEY`: Secret key for Flutter Releaser authentication
- `APPLICATION_ARCHIVE_NAME`: Name for the application archive
- `APPLICATION_ARCHIVE_DESCRIPTION`: Description for the application archive

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for details on how to contribute to these server templates.
