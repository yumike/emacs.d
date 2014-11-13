(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(setq web-mode-engines-alist
      '(("django" . "\\.html?\\'")))

;; Make web-mode play nice with spartparens
(setq web-mode-enable-auto-pairing nil)

;; Indentation
(setq web-mode-markup-indent-offset 2)

(provide 'setup-web)
