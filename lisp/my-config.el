(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)) ;; Yegge
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1)) ;; Yegge
(if (not (string-equal "emacs-mac-window" (emacs-type)))
    (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))) ;; Yegge/Emacs-Fu: ieure

(if (string-match ".*-window" (emacs-type))
  (progn
    (setq default-frame-alist '(
                                (top . 20) 
                                (left . 70) 
                                (width . 120) 
                                (height . 50)))

    (require 'color-theme)
    (color-theme-initialize)
    (color-theme-simple-1)))

(setq-default ispell-program-name "aspell")

(setq shell-file-name "bash")
(setq shell-command-switch "-c")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
(setq explicit-sh-args '("-login" "-i"))
(if (boundp 'w32-quote-process-args)
  (setq w32-quote-process-args ?\"))

(setq custom-file (concat emacs-root "lisp/easy-customization.el"))
(load custom-file)

(setq                             ;; Emacs-Fu
      search-highlight t
      query-replace-highlight t)

(defalias 'yes-or-no-p 'y-or-n-p) ;; Emacs-Fu: valvo

(setq inhibit-startup-message t) ;; Emacs-Fu: 20sever.org

(setq echo-keystrokes 0.1) ;; Emacs-Fu: rejeep

(defun kill-all-buffers ()   ;; Emacs-Fu: rejeep
"Kill all buffers, leaving *scratch* only."
(interactive)
(mapcar (lambda (x) (kill-buffer x)) (buffer-list)) (delete-other-windows))

(setq require-trailing-newline t) ;; Emacs-Fu ieure

(require 'uniquify) ;; Emacs-Fu: p4abl0

(setq initial-scratch-message (purecopy "\
;; Lisp Interaction Buffer:


")) ;; Emacs-Fu

(push '("." . "~/.emacs-backups") backup-directory-alist)

(setq display-time-day-and-date t)

(setq column-number-mode t)