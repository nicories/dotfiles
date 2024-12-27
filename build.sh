#!/bin/bash
emacs --batch --eval "(require 'org)" --eval "(setq org-confirm-babel-evaluate nil)" --eval "(org-babel-do-load-languages 'org-babel-load-languages '((python . t)))" --eval '(org-babel-tangle-file "dotfiles.org")'

