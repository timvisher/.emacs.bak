;; Specialty Buffers
(global-set-key (kbd "M-<f2>") 'markdown-frame)
(global-set-key (kbd "C-M-<f2>") 'mail-frame)

;; Defaults Remapping
(global-set-key (kbd "M-<f3>") 'kmacro-start-macro-or-insert-counter)
(global-set-key (kbd "M-<f4>") 'kmacro-end-or-call-macro)
(global-set-key (kbd "C-x C-m") 'execute-extended-command) ;; Yegge
(global-set-key (kbd "C-h") 'backward-delete-char-untabify) ;; Luke Gorrie (http://steve.yegge.googlepages.com/effective-emacs)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-unset-key (kbd "DEL")) ;; Luke Gorrie (http://steve.yegge.googlepages.com/effective-emacs)

(if window-system ;; Emacs-Fu: Bill
    (progn
      (global-unset-key "\C-x\C-z")
      (global-unset-key "\C-z")))

;; Shortcuts

;; Buffer Operations
(global-set-key (kbd "M-<f12>") 'view-buffer)
(global-set-key (kbd "C-<tab>") 'bury-buffer) ;; Emacs-Fu

;; Kill Operations
(global-set-key (kbd "C-w") 'backward-kill-word) ;; Yegge
(global-set-key (kbd "M-w") 'kill-region) ;; Yegge
(global-set-key (kbd "M-C-w") 'kill-ring-save) ;; Yegge

;; Searching Operations
(global-set-key (kbd "M-s") 'isearch-forward-regexp) ;; Yegge
(global-set-key (kbd "M-r") 'isearch-backward-regexp) ;; Yegge

;; Filling Operations
(global-set-key (kbd "M-p") 'fill-paragraph) ;; Yegge
(global-set-key (kbd "M-q") 'fill-region) ;; Yegge

;; .emacs editing convenience
(global-set-key (kbd "C-c C-r") 'dot-emacs-reload) ;; Emacs-Fu
(global-set-key (kbd "C-c C-e") 'dot-emacs-edit) ;; Emacs-Fu

;; Miscellaneous
(global-set-key (kbd "C-c =") 'count-words-region) ;; Intro to ELisp
(global-set-key (kbd "C-c m") 'column-marker-1) ;; http://www.emacswiki.org/emacs/column-marker.el

;; Dev
(global-set-key (kbd "C-<return>") 'newline-and-indent)

(defalias 'qrr 'query-replace-regexp) ;; Yegge
(defalias 'll 'longlines-mode)
(defalias 's 'ispell)
(defalias 'sr 'ispell-region)
