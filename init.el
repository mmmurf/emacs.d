
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/elpa")


(setq package-archives
      '(("original"    . "http://tromey.com/elpa/")
        ("gnu"         . "http://elpa.gnu.org/packages/")
        ("marmalade"   . "http://marmalade-repo.org/packages/")
        ("melpa"       . "http://melpa.milkbox.net/packages/")))


(setq-default indent-tabs-mode nil)

(when (null package-archive-contents)
  (package-refresh-contents))

(tool-bar-mode -1)

; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
;(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
;(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
;(setq scroll-step 1) ;; keyboard scroll one line at a time

(global-font-lock-mode 1)

;(add-hook 'before-save-hook 'delete-trailing-whitespace)



(defun fontify-frame (frame)
  ;;(set-frame-parameter frame 'font "Inconsolata-15"))
  (set-frame-parameter frame 'font "Monaco-13"))
  ;;(set-frame-parameter frame 'font "Liberation Mon-14"))

;;(set-frame-parameter frame 'font "Monospace-15"))


;; Fontify current frame
(fontify-frame nil)
;; Fontify any future frames
(push 'fontify-frame after-make-frame-functions)


(setq auto-mode-alist  (cons '("Rakefile$" . ruby-mode) auto-mode-alist))

(setq default-frame-alist
      '((top . 40) (left . 40)
        (width . 160) (height . 46)))



(setq initial-frame-alist '((top . 0) (left . 0)))




;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes (quote ("bd39df75371ce79b6777f77a3bf717acb7929ced" default))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)


;;; (setq erc-autojoin-channels-alist '(("freenode.net" "#emacs" "#erc")))


;;;(add-to-list 'gnus-secondary-select-methods '(nnimap "gmail"
;;;                                  (nnimap-address "imap.gmail.com")
;;;                                  (nnimap-server-port 993)
;;;                                  (nnimap-stream ssl)))


;;;(setq message-send-mail-function 'smtpmail-send-it
;;;      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;;      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "mmmurf@gmail.com" nil))
;;;      smtpmail-default-smtp-server "smtp.gmail.com"
;;;      smtpmail-smtp-server "smtp.gmail.com"
;;;      smtpmail-smtp-service 587
;;;      smtpmail-local-domain "local")

(server-start)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
