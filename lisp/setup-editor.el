;; Save here instead of littering current directory with emacs backup files
(setq backup-directory-alist `((".*" . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" "~/.saves" t)))

(setq default-input-method "cyrillic-jcuken")

;; Indentation
(setq-default indent-tabs-mode nil)

;; Don't start another frame for ediff
(require 'ediff)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; Projectile is a project management mode
(require 'projectile)
(projectile-global-mode t)

(provide 'setup-editor)
