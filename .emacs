; Load up custom local elisp
(add-to-list 'load-path (expand-file-name "~/bin/el"))
(add-to-list 'load-path (expand-file-name "~/bin/el/scala-mode2"))

(require 'scala-mode2)

; Use an 80 character column
(setq-default fill-column 80)

; Use 2 character indent for javascript
(setq-default js-indent-level 2)

; Don't use tabs
(setq-default indent-tabs-mode nil)

; Display tabs as width 2
(setq tab-width 2)

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

; Load yaml mode
(autoload 'yaml-mode "yaml-mode" "Major mode for editing yaml" t)
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

; Load php mode
(autoload 'php-mode "php-mode" "Major mode for editing PHP" t)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

; Load web mode
(autoload 'web-mode "web-mode" "Major mode for editing web app templates" t)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

; Load slim mode
(autoload 'slim-mode "slim-mode" "Major mode for editing slim templates" t)
(add-to-list 'auto-mode-alist '("\\.slim\\'" . slim-mode))

; Load scala mode
(autoload 'scala-mode "scala-mode" "Major mode for editing Scala" t)
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))
