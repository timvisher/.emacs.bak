;; Tim's .emacs file

;; Set up Load Path
(defvar emacs-root (expand-file-name "~/.emacs.d/")
                   "The root of my personal emacs configuration.")

(require 'cl)

(labels
    ((add-path (p)
               (when p
                 (add-to-list 'load-path (concat emacs-root (car p)))
                 (add-path (cdr p)))))

    (add-path '("lisp"                      ;; My own ELisp
                "site-lisp"                 ;; Interweb ELisp
                "site-lisp/color-theme"     ;; Theming Support
                "site-lisp/cedet"           ;; General IDE-like support
                "site-lisp/jdee/lisp"       ;; Java Development
                "site-lisp/elib"
                "site-lisp/nxml"            ;; XML Support
                "site-lisp/ecb"             ;; General IDE-like support
                "site-lisp/php"             ;; PHP Mode
                "site-lisp/groovy-mode"     ;; Groovy Mode
                "site-lisp/markdown-mode"   ;; Markdown Mode
               )))

; Emacs Flavor Specific Setup
(require 'emacs-type)

(load-library "functions")          ;; Personal one-off functions
(load-library "platform-detection") ;; Functions for detecting platforms
(load-library "ekeys")              ;; Key bindings and aliases
(load-library "modes")              ;; Mode configuration
(load-library "my-config")          ;; one-off variable settings
(load-library "enabled")            ;; Place to store the functionality I have restored

(server-start)
(put 'scroll-left 'disabled nil)
