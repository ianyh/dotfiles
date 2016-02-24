; Load up custom local elisp
(add-to-list 'load-path (expand-file-name "~/bin/el"))

; Use an 80 character column
(setq-default fill-column 80)

; Display tabs as width 2
(setq tab-width 4)

; Use .Trash for backup files
(setq backup-directory-alist '((".*" . "~/.Trash")))
