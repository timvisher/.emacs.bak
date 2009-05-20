;; Emacs-Fu
(global-set-key (kbd "<C-tab>") 'bury-buffer)

;; Yegge
(global-set-key (kbd "C-x C-m") 'execute-extended-command)

;; Yegge
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "M-w") 'kill-region)
(global-set-key (kbd "M-C-w") 'kill-ring-save)

;; Yegge
(global-set-key (kbd "M-s") 'isearch-forward-regexp)
(global-set-key (kbd "M-r") 'isearch-backward-regexp)

;; Yegge
(defalias 'qrr 'query-replace-regexp)

;; Yegge
(global-set-key (kbd "M-p") 'fill-paragraph)
(global-set-key (kbd "M-q") 'fill-region)

;; Emacs-Fu: Bill
(global-set-key (kbd "C-x C-u") 'advertised-undo)
(if window-system
    (progn
      (global-unset-key "\C-x\C-z")
      (global-unset-key "\C-z")))

;; Intro to ELisp
(global-set-key (kbd "C-c =") 'count-words-region)

;; Emacs-Fu
(global-set-key (kbd "C-c C-r") 'dot-emacs-reload)
(global-set-key (kbd "C-c C-e") 'dot-emacs-edit)
