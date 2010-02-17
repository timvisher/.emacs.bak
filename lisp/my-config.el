(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)) ;; Yegge
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1)) ;; Yegge
(if (not (and (emacs-is-mac) (emacs-is-windowed)))
    (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))) ;; Yegge/Emacs-Fu: ieure

(standard-display-ascii ?\t "    ")

;; Shell Config
;; TODO Move to Easy Customization
  (setq shell-file-name "bash")
  (setq shell-command-switch "-c")
  (setq explicit-shell-file-name shell-file-name)
  (setenv "SHELL" shell-file-name)
  (setq explicit-sh-args '("-login" "-i"))
  (if (boundp 'w32-quote-process-args)
    (setq w32-quote-process-args ?\"))

(setq custom-file (concat emacs-root "lisp/easy-customization.el"))
(load custom-file)

(defalias 'yes-or-no-p 'y-or-n-p) ;; Emacs-Fu: valvo

(setq visible-bell t)

(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/site-lisp/zen-and-art/zen-and-art.el")
(color-theme-zen-and-art)

(if (emacs-is-windowed)
    (maximize-frame))

;; Mac Specific Configuration
(if (emacs-is-mac)
    (progn
        (if (boundp 'mac-command-modifier) (setq mac-command-modifier 'meta))
        (if (boundp 'mac-option-modifier) (setq mac-option-modifier 'none))))
