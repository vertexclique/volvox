(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/volvox/custom.el")
(when (file-exists-p custom-file) (load custom-file))

(when (file-exists-p ".passwords") (load ".passwords"))

(load "volvox/lisp")
(load "volvox/global")
(load "volvox/defuns")
(load "volvox/bindings")
(load "volvox/modes")
(load "volvox/theme")
(load "volvox/temp_files")
(load "volvox/github")
(load "volvox/git")
(load "volvox/todo")
;;ruby
(load "volvox/ruby")
(load "volvox/ruby-mode")
(load "volvox/ruby-style")
(load "volvox/rdoc-mode")
(load "volvox/inf-ruby")
(load "volvox/ruby-electric")
(load "volvox/rubydb3x")
(load "volvox/rubydb2x")
;;python
(load "volvox/python")
;;lua
(load "volvox/lua")
;;artist
(load "volvox/artist")
;;dired
(load "volvox/dired")
;;erlang
(load "volvox/erlang")
;;misc
(load "volvox/sgml")
(load "volvox/shell")
(load "volvox/todo")

(when (file-exists-p "volvox/private")
  (load "volvox/private"))

(vendor 'ack)
(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'growl)
(vendor 'twittering-mode)
(vendor 'textile-mode)
(vendor 'yaml-mode)
(vendor 'open-file-in-github)
(vendor 'ooc-mode)
(vendor 'coffee-mode)
(vendor 'lua-mode)
(vendor 'any-ini-mode)
(vendor 'mustache-mode)
(vendor 'scss-mode)
