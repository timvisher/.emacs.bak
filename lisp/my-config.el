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

(defun dot-emacs-reload ()
(interactive)
(load-file "~/.emacs.d/init.el"))

(defun dot-emacs-edit ()
(interactive)
(find-file "~/.emacs.d/init.el"))

(global-set-key "\C-c\C-r" 'dot-emacs-reload)
(global-set-key "\C-c\C-e" 'dot-emacs-edit)

(push '("." . "~/.emacs-backups") backup-directory-alist)

(setq display-time-day-and-date t)

(setq column-number-mode t)


;; Straight from Intro To ELisp 
(defun recursive-count-words (region-end)
  "Number of words between point and REGION-END."
  (if (and (< (point) region-end)
           (re-search-forward "\\w+\\W*" region-end t))
      (1+ (recursive-count-words region-end))
    0))

(defun count-words-region (beginning end)
"Print number of words in the region.

Words are defined as at least one word-constituent
character followed by at least one character that is
not a word-constituent.  The buffer's syntax table
determines which characters these are."
  (interactive "r")
  (message "Counting words in region ... ")
  (save-excursion
    (goto-char beginning)
    (let ((count (recursive-count-words end)))
      (cond ((zerop count)
             (message
              "The region does NOT have any words."))
            ((= 1 count)
             (message "The region has 1 word."))
            (t
             (message
              "The region has %d words." count))))))