;; Tim's .emacs file

;; Set up Load Path
(defvar emacs-root (if (or (eq system-type 'cygwin)
                           (eq system-type 'gnu/linux)
                           (eq system-type 'linux))
                       "/home/tim/.emacs.d/"
                       (if (eq system-type 'darwin)
                           "/Users/tim/.emacs.d/"
                           "c:/cygwin/home/tvishe01/.emacs.d/"))
                       "The root of my personal emacs configuration.")

(add-to-list 'load-path (concat emacs-root "lisp")) ; My own ELisp
(add-to-list 'load-path (concat emacs-root "site-lisp")) ; Interweb ELisp
(add-to-list 'load-path (concat emacs-root "color-theme")) ; Theming support
(add-to-list 'load-path (concat emacs-root "jde/lisp")) ; Java Development
(add-to-list 'load-path (concat emacs-root "cedet"))
(add-to-list 'load-path (concat emacs-root "cedet/semantic"))
(add-to-list 'load-path (concat emacs-root "cedet/speedbar"))
(add-to-list 'load-path (concat emacs-root "cedet/eieio"))
(add-to-list 'load-path (concat emacs-root "elib"))

; Emacs Flavor Specific Setup
(require 'emacs-type)

(load-library "ekeys") ; Key Bindings and Aliases
(load-library "modes") ; Mode Configuration
(load-library "my-config") ; one-off variable settings
