(setq lisp-dir (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path lisp-dir)

;; Core
(require 'setup-packages)
(require 'setup-ui)
(require 'setup-editor)
(require 'setup-global-keybindings)

;; Packages
(require 'setup-evil)
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
