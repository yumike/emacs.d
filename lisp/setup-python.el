(require 'anaconda-mode)
(require 'pyenv-mode)

(pyenv-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'eldoc-mode)

(add-to-list 'company-backend 'company-anaconda)

(provide 'setup-python)
