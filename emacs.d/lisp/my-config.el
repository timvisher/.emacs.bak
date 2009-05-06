;; Get rid of that GUI!
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(if (string-match ".*-window" (emacs-type))
  ;; Frame Geometry
  (setq default-frame-alist '(
                              (top . 20) 
                              (left . 70) 
                              (width . 120) 
                              (height . 50)))

  ;; Frame Colors
  (require 'color-theme)
  (color-theme-initialize)
  (color-theme-simple-1))

;; Set default ispell program
(setq-default ispell-program-name "aspell")

;; Setup Emacs to run bash as its primary shell.
(setq shell-file-name "bash")
(setq shell-command-switch "-c")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
(setq explicit-sh-args '("-login" "-i"))
(if (boundp 'w32-quote-process-args)
  (setq w32-quote-process-args ?\")) ;; Include only for MS Windows.

;; Easy Customization
(setq custom-file (concat emacs-root "lisp/easy-customization.el"))
(load custom-file)