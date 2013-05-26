; Use an 80 character column
(setq-default fill-column 80)

; Make .h headers for Objective-C code use objc-mode.
(add-to-list 'magic-mode-alist
                `(,(lambda ()
                     (and (string= (file-name-extension buffer-file-name) "h")
                          (re-search-forward "@\\<interface\\>" 
					          magic-mode-regexp-match-limit t)))
                  . objc-mode))
