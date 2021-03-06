(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(bookmark-default-file "~/.emacs.d/bookmarks/default.bmk")
 '(bookmark-save-flag 1)
 '(column-number-mode t)
 '(display-time-day-and-date t)
 '(echo-keystrokes 0.1)
 '(fill-column 80)
 '(global-hl-line-mode t)
 '(global-whitespace-mode t)
 '(hl-line-sticky-flag nil)
 '(indent-tabs-mode nil)
 '(indicate-buffer-boundaries (quote left))
 '(indicate-empty-lines t)
 '(inhibit-startup-screen t)
 '(ispell-program-name "aspell")
 '(lazy-highlight-max-at-a-time 20)
 '(mouse-avoidance-animation-delay 0)
 '(mouse-avoidance-mode (quote banish) nil (avoid))
 '(paren-match-face (quote paren-face-match-light))
 '(paren-sexp-mode t)
 '(query-replace-highlight t)
 '(regexp-search-ring-max 16)
 '(require-final-newline (quote visit-save))
 '(search-highlight t)
 '(search-ring-max 16)
 '(search-slow-speed 1200)
 '(search-slow-window-lines 1)
 '(search-whitespace-regexp "\\s-+")
 '(show-paren-mode t)
 '(tab-width 4)
 '(temporary-file-directory "~/tmp")
 '(transient-mark-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(whitespace-empty (quote whitespace-empty))
 '(whitespace-empty-at-bob-regexp "\\`\\(\\([ 	]*
\\)+\\)")
 '(whitespace-empty-at-eob-regexp "^\\([ 	
]+\\)\\'")
 '(whitespace-hspace (quote whitespace-hspace))
 '(whitespace-hspace-regexp "\\(\\(\240\\|ࢠ\\|ठ\\|ภ\\|༠\\)+\\)")
 '(whitespace-indentation (quote whitespace-indentation))
 '(whitespace-line (quote whitespace-line))
 '(whitespace-line-column 80)
 '(whitespace-newline (quote whitespace-newline))
 '(whitespace-space (quote whitespace-space))
 '(whitespace-space-after-tab (quote whitespace-space-after-tab))
 '(whitespace-space-before-tab (quote whitespace-space-before-tab))
 '(whitespace-space-before-tab-regexp "\\( +\\)\\(	+\\)")
 '(whitespace-space-regexp "\\( +\\)")
 '(whitespace-style (quote (trailing tabs)))
 '(whitespace-tab (quote whitespace-tab))
 '(whitespace-tab-regexp "\\(	+\\)")
 '(whitespace-trailing (quote whitespace-trailing))
 '(x-stretch-cursor t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 (if (emacs-is-mac)
     '(default
        ((t
          (:stipple nil
           :background "black"
           :foreground "white"
           :inverse-video nil
           :box nil
           :strike-through nil
           :overline nil
           :underline nil
           :slant normal
           :weight normal
           :height 150
           :width normal
           :foundry "apple"
           :family "Inconsolata"))))
     '(default
        ((t
          (:stipple nil
           :background "black"
           :foreground "white"
           :inverse-video nil
           :box nil
           :strike-through nil
           :overline nil
           :underline nil
           :slant normal
           :weight normal
           :height 105
           :width normal
           :family "outline-inconsolata")))))
 '(hl-line ((t (:inherit highlight :background "#2c2020"))))
 '(isearch ((nil (:background "yellow" :foreground "black" :box (:line-width 2 :color "yellow")))))
 '(lazy-highlight ((nil (:background "yellow" :foreground "black"))))
 '(whitespace-tab ((((class color) (background light)) (:background "red" :foreground "white")))))
