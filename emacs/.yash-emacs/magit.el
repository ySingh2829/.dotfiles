;; Magit Baby
(use-package magit)

(use-package magit-delta
  :hook (magit-mode . magit-delta-mode))

(use-package forge
  :after magit)
