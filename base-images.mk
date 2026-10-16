# Base image inputs shared by local builds and CI. Updated by wodby/images.
# Each digest identifies the complete multi-platform image index.
BASE_IMAGE_REPOSITORY := wodby/alpine
BASE_IMAGE_VERSION_SUFFIX :=

BASE_IMAGE_DIGEST_3.22 := sha256:18f83e8b03bfaf6f4885389b818adbe96e4794b183bed234098bf7446a13af61
BASE_IMAGE_DIGEST_3.22-r4 := sha256:5aa27653979467fff65bf8ce8fbe4f3acf4313f102f71f62ab415342aeb7c81b
BASE_IMAGE_DIGEST_3.23 := sha256:edc57d413c036122fdb984496f06a2ef396743ae9f022a49bf9837867597ca19
BASE_IMAGE_DIGEST_3.23-r4 := sha256:aa193f0dc3483f1a75b7093f53767980a5ccf48d6ec16c454d4e64573d834a51

# Fail before building when a version or variant has no reviewed pin.
BASE_IMAGE = $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG)@$(or $(BASE_IMAGE_DIGEST_$(BASE_IMAGE_TAG)),$(error No base image digest for $(BASE_IMAGE_REPOSITORY):$(BASE_IMAGE_TAG); update base-images.mk))
