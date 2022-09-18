(setq inhibit-startup-message t)

(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable toolbar
(tooltip-mode -1)           ; Disable toolstips
(set-fringe-mode 10)        ; Give some breathing room

(menu-bar-mode 1)          ; Disable the menu

;; Set up the visible bell
(setq visible-bell nil)

;; Display line and set scroll margin
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; Smooth scrolling
;; Vertical Scroll
(setq scroll-step 1)
(setq scroll-margin 5)
(setq scroll-conservatively 101)
(setq scroll-up-aggressively 0.01)
(setq scroll-down-aggressively 0.01)
(setq auto-window-vscroll nil)
(setq fast-but-imprecise-scrolling nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
;; Horizontal Scroll
(setq hscroll-step 1)
(setq hscroll-margin 1)

;;(load-theme 'leuven)

;; Theme
(use-package doom-themes
  :config
  ;;Gloabal settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
	doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one nil)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1.0))
