(require 'clojure-mode)

(define-clojure-indent
  (domonad 'defun))

(setq cider-auto-select-error-buffer nil)

(provide 'setup-clojure)
