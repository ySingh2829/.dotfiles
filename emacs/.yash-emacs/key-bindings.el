;;================== Key bindigns =================;;
(use-package helpful)
(use-package general)

(general-define-key
 :states '(normal motion visual)
 "K" 'helpful-at-point
 "C-=" 'text-scale-increase
 "C--" 'text-scale-decrease)

(general-define-key
 :states '(normal motion visual)
 :keymaps 'override
 :prefix "SPC"

 ;; Top level functions
 "." '(find-file :which-key "find file")

 ;; Buffers
 "b" '(nil :which-key "buffer")
 "bb" '(consult-buffer :which-key "switch buffers")
 "bn" '(next-buffer :which-key "next buffer")
 "bp" '(previous-buffer :which-key "previous buffer")
 "bk" '(kill-buffer :which-key "kill buffer")

 ;; Git
 "g" '(nil :which-key "git")
 "gs" '(magit-status :which-key "status")
 "gf" '(magit-fetch :which-key "fetch")
 "gp" '(magit-push :which-key "push")
 "gm" '(magit-merge :which-key "merge")
 "gr" '(magit-rebase :which-key "rebase")

 ;; Files
 "f" '(nil :which-key "files")
 "fd" '(dired :which-key "dired")
 "fl" '(consult-line :which-key "search line")
 "ff" '(consult-find :which-key "find")
 "fL" '(consult-locate :whick-key "locate file")
 "fg" '(consult-grep :which-key "grep file")
 "fr" '(consult-ripgrep :which-key "ripgrep file"))
