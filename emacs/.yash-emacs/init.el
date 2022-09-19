;;=======================  Enter the church, may the Lord be with you =====================;;
;;; init.el --- -*- lexical-binding: t -*-

;;============================ Blessings from heavens ==========================;;
;; Straight package manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;;============================ Baptize ==================================;;
(setq gc-cons-threshold most-positive-fixnum)

;; Lower threshold back to 8 MiB (default is 800kB)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (expt 2 23))))

;; Make el-cache in user-emacs-directory
(add-to-list 'native-comp-eln-load-path (expand-file-name "eln-cache/" user-emacs-directory))

;; You know how it is!!
(set-face-attribute 'default nil :family "Liberation Mono" :height 120)

;;================== HERESY ======================;;
;; Evil package
(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :custom (evil-collection-setup-minibuffer t)
  :init (evil-collection-init))

;; What's in the Box!!
(setq evil-insert-state-cursor 'box)

;;================== Vterm ====================;;
(use-package vterm)

;;================== External Setting ==================;;

(load-file "~/.yash-emacs/personal-settings.el")
(load-file "~/.yash-emacs/completion.el")
(load-file "~/.yash-emacs/magit.el")
(load-file "~/.yash-emacs/lsp-settings.el")
(load-file "~/.yash-emacs/org-settings.el")
(load-file "~/.yash-emacs/key-bindings.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("02f57ef0a20b7f61adce51445b68b2a7e832648ce2e7efb19d217b6454c1b644" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
