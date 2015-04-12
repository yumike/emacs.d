(require 'evil)

(evil-mode 1)
(setq evil-emacs-state-cursor    '("red"    box))
(setq evil-normal-state-cursor   '("white"  box))
(setq evil-visual-state-cursor   '("orange" box))
(setq evil-insert-state-cursor   '("white"  bar))
(setq evil-replace-state-cursor  '("white"  bar))
(setq evil-operator-state-cursor '("white"  hollow))

(provide 'setup-evil)
