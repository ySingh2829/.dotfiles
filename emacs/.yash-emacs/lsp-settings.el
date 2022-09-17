;; Lsp client
(use-package eglot)


;; Enhaced Rust mode with automatic LSP support
(use-package rustic
  :config
  (setq
   rustic-lsp-client 'eglot
   rustic-format-on-save t))

;; Tree-sitter
(use-package tree-sitter)
(use-package tree-sitter-langs)

(require 'tree-sitter)
(require 'tree-sitter-langs)

(global-tree-sitter-mode)
(add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode)

;; Snippets
(use-package yasnippet
  :init
    (yas-global-mode 1))

(use-package yasnippet-snippets)
(use-package yasnippet-classic-snippets)
