  1 # Nome del Makefile                                                                                                                                                                                            
  2 MAKEFILE_NAME := $(lastword $(MAKEFILE_LIST))
  3 
  4 # Regola principale
  5 .PHONY: all
  6 all: help
  7 
  8 # Regola per mostrare l'aiuto
  9 .PHONY: help
 10 help:           ## Show this help.
 11     @echo "Available targets:"
 12     @fgrep -h "##" $(MAKEFILE_NAME) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
 13 
 14 # Regola per aggiornare la configurazione di Vim
 15 .PHONY: update_vim
 16 update_vim:     ## Update Vim configuration.
 17     rm -rf ~/.vimrc ~/.vim/
 18     cp .vimrc ~/.
 19     cp -r .vim ~/.
 20 
 21 # Regola per aggiornare il repository Git
 22 .PHONY: update_git
 23 update_git:     ## Update Git repository.
 24     git pull
