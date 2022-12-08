;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; ADD MELPA --------------------------------------------------------------
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(require 'ido)
(ido-mode t)
(elpy-enable)
(setq python-shell-interpreter "/usr/bin/python")
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(global-display-line-numbers-mode)

(setq backup-directory-alist `(("." . "~/.emacs.d/emacs.saves")))
(setq backup-by-copying t)
;;(setq backup-by-copying-when-linked t)
;; sh-mode
;; sh-mode
(setq sh-basic-offset 2)
(setq sh-indentation 2)
(setq smie-indent-basic 2)

(custom-set-variables
 '(package-selected-packages '(markdown-mode elpy)))
(custom-set-faces)
