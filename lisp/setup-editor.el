(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

;; Save here instead of littering current directory with emacs backup files
(setq backup-directory-alist `((".*" . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" "~/.saves" t)))

(setq default-input-method "cyrillic-jcuken")

;; Indentation
(setq-default indent-tabs-mode nil)

;; Don't start another frame for ediff
(require 'ediff)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(defun insert-newline-above ()
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

(provide 'setup-editor)
