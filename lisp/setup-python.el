(require 'anaconda-mode)
(require 'pyenv-mode)

(pyenv-mode)
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'eldoc-mode)
(add-hook 'python-mode-hook
          (lambda ()
            (font-lock-add-keywords
             nil
             '(("\\<\\(FIXME\\|TODO\\|BUG\\|NOTE\\):" 1 font-lock-warning-face t)))))

(add-to-list 'company-backend 'company-anaconda)

(provide 'setup-python)
