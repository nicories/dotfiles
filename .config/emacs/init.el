;;; init.el --- init file

;;; Commentary:
;; just some bootstrapping code, the important stuff is in config.org

;;; Code:


;; unneeded on Emacs >= 27
;(load-file (expand-file-name "early-init.el" user-emacs-directory))

;; use develop branch, better org fixes
(setq straight-repository-branch "develop")

;; straight.el bootstrap
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/master/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; use-package straight integration
;; makes use-package calls invoke straight
(setq straight-use-package-by-default t)


;; load `use-package`
(straight-use-package 'use-package)

(use-package org)

(org-babel-load-file (expand-file-name (concat user-emacs-directory "config.org")))

(provide 'init)
;;; init.el ends here
