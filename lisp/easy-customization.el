(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "~/.emacs-backups"))))
 '(bookmark-default-file "~/.emacs.d/bookmarks/default.bmk")
 '(bookmark-save-flag 1)
 '(column-number-mode t)
 '(display-time-day-and-date t)
 '(ecb-options-version "2.40")
 '(echo-keystrokes 0.1)
 '(fill-column 80)
 '(global-hl-line-mode t)
 '(hl-line-sticky-flag nil)
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries (quote left))
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(ispell-program-name "aspell")
 '(jde-jdk-registry (quote (("1.6" . "c:/sun/sdk/jdk"))))
 '(mouse-avoidance-animation-delay 0)
 '(mouse-avoidance-mode (quote banish) nil (avoid))
 '(paren-match-face (quote paren-face-match-light))
 '(paren-sexp-mode t)
 '(query-replace-highlight t)
 '(require-final-newline (quote visit-save))
 '(search-highlight t)
 '(show-paren-mode t)
 '(show-trailing-whitespace t)
 '(tab-width 4)
 '(transient-mark-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(x-stretch-cursor t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :family "outline-inconsolata"))))
 '(cursor ((t (:background "indian red"))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face :foreground "darkgreen")) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light)) (:foreground "darkgreen"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background light)) (:foreground "#3333ff"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background light)) (:foreground "Brown"))))
 '(fringe ((nil (:background "#cccccc"))))
 '(hl-line ((t (:inherit highlight :background "#eeeeee"))))
 '(isearch ((nil (:background "yellow" :box (:line-width 2 :color "yellow")))))
 '(lazy-highlight ((nil (:background "yellow"))))
 '(mode-line ((t (:background "#aaaaaa" :foreground "black" :box (:line-width 2 :color "#aaaaaa") :height 1.05))))
 '(mode-line-buffer-id ((t (:foreground "black"))))
 '(mode-line-inactive ((default (:inherit mode-line :background "#aaaaaa" :box (:line-width 2 :color "#cccccc" :style pressed-button))) (((class color) (min-colors 88) (background light)) (:background "grey90" :foreground "grey20" :box (:line-width -1 :color "grey75") :weight light))))
 '(paren-face-match-light ((t (:background "#222222"))))
 '(region ((t (:background "grey" :foreground "black")))))
