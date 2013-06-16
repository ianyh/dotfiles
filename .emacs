; Load up custom local elisp
(add-to-list 'load-path (expand-file-name "~/bin/el"))

; Use an 80 character column
(setq-default fill-column 80)

; Don't use tabs
(setq-default indent-tabs-mode nil)

; Use .Trash for backup files
(setq backup-directory-alist '((".*" . "~/.Trash")))

; Make .h headers for Objective-C code use objc-mode.
(add-to-list 'magic-mode-alist
                `(,(lambda ()
                     (and (string= (file-name-extension buffer-file-name) "h")
                          (re-search-forward "@\\<interface\\>" 
					          magic-mode-regexp-match-limit t)))
                  . objc-mode))

; Load markdown mode and use it for .md and .markdown
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; Load sass mode and use it for scss files.
(autoload 'sass-mode "sass-mode" "Major mode for editing sass" t)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))

; Use ruby mode for Podfiles and Rakefiles
(add-to-list 'auto-mode-alist '("Podfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))

; Load json mode
(autoload 'json-mode "json-mode" "Major mode for editing json" t)
