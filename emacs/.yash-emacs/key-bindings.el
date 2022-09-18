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

 "o" '(nil :which-key "open")
 "ov" '(vterm-mode :which-key "vterm")

 ;; Git
 "g" '(magit-status :which-key "magit-status")

 ;; Files
 "f" '(nil :which-key "files")
 "fd" '(dired :which-key "dired")
 "fl" '(consult-line :which-key "search line")
 "ff" '(consult-fd :which-key "consult-fd")
 "fF" '(consult-find :which-key "consult-find")
 "fL" '(consult-locate :whick-key "locate file")
 "fg" '(consult-grep :which-key "grep file")
 "fr" '(consult-ripgrep :which-key "ripgrep file"))
