################################################################################
#
# Kuzzle C SDK
#
################################################################################
KUZZLE_C_SDK_VERSION = 3980fa4c48e35324e06e8362146f25e65c0055c1
KUZZLE_C_SDK_SITE = git@github.com:kuzzleio/sdk-c
KUZZLE_C_SDK_SITE_METHOD = git
KUZZLE_C_SDK_GIT_SUBMODULES = YES
KUZZLE_C_SDK_LICENSE = Apache-2.0
KUZZLE_C_SDK_LICENSE_FILES = LICENSE.md
KUZZLE_C_SDK_INSTALL_STAGING = YES

define KUZZLE_C_SDK_BUILD_CMDS
	$(MAKE) GOARCH=arm GOCC=$(HOST_DIR)/bin/go GOROOT=$(HOST_DIR)/lib/go -C $(@D)
endef

define KUZZLE_C_SDK_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/build/libkuzzlesdk.* $(TARGET_DIR)/usr/lib/
endef

$(eval $(golang-package))
