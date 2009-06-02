(defun kill-all-buffers ()   ;; Emacs-Fu: rejeep
"Kill all buffers, leaving *scratch* only."
(interactive)
(mapcar (lambda (x) (kill-buffer x)) (buffer-list)) (delete-other-windows))

(defun dot-emacs-reload ()
(interactive)
(load-file "~/.emacs.d/init.el"))

(defun dot-emacs-edit ()
(interactive)
(find-file "~/.emacs.d/init.el"))

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

;; Yegge
(defun swap-windows ()
 "If you have 2 windows, it swaps them." 
 (interactive) 
 (cond ((not (= (count-windows) 2)) (message "You need exactly 2 windows to do this."))
       (t
       (let* ((w1 (first (window-list)))
              (w2 (second (window-list)))
              (b1 (window-buffer w1))
              (b2 (window-buffer w2))
              (s1 (window-start w1))
              (s2 (window-start w2)))
         (set-window-buffer w1 b2)
         (set-window-buffer w2 b1)
         (set-window-start w1 s2)
         (set-window-start w2 s1)))))

;; Yegge
(defun rename-file-and-buffer (new-name)
 "Renames both current buffer and file it's visiting to NEW-NAME." 
 (interactive "sNew name: ")
 (let ((name (buffer-name))
       (filename (buffer-file-name)))
   (if (not filename)
       (message "Buffer '%s' is not visiting a file!" name)
       (if (get-buffer new-name)
           (message "A buffer named '%s' already exists!" new-name)
           (progn 
             (rename-file name new-name 1) 
             (rename-buffer new-name) 
             (set-visited-file-name new-name) 
             (set-buffer-modified-p nil))))))

;; Yegge
(defun move-buffer-file (dir)
 "Moves both current buffer and file it's visiting to DIR." 
 (interactive "DNew directory: ")
 (let* ((name (buffer-name))
        (filename (buffer-file-name))
        (dir
          (if (string-match dir "\\(?:/\\|\\\\)$")
              (substring dir 0 -1) dir))
        (newname (concat dir "/" name)))
   (if (not filename)
       (message "Buffer '%s' is not visiting a file!" name)
       (progn 
         (copy-file filename newname 1)
         (delete-file filename)
         (set-visited-file-name newname)
         (set-buffer-modified-p nil)
         t))))

;; http://www.ftrain.com/util_emacs_hints.html
(defun insert-time-stamp ()
"Inserts a time stamp 'YYYY-MM-DD HH:MM AM/PM'"
(interactive)
(insert (format-time-string "%Y-%m-%d - %I:%M %p")))

;; http://www.emacswiki.org/emacs/column-marker.el
(require 'column-marker)

(defun mail-buffer ()
"Create a buffer to edit e-mail."
(interactive)
(if (get-buffer "mail")
    (kill-buffer "mail"))
(get-buffer-create "mail")
(switch-to-buffer "mail")
(text-mode)
(longlines-mode)
(yank))

