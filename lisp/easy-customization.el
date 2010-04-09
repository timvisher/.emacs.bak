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
 '(ecb-options-version "2.40")
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
 '(jde-jdk-registry (quote (("1.6" . "c:/sun/sdk/jdk"))))
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
 '(show-trailing-whitespace t)
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
     '(default ((t (
         :stipple nil
         :background "black"
         :foreground "white"
         :inverse-video nil
         :box nil
         :strike-through nil
         :overline nil
         :underline nil
         :slant normal
         :weight normal
         :height 130
         :width normal
         :foundry "apple"
         :family "Inconsolata"))))
     '(default ((t (
         :stipple nil
         :background "black"
         :foreground "white"
         :inverse-video nil
         :box nil
         :strike-through nil
         :overline nil
         :underline nil
         :slant normal
         :weight normal
         :height 100
         :width normal
         :family "outline-inconsolata")))))
 '(cursor ((t (:background "indian red"))))
 '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face :foreground "darkgreen")) (((class color) (min-colors 16)) nil)))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background light)) (:foreground "darkgreen"))))
 '(font-lock-constant-face ((((class color) (min-colors 88) (background light)) (:foreground "#3333ff"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background light)) (:foreground "Brown"))))
 '(fringe ((nil (:background "#333333"))))
 '(hl-line ((t (:inherit highlight :background "#111c1c"))))
 '(isearch ((nil (:background "yellow" :foreground "black" :box (:line-width 2 :color "yellow")))))
 '(lazy-highlight ((nil (:background "yellow" :foreground "black"))))
 '(mode-line ((t (:background "#aaaaaa" :foreground "black" :box (:line-width 2 :color "#aaaaaa") :height 1.05))))
 '(mode-line-buffer-id ((t (:foreground "black"))))
 '(mode-line-inactive ((default (:inherit mode-line :background "#aaaaaa" :box (:line-width 2 :color "#cccccc" :style pressed-button))) (((class color) (min-colors 88) (background light)) (:background "grey90" :foreground "grey20" :box (:line-width -1 :color "grey75") :weight light))))
 '(paren-face-match-light ((t (:background "#222222"))))
 '(region ((t (:background "grey" :foreground "black"))))
 '(whitespace-tab ((((class color) (background light)) (:background "red" :foreground "white")))))
