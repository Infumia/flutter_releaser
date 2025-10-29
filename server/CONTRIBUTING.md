# Contributing to Flutter Releaser Server Templates

If you'd like to improve these server templates or add new implementations:

1. Fork the main flutter_releaser repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some amazing feature'`)
5. Push to the branch (`git push origin feature/amazing-feature`)
6. Open a Pull Request

## Project Structure

When contributing to the server templates, it's helpful to understand the overall project structure:

```
server/
├── kotlin/                  # Kotlin implementation
│   ├── build.gradle.kts     # Gradle build configuration
│   ├── settings.gradle.kts  # Gradle settings
│   ├── docker-compose.yaml  # Docker services for local development
│   ├── .local.env           # Local environment variables template
│   ├── src/
│   │   └── main/
│   │       ├── kotlin/      # Kotlin source code
│   │       └── resources/
│   │           └── application.yaml # Application configuration
│   └── README.md            # Kotlin-specific documentation
└── README.md               # This file (overview of all implementations)
```