;; Set gui window size
(when window-system
  (set-frame-size (selected-frame) 100 60))

;; Disable toolbar
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

;; Disable scrollbar
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; Scroll one line at a time
(setq scroll-conservatively 100000)

;; Disable blinking cursor
(blink-cursor-mode -1)

;; Disable startup screen
(setq inhibit-startup-screen t)

;; Make the fringe (gutter) smaller
(when (fboundp 'fringe-mode)
  (fringe-mode 4))

;; Don't open new files in new frames
(setq ns-pop-up-frames nil)

;; Don't use native fullscreen due to the annoying display switch
;; animations
(setq ns-use-native-fullscreen nil)

;; Disable annoying bell
(setq ring-bell-function 'ignore)

;; Set theme
(load-theme 'zenburn t)

;; Font settings
(set-face-attribute 'default nil :font "Ubuntu Mono-14")
(set-frame-font "Ubuntu Mono-14" nil t)

(provide 'setup-ui)
