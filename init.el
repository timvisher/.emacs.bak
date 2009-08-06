;; Tim's .emacs file

;; Set up Load Path
(defvar emacs-root (expand-file-name "~/.emacs.d/")
                   "The root of my personal emacs configuration.")

(require 'cl)

(labels ((add-path (p)
        (when p
              (add-to-list 'load-path (concat emacs-root (car p)))
              (add-path (cdr p)))))

    (add-path '("lisp"            ;; My own ELisp
                "site-lisp"       ;; Interweb ELisp
                "color-theme"     ;; Theming Support
                "jde/lisp"        ;; Java Development
                "cedet"
                "cedet/semantic"
                "cedet/speedbar"
                "cedet/eieio"
                "elib"
                "nxml-mode"       ;; XML Support
               )
    )
)

; Emacs Flavor Specific Setup
(require 'emacs-type)

(load-library "functions")      ;; Personal one-off functions
(load-library "ekeys")          ;; Key bindings and aliases
(load-library "modes")          ;; Mode configuration
(load-library "my-config")      ;; one-off variable settings
(load-library "enabled")        ;; Place to store the functionality I have restored

(put 'scroll-left 'disabled nil)
