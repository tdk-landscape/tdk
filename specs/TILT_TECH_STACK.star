"""
TDK Tech Stack Specification

Master configuration for the platform technology stack.
"""

# Core tech stack definitions
BUNDLER = "vite"
RUNTIME = "bun"
ORM = "prisma"
DATABASE = "postgresql"
MESSAGING = "nats"
LINTING = "biome"
TESTING = "vitest"
WEB_FRAMEWORK = "hono"

def assert_tech_stack(config):
    """
    Validate service configuration against platform tech stack.
    
    Args:
        config: Dict with bundler, runtime, testing, etc.
    
    Raises:
        Error if validation fails
    """
    bundler = config.get("bundler")
    runtime = config.get("runtime")
    testing = config.get("testing")
    
    if bundler and bundler != BUNDLER:
        override = config.get("_override_reason")
        if not override:
            fail("Bundler must be '%s', got '%s'. Use _override_reason for exceptions." % (BUNDLER, bundler))
    
    if runtime and runtime != RUNTIME:
        fail("Runtime must be '%s', got '%s'" % (RUNTIME, runtime))
    
    if testing and testing != TESTING:
        print("⚠️  Testing framework '%s' differs from standard '%s'" % (testing, TESTING))
    
    print("✅ Tech stack validated: %s (bundler), %s (runtime), %s (testing)" % (bundler or BUNDLER, runtime or RUNTIME, testing or TESTING))

def get_tech_stack():
    """Returns the complete tech stack configuration."""
    return {
        "bundler": BUNDLER,
        "runtime": RUNTIME,
        "orm": ORM,
        "database": DATABASE,
        "messaging": MESSAGING,
        "linting": LINTING,
        "testing": TESTING,
        "web_framework": WEB_FRAMEWORK,
    }
