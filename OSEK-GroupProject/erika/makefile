############################################################################
#
# This file is generated by RT-Druid.
# Please do not modify it.
#
############################################################################

# ###*B*###
#
# ERIKA Enterprise - a tiny RTOS for small microcontrollers
# 
# Copyright (C) 2002-2018 Evidence Srl
# 
# This file is part of ERIKA Enterprise.
# 
# See LICENSE file.
#
# ###*E*###


############################################################################
#
# Version Check
#
############################################################################
OS_EE_RTD_GEN_VERSION:=12345

export	OS_EE_RTD_GEN_VERSION


############################################################################
#
# Automatic options
#
############################################################################
ifneq ($(if $(filter OS_EE_RTD_BUILD_ENV_%,$(OS_EE_OPT)),yes,), yes)
OS_EE_OPT += OS_EE_RTD_BUILD_ENV_NATIVE
endif	# OS_EE_OPT OS_EE_RTD_BUILD_ENV_%

OS_EE_OPT += OS_EE_BUILD

export OS_EE_OPT

############################################################################
#
# Erika Enterprise Repository base directory
#
############################################################################
ifndef  ERIKA_FILES
ERIKA_FILES := /home/user/rt-druid/plugins/com.eu.evidence.ee3_3.0.0.20180716_gh41/ee_files
endif   # ERIKA_FILES
export ERIKA_FILES

$(info ERIKA_FILES=$(ERIKA_FILES))


############################################################################
#
# Application base directory
#
############################################################################
OS_EE_APP_BASE_DIR := ..

export OS_EE_APP_BASE_DIR


############################################################################
#
# Main rules
#
############################################################################
.PHONY: all clean doc

all:    mk
	@$(MAKE) -f mk/ee.mk all

clean:  mk
	@$(MAKE) -f mk/ee.mk clean

mk:     pull/ee_pull.mk
	@$(MAKE) -f pull/ee_pull.mk

doc: mk
	@$(MAKE) -C doc


############################################################################
#
# End
#
############################################################################

