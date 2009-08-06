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
 '(echo-keystrokes 0.1)
 '(fill-column 80)
 '(global-hl-line-mode t)
 '(hl-line-sticky-flag nil)
 '(indent-tabs-mode nil)
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(ispell-program-name "aspell")
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
 '(default ((t (:stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 85 :width normal :family "outline-inconsolata"))))
 '(fringe ((((class color) (background dark)) (:background "#333333"))))
 '(hl-line ((t (:inherit highlight :background "#002233"))))
 '(isearch ((((class color) (min-colors 88) (background dark)) (:background "#ffff00" :foreground "black"))))
 '(lazy-highlight ((((class color) (min-colors 88) (background dark)) (:background "#006666" :foreground "white"))))
 '(mode-line ((t (:background "#333333" :foreground "white" :box (:line-width 2 :color "grey75")))))
 '(mode-line-buffer-id ((t (:foreground "white"))))
 '(paren-face-match-light ((t (:background "#222222"))))
 '(region ((t (:background "grey" :foreground "black")))))
