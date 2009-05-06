;; Implement C-tab for bury-buffer
(global-set-key (kbd "<C-tab>") 'bury-buffer)

;; Don't type M-x (Yegge)
(global-set-key "\C-x\C-m" 'execute-extended-command)

;; Prefer backward-kill-word to backspace (Yegge)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

;; Bind isearch-*-regexp to easier keys (Yegge)
(global-set-key "\M-s" 'isearch-forward-regexp)
(global-set-key "\M-r" 'isearch-backward-regexp)

;; Alias query-replace-regexp (Yegge)
(defalias 'qrr 'query-replace-regexp)

;; Fill Commands (Yegge)
(global-set-key "\M-p" 'fill-paragraph)
(global-set-key "\M-q" 'fill-region)
