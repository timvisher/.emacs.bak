;; Minors

(savehist-mode t) ;; Emacs-Fu: valvo

(autoload 'longlines-mode
"longlines.el"
"Minor mode for automatically wrapping long lines." t)
(add-to-list 'auto-mode-alist '("\\.markdown\\|\\.txt" . longlines-mode))

(display-time)

(require 'uniquify) ;; Emacs-Fu: p4abl0

;; Markdown... Hurray!
(autoload 'markdown-mode "markdown-mode.elc" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

;; VB Mode - ech!
(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(add-to-list 'auto-mode-alist '("\\.\\(frm\\|bas\\|cls\\)$" . visual-basic-mode))

;; JDEE

(setq debug-on-error t)

(load-file (expand-file-name (concat emacs-root "cedet/common/cedet.el")))

(setq defer-loading-jde t)

(if defer-loading-jde
    (progn
        (autoload 'jde-mode "jde" "JDE mode." t)
        (add-to-list 'auto-mode-alist
                     '("\\.java\\'" . jde-mode)))
    (require 'jde))

(defun tab-config-jde-mode-hook ()
    (setq c-basic-offset 4))

(add-hook 'jde-mode-hook 'tab-config-jde-mode-hook)

;; NXML Mode

(autoload 'nxml-mode "rng-auto" "nXML Mode.")
(add-to-list 'auto-mode-alist
	     '("\\.xml" . nxml-mode))

;; PHP Mode
(autoload 'php-mode "php-mode" "PHP Mode." )
(add-to-list 'auto-mode-alist
	     '("\\.php[345]?\\|\\.phtml" . php-mode))
