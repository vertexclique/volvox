# 
# After a fresh clone. For volvox.
#

File.open('local.el', 'w') do |f|
  f.puts '(load "volvox")'
  f.puts '(autoload \'markdown-mode "markdown-mode.el"
  				  "Major mode for editing Markdown files" t)
		      (setq auto-mode-alist
				    (cons \'("\\.md" . markdown-mode) auto-mode-alist))'
  f.puts '(require \'mustache-mode)'
  f.puts '(require \'any-ini-mode)'
  f.puts '(autoload \'js2-mode "js2" nil t)
  		      (add-to-list \'auto-mode-alist \'("\\.js$" . js2-mode))'
  f.puts '(require \'magit)'
  f.puts '(autoload \'mode-compile "mode-compile"
		        "Command to compile current buffer file based on the major mode" t)'
  f.puts '(autoload \'scss-mode "scss-mode")
  		      (add-to-list \'auto-mode-alist \'("\\.scss\\\'" . scss-mode))'
  f.puts '(require \'textmate)
            (textmate-mode)'
  f.puts '(require \'yaml-mode)
            (add-to-list \'auto-mode-alist \'("\\.yml$" . yaml-mode))'
  
end

puts "\n\nDon't forget to do:"
puts "M-x byte-compile-file <RET> ~/.emacs.d/vendor/js2.el <RET>"
puts "Wait for compiling and reload the emacs again, this will prepare js2-mode\n"
