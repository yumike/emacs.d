(require 'haskell)
(require 'ghc)
(require 'company)
(require 'company-ghc)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda ()
                               (interactive-haskell-mode)
                               (turn-on-haskell-indentation)
                               (ghc-init)))

(add-to-list 'company-backends 'company-ghc)

(setq haskell-process-type 'cabal-repl)

(define-key interactive-haskell-mode-map (kbd "C-c C-c") nil)
(define-key interactive-haskell-mode-map (kbd "C-c C-t") nil)

(provide 'setup-haskell)
