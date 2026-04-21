"""
TDK Service Defaults

Default configurations for all services in the platform.
"""

# Port ranges
BASE_PORT_FRONTEND = 3000
BASE_PORT_BACKEND = 4000
PORT_RANGE_SIZE = 1000

# Health checks
HEALTH_CHECK_PATH = "/health"
HEALTH_CHECK_INTERVAL = 5

# Filewatch ignore patterns
def get_filewatch_ignore_patterns():
    """Returns standard filewatch ignore patterns."""
    return [
        "**/node_modules",
        "**/dist",
        "**/build",
        "**/.git",
        "**/.prisma",
        "**/.turbo",
        "**/coverage",
        "**/tmp",
        "**/temp",
    ]

# Service defaults
def get_service_defaults(service_type):
    """
    Get default configuration for a service type.
    
    Args:
        service_type: 'frontend', 'backend', 'library', or 'sdk'
    
    Returns:
        Dict with default configuration
    """
    defaults = {
        "frontend": {
            "port_start": BASE_PORT_FRONTEND,
            "features": ["vite"],
            "runtime": "bun",
        },
        "backend": {
            "port_start": BASE_PORT_BACKEND,
            "features": ["nats", "prisma", "hono"],
            "runtime": "bun",
            "replicas": 1,
        },
        "library": {
            "features": ["build"],
            "runtime": "bun",
        },
        "sdk": {
            "features": ["build"],
            "runtime": "bun",
        },
    }
    return defaults.get(service_type, {})
