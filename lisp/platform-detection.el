;; Interface
(defun emacs-is-mac ()
  "Returns non-nil if Emacs is running on a Mac."
  (string-match "apple" (emacs-type)))

(defun emacs-is-windowed ()
  "Returns non-nil if Emacs is running in Windowed mode."
  (string-match "window" (emacs-type)))

;; Helpers
(defun emacs-type ()
"My patched emacs-type.  Macintosh detection works correctly.

Original Documentation:
Returns the type of emacs in use.
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
