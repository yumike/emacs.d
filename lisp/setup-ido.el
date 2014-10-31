(require 'ido)
(require 'ido-ubiquitous)
(require 'flx-ido)

(setq ido-enable-dot-prefix nil
      ido-enable-flex-matching t
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-default-file-method 'selected-window
      ido-auto-merge-work-directories-length -1)
(ido-mode t)
(ido-ubiquitous-mode t)

(flx-ido-mode t)
(setq ido-use-faces nil)

(provide 'setup-ido)
