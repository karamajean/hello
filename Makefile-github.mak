################################################################################
#
# my_local_tar_project
#
################################################################################
HELLO_VERSION = 0.0.1
HELLO_SITE = https://github.com/karamajean/hello.git
HELLO_SITE_METHOD = git

define HELLO_BUILD_CMDS
 $(TARGET_CC) $(TARGET_CFLAGS) -o $(@D)/hello $(@D)/hello.c
endef


# 安裝命令
define HELLO_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/hello $(TARGET_DIR)/usr/bin/hello
endef

$(eval $(generic-package))
