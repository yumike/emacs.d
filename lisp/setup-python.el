(require 'anaconda-mode)
(require 'pyenv-mode)
(require 'flycheck)

(defun my/python-mode-hook ()
  ;; Hoghlight trailing whitespaces
  (setq show-trailing-whitespace t)

  (anaconda-mode)
  (eldoc-mode)

  (flycheck-select-checker 'python-pylint)
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
