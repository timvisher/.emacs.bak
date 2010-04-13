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

;; LaTeX Mode
(add-hook 'latex-mode-hook
          (lambda () (setq skeleton-pair t)))

;; Groovy Mode
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)))
(add-hook 'groovy-mode-hook
          '(lambda ()
             (groovy-electric-mode)))

;; Java Mode
(add-hook 'java-mode-hook
          '(lambda ()
             (setq compile-command "ant -find build.xml -emacs")))

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
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

;; VB Mode - ech!
(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(add-to-list 'auto-mode-alist '("\\.\\(frm\\|bas\\|cls\\)$" . visual-basic-mode))

;; CEDET

;;(load-file (expand-file-name (concat emacs-root "site-lisp/cedet/common/cedet.el")))

;; JDEE

;;(load "jde-autoload")

;; NXML Mode

(autoload 'nxml-mode "rng-auto" "nXML Mode.")
(add-to-list 'auto-mode-alist
	     '("\\.xml" . nxml-mode))

;; PHP Mode
(autoload 'php-mode "php-mode" "PHP Mode." )
(add-to-list 'auto-mode-alist
	     '("\\.php[345]?\\|\\.phtml" . php-mode))

;; ido Mode
(ido-mode)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;; GTags

(autoload 'gtags-mode "gtags" "" t)
(add-hook 'c-mode-hook
          '(lambda () (gtags-mode 1)))

;; Help Mode

(add-hook 'help-mode-hook
          '(lambda () (local-set-key (kbd "C-<Tab>") 'backward-button)))
