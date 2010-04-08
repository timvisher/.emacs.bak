;; From ams in #emacs
(save-exursion (beginning-of-buffer) (query-replace-regexp ...))

(defun query-replace-regexp-from-beginning-of-buffer (regexp to-string &optional delimited start end) (interactive) (save-excursion (beginning-of-buffer) (query-replace-regexp regexp to-string &optional delimited start end)))
;; [2:15pm] ams: or something.
;; [2:16pm] ams: eh, remove the &optional cruft in the call to q-r-r
