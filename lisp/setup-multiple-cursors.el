(require 'multiple-cursors)

(global-set-key (kbd "H->") 'mc/mark-next-like-this)
(global-set-key (kbd "H-<") 'mc/mark-previous-like-this)

(global-set-key (kbd "H-.") 'mc/skip-to-next-like-this)
(global-set-key (kbd "H-,") 'mc/skip-to-previous-like-this)

(provide 'setup-multiple-cursors)
