# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbah <mbah@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/22 22:54:24 by mbah              #+#    #+#              #
#    Updated: 2024/12/29 14:39:13 by mbah             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PROJECT_NAME ?= modular_project
TYPE_LANGUAGE ?= .c
USER         := $(shell whoami)
DATE         := $(shell date '+%Y-%m-%d %H:%M:%S')
MODULAR_ARCH = ModArchExec
SRC_DIR      = src
APP_DIR      = src/app
INC_DIR      = inc
LIB_DIR      = lib
TST_DIR      = test
MKE_FILE     = Makefile
RDM_FILE     = Readme.md
CORE_DIR     = src/app/core
UTILS_DIR    = src/app/utility
PUBLIC_DIR   = public
MAIN         = main
PROJ_FILE_C  = $(MAIN)$(TYPE_LANGUAGE)
PROJ_FILE_H  = $(PROJECT_NAME).h

RED=\033[0;31m
GREEN=\033[0;32m
BLUE=\033[0;34m@
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
	@touch $(PROJECT_NAME)/$(LIB_DIR)/.gitkeep
	@mkdir -p $(PROJECT_NAME)/$(TST_DIR)
	@touch $(PROJECT_NAME)/$(TST_DIR)/.gitkeep
	@mkdir -p $(PROJECT_NAME)/$(APP_DIR)
	@mkdir -p $(PROJECT_NAME)/$(CORE_DIR)
	@touch  $(PROJECT_NAME)/$(CORE_DIR)/core.hello_word$(TYPE_LANGUAGE)
	@touch  $(PROJECT_NAME)/$(CORE_DIR)/.gitkeep
	@mkdir -p $(PROJECT_NAME)/$(UTILS_DIR)
	@touch  $(PROJECT_NAME)/$(UTILS_DIR)/.gitkeep
	@mkdir -p $(PROJECT_NAME)/$(PUBLIC_DIR)
	@touch  $(PROJECT_NAME)/$(PUBLIC_DIR)/.gitkeep
	@touch $(PROJECT_NAME)/$(MKE_FILE)
	@touch $(PROJECT_NAME)/$(RDM_FILE)
	@touch $(PROJECT_NAME)/$(INC_DIR)/$(PROJ_FILE_H)
	@touch $(PROJECT_NAME)/$(SRC_DIR)/$(PROJ_FILE_C)
	@mkdir -p $(PROJECT_NAME)/.$(MODULAR_ARCH)
	@touch $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@touch $(PROJECT_NAME)/.gitignore
	@git init $(PROJECT_NAME)
	@echo "######################################################################################################" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# Projet : $(PROJECT_NAME) " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# Créé par : $(USER) " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# Date de création : $(DATE) " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# Bienvenue dans le monde fascinant de ModArch! Ce fichier est votre guide sacré, " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# soigneusement conçu pour assurer le bon fonctionnement et la sécurité de votre projet. " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# Soyez inspiré et créatif, mais souvenez-vous, avec un grand pouvoir vient une grande " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# responsabilité. Toute modification de ce fichier pourrait perturber l'équilibre subtil que " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# nous avons soigneusement établi. " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# Si vous avez des questions ou besoin d'aide, n'hésitez pas à consulter votre guide spirituel: " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# $(USER) " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "# " >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@echo "######################################################################################################" >> $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config 
	@chmod 444 $(PROJECT_NAME)/.$(MODULAR_ARCH)/.$(MODULAR_ARCH).config
	@echo "$(BLUE)Structure du projet $(RED)<$(PROJECT_NAME)>$(RESET) créée avec succès 🤪$(RESET) "
	@echo "                                                                                "
	
	# ecrire dans le fichier .gitignore

	@cd $(PROJECT_NAME) && echo  "updateMakefile \n" >> .gitignore
	@cd $(PROJECT_NAME) && echo  "exec \n" >> .gitignore
	@cd $(PROJECT_NAME) && echo   "*.o \n" >> .gitignore
	@cd $(PROJECT_NAME) && echo  "*.out \n" >> .gitignore
	@cd $(PROJECT_NAME) && echo  "test/ \n" >> .gitignore

	# ecrire dans le fichier .h

	@cd $(PROJECT_NAME)/$(INC_DIR) && echo  "#ifndef $(shell echo $(PROJECT_NAME) | tr 'a-z' 'A-Z')_H" > $(PROJ_FILE_H)
	@cd $(PROJECT_NAME)/$(INC_DIR) && echo  "# define $(shell echo $(PROJECT_NAME) | tr 'a-z' 'A-Z')_H\n" >> $(PROJ_FILE_H)
	@cd $(PROJECT_NAME)/$(INC_DIR) && echo  "# include <unistd.h>\n" >> $(PROJ_FILE_H)
	@cd $(PROJECT_NAME)/$(INC_DIR) && echo  "void\thello_word(void);\n" >> $(PROJ_FILE_H)
	@cd $(PROJECT_NAME)/$(INC_DIR) && echo   "#endif" >> $(PROJ_FILE_H)

	# ecrire dans le fichier core.hello_word.c

	@cd $(PROJECT_NAME)/$(CORE_DIR) && echo   "#include \"../../../$(INC_DIR)/$(PROJ_FILE_H)\"" > core.hello_word$(TYPE_LANGUAGE)
	@cd $(PROJECT_NAME)/$(CORE_DIR) && echo  "\nvoid\thello_word(void)\n{" >> core.hello_word$(TYPE_LANGUAGE)
	@cd $(PROJECT_NAME)/$(CORE_DIR) && echo   "\twrite(1, \"Hello Word\", 10);\n}" >> core.hello_word$(TYPE_LANGUAGE)

	# ecriture du fichier main.c

	@cd $(PROJECT_NAME)/$(SRC_DIR) && echo   "#include \"../$(INC_DIR)/$(PROJ_FILE_H)\"\n" > $(PROJ_FILE_C)
	@cd $(PROJECT_NAME)/$(SRC_DIR) && echo  "int\tmain(int argc, char **argv)\n{\n\t(void) argc;\n\t(void) argv;" >> $(PROJ_FILE_C)
	@cd $(PROJECT_NAME)/$(SRC_DIR) && echo  "\thello_word();\n\treturn (0);\n}" >> $(PROJ_FILE_C)

	@git clone https://github.com/mbah24-dev/ForgeMaker-Executable.git $(PROJECT_NAME)/.genMake
	@cd $(PROJECT_NAME) && ./.genMake/releases/ForgeMaker $(PROJECT_NAME)
	@cp $(PROJECT_NAME)/.genMake/releases/ForgeMaker $(PROJECT_NAME)/updateMakefile 
	@rm -rf $(PROJECT_NAME)/.genMake

	@echo "                                                                                "
	@echo "$(GREEN)Génération de l'architecture pour le projet '$(PROJECT_NAME)'...$(RESET)"
	@echo "$(YELLOW)"
	@echo "   __  _______  ___  ___   ___  _______ __  ___  ____  __  ______  ___   __ ______ ___ "
	@echo "  /  |/  / __ \\/ _ \\/ _ | / _ \\/ ___/ // / / _ \\/ __/ /  |/  / _ )/ _ | / // / / /|_  |"
	@echo " / /|_/ / /_/ / // / __ |/ , _/ /__/ _  / / // / _/  / /|_/ / _  / __ |/ _  /_  _/ __/ "
	@echo "/_/  /_/\\____/____/_/ |_/_/|_|\\___/_//_/ /____/___/ /_/  /_/____/_/ |_/_//_/ /_//____/ "
	@echo "                                                                                       "
	@echo "$(RESET)"

endif
	
all: $(MODULAR_ARCH) write_the_file_hello_word  write_the_file_main help
	
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

