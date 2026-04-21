# TDK

Platform specifications, generators, CLI, and standards.

## Purpose

Central repository for the "source of truth" configurations:
- Master specs (tech stack, service defaults)
- Configuration generators (Vite, TSConfig, Prisma, Docker)
- CLI tool for developers
- Standards (health checks, golden images)

## Directory Structure

```
specs/
├── TILT_TECH_STACK.star       # Tech stack definitions
└── TILT_SERVICE_DEFAULTS.star # Service default configs

generators/
├── vite/              # Vite config generator
├── tsconfig/          # TypeScript config generator
├── prisma/            # Prisma/Dockerfile generator
└── docker/            # Dockerfile templates

cli/
├── tdk-cli           # Command-line interface
└── commands/         # CLI subcommands

standards/
├── health-checks/    # Standard health check implementations
└── golden-images/    # Docker golden image definitions
```

## Usage

### CLI

```bash
# Install CLI
npm install -g @tdk-landscape/cli

# Validate a service
tdk validate ./my-service

# Scaffold new service
tdk new service my-service --type backend

# Generate configs
tdk generate vite tsconfig docker
```

### Specs

```starlark
load("ext://github.com/tdk-landscape/tdk/specs", "TILT_TECH_STACK")

# Validate against platform standards
TILT_TECH_STACK.assert_bundler("vite")
TILT_TECH_STACK.assert_runtime("bun")
```

## License

MIT
