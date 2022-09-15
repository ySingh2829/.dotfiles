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

;; You know how it is!!
(set-face-attribute 'default nil :family "DejaVu Sans Mono" :height 120)

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

;;================== External Setting ==================;;

(load-file "~/.yash-emacs/personal-settings.el")
(load-file "~/.yash-emacs/completion.el")
(load-file "~/.yash-emacs/magit.el")
(load-file "~/.yash-emacs/lsp-settings.el")
(load-file "~/.yash-emacs/org-settings.el")
(load-file "~/.yash-emacs/key-bindings.el")
