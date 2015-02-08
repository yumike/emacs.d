;; fix the PATH variable
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (shell-command-to-string "TERM=vt100 $SHELL -i -c 'echo $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(when window-system
  (set-exec-path-from-shell-PATH))

(setq lisp-dir (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path lisp-dir)

;; Core
(require 'setup-packages)
(require 'setup-ui)
(require 'setup-editor)
(require 'setup-global-keybindings)

;; Packages
(require 'setup-projectile)
(require 'setup-god)
(require 'setup-multiple-cursors)
(require 'setup-ido)
(require 'setup-smartparens)
(require 'setup-company)
(require 'setup-clojure)
(require 'setup-python)
(require 'setup-web)
(require 'setup-org)
(require 'setup-haskell)
(require 'setup-erlang)
