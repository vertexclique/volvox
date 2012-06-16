    (defun kts (emacs config)
      "chris wanstrath // chris@ozmm.org"
  
      (git-clone "git://github.com/volvox/emacs.git")
      (ruby "emacs/install.rb")
      (find-file "emacs/local.el")
      (insert '(load "volvox"))
      (save-buffer))
