(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))

;; Save here instead of littering current directory with emacs backup files
(setq backup-directory-alist `((".*" . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" "~/.saves" t)))

(setq default-input-method "cyrillic-jcuken")

;; Show current line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Indentation
(setq-default indent-tabs-mode nil)

;; Highlight trailing whitespaces
(setq-default show-trailing-whitespace t)

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
