;; git stuff
;; experimental
;; depends on textmate.el as it
;; share's textmate.el's concept of
;; a project root

(defun volvox-git-modeline ()
  (interactive)
  (let ((root (textmate-project-root)))
    (when (file-directory-p (concat root ".git"))
      (volvox-set-mode-line (concat "Git: " (volvox-git-current-branch root)))
      (force-mode-line-update t))))

(defun volvox-set-mode-line (mode-line)
  ;; this has to be built in...
  (setq mode-line-format
        (append
         (butlast mode-line-format (- (length mode-line-format) 8))
         (cons mode-line (nthcdr 8 mode-line-format)))))

(defun volvox-git-current-branch (root)
  (let ((result) (branches
         (split-string
          (shell-command-to-string
           (concat
            "git --git-dir="
            root
            ".git branch --no-color"))
          "\n" t)))
    (while (and branches (null result))
      (if (string-match "^\* \\(.+\\)" (car branches))
          (setq result (match-string 1 (car branches)))
        (setq branches (cdr branches))))
    result))

;; (add-hook 'find-file-hook 'volvox-git-modeline)
;; (add-hook 'dired-after-readin-hook 'volvox-git-modeline)