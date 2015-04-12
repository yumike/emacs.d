(require 'anaconda-mode)
(require 'pyenv-mode)

(defun my/python-mode-hook ()
  (anaconda-mode)
  (eldoc-mode)
  (flycheck-mode)

  (with-eval-after-load 'evil
    (define-key evil-normal-state-local-map "gd" 'anaconda-mode-goto-definitions))

  (font-lock-add-keywords
   nil
   '(("\\<\\(FIXME\\|TODO\\|BUG\\|NOTE\\):" 1 font-lock-warning-face t))))

(pyenv-mode)
(add-hook 'python-mode-hook 'my/python-mode-hook)
(add-to-list 'company-backend 'company-anaconda)

(provide 'setup-python)
