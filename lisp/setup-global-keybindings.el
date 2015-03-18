(require 'setup-editor)

;; Better modifier keys
(setq ns-function-modifier 'hyper)
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

(global-set-key (kbd "C-c i") 'imenu)
(global-set-key (kbd "s-<backspace>") 'backward-kill-word)

(global-set-key (kbd "C-x _") 'maximize-window)

(global-set-key (kbd "s-w") 'ace-window)
(global-set-key (kbd "s-.") 'ace-jump-mode)

(global-set-key (kbd "M-<return>") 'insert-newline-above)

(provide 'setup-global-keybindings)
