;; Minors

(savehist-mode t) ;; Emacs-Fu: valvo

(autoload 'longlines-mode
"longlines.el"
"Minor mode for automatically wrapping long lines." t)
(add-to-list 'auto-mode-alist '("\\.markdown\\|\\.txt" . longlines-mode))

(add-to-list 'auto-mode-alist '("\\.txt" . text-mode))

(display-time)

(windmove-default-keybindings)

(require 'info)

(define-key Info-mode-map "`" 'Info-scroll-down)

(require 'uniquify) ;; Emacs-Fu: p4abl0

;; Groovy Mode
(require 'groovy-mode)
(add-to-list 'auto-mode-alist '("\\.groovy" . groovy-mode))

;; Predictive-Expansion from Nathanial Flath @ http://nflath.com/2009/04/predictive-expansion-for-emacs/
(defun pabbrev-expand-maybe-no-buffer()
  "Expand abbreviation, or run previous command.
If there is no expansion the command returned by
`pabbrev-get-previous-binding' will be run instead."
  (interactive)
    (if pabbrev-expansion
        (pabbrev-expand)
      (let ((prev-binding
             (pabbrev-get-previous-binding)))
        (if (and (fboundp prev-binding)
		 (not (eq prev-binding 'pabbrev-expand-maybe)))
	    (funcall prev-binding)))))

(require 'pabbrev )
(global-pabbrev-mode)
(setq pabbrev-read-only-error nil)

;; Markdown... Hurray!
(autoload 'markdown-mode "markdown-mode.elc" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

;; VB Mode - ech!
(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(add-to-list 'auto-mode-alist '("\\.\\(frm\\|bas\\|cls\\)$" . visual-basic-mode))

;; CEDET

(load-file (expand-file-name (concat emacs-root "site-lisp/cedet/common/cedet.el")))

(semantic-load-enable-excessive-code-helpers)
(require 'semantic-ia)

;; JDEE

(load "jde-autoload")

;; NXML Mode

(autoload 'nxml-mode "rng-auto" "nXML Mode.")
(add-to-list 'auto-mode-alist
	     '("\\.xml" . nxml-mode))

;; PHP Mode
(autoload 'php-mode "php-mode" "PHP Mode." )
(add-to-list 'auto-mode-alist
	     '("\\.php[345]?\\|\\.phtml" . php-mode))

;; ECB Mode
(require 'ecb)

;; ido Mode
(ido-mode)

(defun zap-to-char (arg char)
  "Kill up to and including ARGth occurrence of CHAR.
Case is ignored if `case-fold-search' is non-nil in the current buffer.
Goes backward if ARG is negative; error if CHAR not found."
  (interactive "p\ncZap to char: ")
  ;; Avoid "obsolete" warnings for translation-table-for-input.
  (with-no-warnings
    (if (char-table-p translation-table-for-input)
	(setq char (or (aref translation-table-for-input char) char))))
  (kill-region (point) (progn
			 (search-forward (char-to-string char) nil nil arg)
;			 (goto-char (if (> arg 0) (1- (point)) (1+ (point))))
             (backward-char)
			 (point))))

