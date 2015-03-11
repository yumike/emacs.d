(require 'cl)
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(defvar my-packages
  '(exec-path-from-shell
    projectile
    god-mode
    ace-jump-mode
    ace-window
    ag
    company
    magit
    ido-ubiquitous
    flx-ido
    markdown-mode
    org
    zenburn-theme
    smartparens
    clojure-mode
    cider
    stylus-mode
    yaml-mode
    web-mode
    pyenv-mode
    anaconda-mode
    company-anaconda
    emmet-mode
    haskell-mode
    ghc
    company-ghc
    erlang
    multiple-cursors))

(defun my-packages-installed-p ()
  (every #'package-installed-p my-packages))

(defun my-install-packages ()
  (unless (my-packages-installed-p)
    (package-refresh-contents)
    (dolist (p my-packages)
      (unless (package-installed-p p)
        (package-install p)))))

(my-install-packages)

(provide 'setup-packages)
