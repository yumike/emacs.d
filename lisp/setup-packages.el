(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa") t)
(package-initialize)

(defvar my-packages
  '(projectile
    ace-jump-mode
    ack-and-a-half
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
    multiple-cursors))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(provide 'setup-packages)
