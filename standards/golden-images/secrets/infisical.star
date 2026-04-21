# =============================================================================
# 🐳 TILT SDK - INFISICAL ENVIRONMENT GENERATOR
# =============================================================================

load("../constants.star", "PlatformDockerConstants")

def get_infisical_environment_vars(as_array=True):
    """Generate environment variables for Infisical integration."""
    infisical_url = "http://" + PlatformDockerConstants.PROJECT_NAME + "-infisical:8080"
    
    if as_array:
        return """      - INFISICAL_CLIENT_ID=${INFISICAL_CLIENT_ID:-local-dev-client-id}
      - INFISICAL_CLIENT_SECRET=${INFISICAL_CLIENT_SECRET:-local-dev-client-secret}
      - INFISICAL_PROJECT_ID=${INFISICAL_PROJECT_ID:-local-dev-project-id}
      - INFISICAL_SITE_URL=${INFISICAL_SITE_URL:-""" + infisical_url + """}
      - INFISICAL_ENV=${INFISICAL_ENV:-dev}
      - INFISICAL_ENABLED=${INFISICAL_ENABLED:-true}"""
    
    return """      INFISICAL_CLIENT_ID: ${INFISICAL_CLIENT_ID:-local-dev-client-id}
      INFISICAL_CLIENT_SECRET: ${INFISICAL_CLIENT_SECRET:-local-dev-client-secret}
      INFISICAL_PROJECT_ID: ${INFISICAL_PROJECT_ID:-local-dev-project-id}
      INFISICAL_SITE_URL: ${INFISICAL_SITE_URL:-""" + infisical_url + """}
      INFISICAL_ENV: ${INFISICAL_ENV:-dev}
      INFISICAL_ENABLED: ${INFISICAL_ENABLED:-true}"""
