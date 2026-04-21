# =============================================================================
# 🎯 TDK - Platform Specs, Generators, and Standards
# =============================================================================
# This is the Tiltfile entry point for the tdk repo.
# It exports specs, generators, CLI tools, and standards.
#
# Usage:
#   v1alpha1.extension_repo(name='tdk', url='https://github.com/tdk-landscape/tdk')
#   load('ext://tdk', 'assert_tech_stack', 'TECH_STACK')
# =============================================================================

# =============================================================================
# 📋 TECH STACK SPEC
# =============================================================================
load('./specs/TILT_TECH_STACK.star',
    _assert_tech_stack='assert_tech_stack',
    _TECH_STACK='TECH_STACK'
)

assert_tech_stack = _assert_tech_stack
TECH_STACK = _TECH_STACK

# =============================================================================
# 🏗️ GENERATORS
# =============================================================================
# Load and re-export generator modules
load('./generators/vite/helpers.star',
    _vite_generate_backend_config='generate_backend_config',
    _vite_generate_frontend_config='generate_frontend_config'
)

vite_generate_backend_config = _vite_generate_backend_config
vite_generate_frontend_config = _vite_generate_frontend_config

# =============================================================================
# 🔧 UTILITIES
# =============================================================================
def get_tdk_version():
    """Return the TDK version."""
    return "1.0.0"

def get_tdk_info():
    """Return information about TDK."""
    return {
        "name": "TDK Landscape",
        "description": "Tilt Development Kit - Platform specs and standards",
        "url": "https://github.com/tdk-landscape/tdk",
    }

print("✅ TDK loaded: specs, generators, and standards")
