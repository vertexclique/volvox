(add-to-list 'load-path (expand-file-name "~/.emacs.d") t)

(defun string-starts-with (string prefix)
  "Returns non-nil if string STRING starts with PREFIX, otherwise nil."
  (and (>= (length string) (length prefix))
       (string-equal (substring string 0 (length prefix)) prefix)))

(defadvice display-warning
    (around no-warn-.emacs.d-in-load-path (type message &rest unused) activate)
  "Ignore the warning about the `.emacs.d' directory being in `load-path'."
  (unless (and (eq type 'initialization)
               (string-starts-with message "Your `load-path' seems to contain\nyour `.emacs.d' directory"))
    ad-do-it))

;; You're expected to populate .emacs.d/local.el
;; with your own code. This file is under .gitignore
;; so it won't be version-controlled. The idea is to
;; make this file load other version-controlled files.
(load "local")
