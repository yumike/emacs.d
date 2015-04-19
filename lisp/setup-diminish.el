(require 'diminish)

(eval-after-load "anaconda-mode"
  '(diminish 'anaconda-mode))

(eval-after-load "company"
  '(diminish 'company-mode))

(eval-after-load "eldoc"
  '(diminish 'eldoc-mode))

(eval-after-load "smartparens"
  '(diminish 'smartparens-mode))

(eval-after-load "undo-tree"
  '(diminish 'undo-tree-mode))

(provide 'setup-diminish)
