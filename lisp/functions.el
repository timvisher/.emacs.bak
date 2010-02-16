(defun emacs-type ()
  "Returns the type of emacs in use.
Returns:
emacs - for regular Emacs in a console
emacs-window - for regular Emacs in a window(X)
xemacs - for XEmacs in a console
xemacs-window - for XEmacs in a window(X)
emacs-nt - for regular Emacs on Windows NT/9x in a console (NOT IMPLEMENTED YET)
emacs-nt-window - for regular Emacs on Windows NT/9x in a window(W32)
xemacs-nt - for XEmacs on Windows NT/9x in a console (NOT IMPLEMENTED YET)
xemacs-nt-window - for XEmacs on Windows NT/9x in a window(W32)
emacs-apple-window - for regular Emacs on Mac(??) in a window
emacs-msdos - for MS-DOS
unknown - Something unsupported"
  (cond
   ((string= "w32" window-system)
    "emacs-nt-window")
   ((string= "mswindows" window-system)
    "xemacs-nt-window")
   ((and (eq "msdos" system-type)
         (string-match "GNU" (emacs-version)))
    "emacs-msdos")
   ((or (and (string-match "apple" (emacs-version))
             (string-match "GNU" (emacs-version)))
        (boundp 'macintosh))
    "emacs-apple-window")
   ((or (eq system-type 'gnu/linux)
        (eq system-type 'linux))
    (if (string-match "XEmacs" emacs-version)
        (if window-system
            'xemacs-window
          "xemacs")
      (if window-system
          'emacs-window
        "emacs")))
   ((or (eq system-type 'windows)
        (string-match "GNU" (emacs-version)))
    "emacs-nt-window")
   (t "unknown")))

(defun emacs-is-mac ()
"Returns non-nil if Emacs is running on a Mac."
(string-match "apple" (emacs-type)))

(defun emacs-is-windowed ()
"Returns non-nil if Emacs is running in Windowed mode."
(string-match "window" (emacs-type)))

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

(defun insert-reflection-stamp (reflection-type)
(interactive "sReflection type: ")
"Inserts a string reflection yesterday 'YYYY-MM-DD REFLECTION-TYPE Reflections'."
(insert (yesterday-string))
(if reflection-type
    (insert " " reflection-type))
(insert " Reflections")
(newline))

(defun yesterday-string ()
"Inserts yesterday's date stamp 'YYYY-MM-DD'"
(format-time-string "%Y-%m-%d" (yesterday)))

(defun yesterday ()
"Provide the date/time 24 hours before the time now in the format of current-time."
(setq
    now-time (current-time) ; get the time now
    hi (car now-time) ; save off the high word
    lo (car (cdr now-time)) ; save off the low word
    msecs (nth 2 now-time) ; save off the milliseconds
)
(if (< lo 20864) ; if the low word is too small for subtracting
    (setq hi (- hi 2) lo (+ lo 44672)) ; take 2 from the high word and add to the low
    (setq hi (- hi 1) lo (- lo 20864)) ; else, add 86400 seconds (in two parts)
)
(list hi lo msecs) ; regurgitate the new values
)

;;(current-time-zone)


;; http://www.emacswiki.org/emacs/column-marker.el
(require 'column-marker)

(defun mail-buffer ()
"Create a buffer to edit e-mail."
(interactive)
(if (get-buffer "*mail*")
    (kill-buffer "*mail*"))
(get-buffer-create "*mail*")
(switch-to-buffer "*mail*")
(markdown-mode)
(longlines-mode)
(yank))

(defadvice yank (after indent-region activate)
  (if (member major-mode
              '(emacs-lisp-mode scheme-mode lisp-mode
                                c-mode c++-mode objc-mode
                                latex-mode plain-tex-mode))
      (let ((mark-even-if-inactive t))
        (indent-region (region-beginning) (region-end) nil))))

(defadvice yank-pop (after indent-region activate)
  (if (member major-mode
              '(emacs-lisp-mode scheme-mode lisp-mode
                                c-mode c++-mode objc-mode
                                latex-mode plain-tex-mode))
      (let ((mark-even-if-inactive t))
        (indent-region (region-beginning) (region-end) nil))))

(defun kill-and-join-forward (&optional arg)
  "If at end of line, join with following; otherwise kill line.
    Deletes whitespace at join."
  (interactive "P")
  (if (and (eolp) (not (bolp)))
      (delete-indentation t)
    (kill-line arg)))
(global-set-key (kbd "C-k") 'kill-and-join-forward)

