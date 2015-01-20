(require 'company)

;; Invert the navigation direction if the completion
;; popup-isearch-match is displayed on top
(setq company-tooltip-flip-when-above t)

;; Enable company mode
(global-company-mode +1)

(define-key company-mode-map (kbd "C-<tab>") 'company-complete)

(provide 'setup-company)
