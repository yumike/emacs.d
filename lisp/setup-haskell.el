(require 'haskell-mode)
(require 'ghc)
(require 'company)
(require 'company-ghc)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda ()
                               (turn-on-haskell-indentation)
                               (ghc-init)))

(add-to-list 'company-backends 'company-ghc)

(provide 'setup-haskell)
