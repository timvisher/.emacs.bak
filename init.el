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

(load-library "ekeys") ; Key Bindings and Aliases
(load-library "modes") ; Mode Configuration
(load-library "my-config") ; one-off variable settings
