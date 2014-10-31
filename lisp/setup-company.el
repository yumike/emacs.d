(require 'company)

;; Invert the navigation direction if the completion
;; popup-isearch-match is displayed on top
(setq company-tooltip-flip-when-above t)

;; Enable company mode
(global-company-mode +1)

(provide 'setup-company)
