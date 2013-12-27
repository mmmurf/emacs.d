(deftheme matt
  "matt")

(custom-theme-set-variables
 'matt
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/")))))

(provide-theme 'matt)
