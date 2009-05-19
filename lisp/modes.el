;; Minors

(savehist-mode t) ;; Emacs-Fu: valvo

(autoload 'longlines-mode
"longlines.el"
"Minor mode for automatically wrapping long lines." t)

(display-time)

;; Markdown... Hurray!
(autoload 'markdown-mode "markdown-mode.elc" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.mdwn\\.txt" . markdown-mode) auto-mode-alist))

;; VB Mode - ech!
(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(setq auto-mode-alist (append '(("\\.\\(frm\\|bas\\|cls\\)$" . visual-basic-mode)) auto-mode-alist))

;; JDEE

(setq debug-on-error t)

(load-file (expand-file-name (concat emacs-root "cedet/common/cedet.el")))

(setq defer-loading-jde t)

(if defer-loading-jde
    (progn
        (autoload 'jde-mode "jde" "JDE mode." t)
        (setq auto-mode-alist
            (append '(("\\.java\\'" . jde-mode))
            auto-mode-alist)))
    (require 'jde))

(defun my-jde-mode-hook ()
    (setq c-basic-offset 4))

(add-hook 'jde-mode-hook 'my-jde-mode-hook)

;; NXML Mode

(load-library "rng-auto")
