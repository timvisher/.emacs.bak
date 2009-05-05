;; Get rid of that GUI!
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Frame Geometry
(setq default-frame-alist '(
        (top . 20) 
	(left . 70) 
	(width . 120) 
	(height . 50)))

;; Frame Colors
(require 'color-theme)
(color-theme-initialize)
(color-theme-simple-1)

;; Implement C-tab for bury-buffer
(global-set-key (kbd "<C-tab>") 'bury-buffer)

;; Set default ispell program
(setq-default ispell-program-name "aspell")

;; Markdown... Hurray!
(autoload 'markdown-mode "markdown-mode.elc" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.mdwn\\.txt" . markdown-mode) auto-mode-alist))

;; VB Mode - ech!
(autoload 'visual-basic-mode "visual-basic-mode" "Visual Basic mode." t)
(setq auto-mode-alist (append '(("\\.\\(frm\\|bas\\|cls\\)$" . visual-basic-mode)) auto-mode-alist))

;;JDEE
(add-to-list 'load-path (expand-file-name "~/.emacs.d/jde/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/cedet/semantic"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/cedet/speedbar"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elib"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/cedet/eieio"))

(setq debug-on-error t)

(load-file (expand-file-name "~/.emacs.d/cedet/common/cedet.el"))

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

;; Setup Emacs to run bash as its primary shell.
(setq shell-file-name "bash")
(setq shell-command-switch "-c")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
(setq explicit-sh-args '("-login" "-i"))
(if (boundp 'w32-quote-process-args)
  (setq w32-quote-process-args ?\")) ;; Include only for MS Windows.

;;Easy Customization
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(global-hl-line-mode t)
 '(hl-line-sticky-flag nil)
 '(indicate-empty-lines t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
