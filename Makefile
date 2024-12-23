# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbah <mbah@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/22 22:54:24 by mbah              #+#    #+#              #
#    Updated: 2024/12/23 01:51:18 by mbah             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PROJECT_NAME ?= modular_project
TYPE_LANGUAGE ?= .c
MODULAR_ARCH = ModArch
SRC_DIR      = src
INC_DIR      = inc
LIB_DIR      = lib
TST_DIR      = tests
MKE_FILE     = Makefile
RDM_FILE     = Readme.md
INIT_DIR     = init
PARSE_DIR    = parsing
CORE_DIR     = core
UTILS_DIR    = utils
UTILS_FILE_H = utils.h
ERR_DIR      = errors
PROJ_FILE_C  = $(PROJECT_NAME)$(TYPE_LANGUAGE)
PROJ_FILE_H  = $(PROJECT_NAME).h

RED=\033[0;31m
GREEN=\033[0;32m
BLUE=\033[0;34m
YELLOW=\033[0;33m
RESET=\033[0m

$(MODULAR_ARCH):
ifeq ($(strip $(PROJECT_NAME)),)
	@echo "$(RED)Erreur :$(RESET) Vous devez spécifier un nom pour le projet."
	@echo "Syntaxe : make PROJECT_NAME=<nom_du_projet>"
	@echo "Exemple : make PROJECT_NAME=mon_projet"
else
	@echo "                                                                                "
	@echo "$(GREEN)Génération de l'architecture pour le projet '$(PROJECT_NAME)'...$(RESET)"
	@echo "$(YELLOW)"
	@echo "   __  _______  ___  ___   ___  _______ __  ___  ____  __  ______  ___   __ ______ ___ "
	@echo "  /  |/  / __ \\/ _ \\/ _ | / _ \\/ ___/ // / / _ \\/ __/ /  |/  / _ )/ _ | / // / / /|_  |"
	@echo " / /|_/ / /_/ / // / __ |/ , _/ /__/ _  / / // / _/  / /|_/ / _  / __ |/ _  /_  _/ __/ "
	@echo "/_/  /_/\\____/____/_/ |_/_/|_|\\___/_//_/ /____/___/ /_/  /_/____/_/ |_/_//_/ /_//____/ "
	@echo "                                                                                       "
	@echo "$(RESET)"
	@mkdir -p $(PROJECT_NAME)
	@mkdir -p $(PROJECT_NAME)/$(SRC_DIR)
	@mkdir -p $(PROJECT_NAME)/$(INC_DIR)
	@mkdir -p $(PROJECT_NAME)/$(LIB_DIR)
	@mkdir -p $(PROJECT_NAME)/$(TST_DIR)
	@mkdir -p $(PROJECT_NAME)/$(SRC_DIR)/$(INIT_DIR)
	@mkdir -p $(PROJECT_NAME)/$(SRC_DIR)/$(PARSE_DIR)
	@mkdir -p $(PROJECT_NAME)/$(SRC_DIR)/$(CORE_DIR)
	@mkdir -p $(PROJECT_NAME)/$(SRC_DIR)/$(UTILS_DIR)
	@mkdir -p $(PROJECT_NAME)/$(SRC_DIR)/$(ERR_DIR)
	@touch $(PROJECT_NAME)/$(MKE_FILE)
	@touch $(PROJECT_NAME)/$(INC_DIR)/$(UTILS_FILE_H)
	@touch $(PROJECT_NAME)/$(RDM_FILE)
	@touch $(PROJECT_NAME)/$(INC_DIR)/$(PROJ_FILE_H)
	@touch $(PROJECT_NAME)/$(SRC_DIR)/$(PROJ_FILE_C)
	@mkdir -p $(PROJECT_NAME)/.$(MODULAR_ARCH)
	@touch $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "######################################################################################################" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "#                                                                                                    #" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "#    Ce projet a été méticuleusement généré avec ModArch.                                            #" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "#    Nom du projet : $(PROJECT_NAME)                                                                 #" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "#    Généré avec passion et un brin de magie par Mamadou Bah (42 Stud)                               #" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "#    Ce fichier est sacré, il est sous la protection de la licence ModArch.                          #" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "#    Toute tentative de modification ou de suppression entraînera des conséquences imprévues.        #" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "#    En touchant à ce fichier, vous risquez de briser l'équilibre... c'est juste un avertissement 😉 #" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "######################################################################################################" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@chmod 444 $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "$(BLUE)Structure du projet $(RED)<$(PROJECT_NAME)>$(RESET) créée avec succès 🤪$(RESET) "
	@echo "                                                                                "
endif
	
all: $(MODULAR_ARCH) help

help:
	@echo "$(YELLOW)"
	@echo "   __  _______  ___  ___   ___  _______ __  ___  ____  __  ______  ___   __ ______ ___ "
	@echo "  /  |/  / __ \\/ _ \\/ _ | / _ \\/ ___/ // / / _ \\/ __/ /  |/  / _ )/ _ | / // / / /|_  |"
	@echo " / /|_/ / /_/ / // / __ |/ , _/ /__/ _  / / // / _/  / /|_/ / _  / __ |/ _  /_  _/ __/ "
	@echo "/_/  /_/\\____/____/_/ |_/_/|_|\\___/_//_/ /____/___/ /_/  /_/____/_/ |_/_//_/ /_//____/ "
	@echo "                                                                                       "
	@echo "$(RESET)"
	@echo "$(RED) Utilisation : $(RESET)"
	@echo "$(GREEN)		make PROJECT_NAME=<nom_du_projet> $(RESET)"
	@echo "$(RED) exemple : $(RESET)"
	@echo "$(GREEN)		make PROJECT_NAME=my_project $(RESET)"
	@echo "$(RED) Nettoyage : $(RESET)"
	@echo "$(GREEN)		make clean PROJECT_NAME=$(BLUE)<nom_du_projet>$(RESET) $(RESET)"
	@echo "$(GREEN)		make clean PROJECT_NAME=$(BLUE)my_project$(RESET) $(RESET)"
	@echo "                                                                                "
clean:
	@echo "                                                                                "
	@echo "$(YELLOW)"
	@echo "   __  _______  ___  ___   ___  _______ __  ___  ____  __  ______  ___   __ ______ ___ "
	@echo "  /  |/  / __ \\/ _ \\/ _ | / _ \\/ ___/ // / / _ \\/ __/ /  |/  / _ )/ _ | / // / / /|_  |"
	@echo " / /|_/ / /_/ / // / __ |/ , _/ /__/ _  / / // / _/  / /|_/ / _  / __ |/ _  /_  _/ __/ "
	@echo "/_/  /_/\\____/____/_/ |_/_/|_|\\___/_//_/ /____/___/ /_/  /_/____/_/ |_/_//_/ /_//____/ "
	@echo "                                                                                       "
	@echo "$(RESET)"
	@if [ -d "$(PROJECT_NAME)" ]; then \
		echo "$(RED)Suppression du projet '$(PROJECT_NAME)'...$(RESET)"; \
		rm -rf $(PROJECT_NAME); \
		echo "$(BLUE)Projet '$(PROJECT_NAME)' supprimé avec succès. $(RESET)"; \
	else \
		echo "$(RED)Erreur : Le dossier '$(PROJECT_NAME)' n'existe pas. Aucun nettoyage effectué.$(RESET)"; \
	fi
	@echo "                                                                                "

.PHONY: clean all help

