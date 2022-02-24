
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
; (elpy-enable)
(require 'ido)
(require 'popup)

(ido-mode t)
;Following line is not needed if python.exe is in your PATH variable:
;(setq python-shell-interpreter "python")
; (add-hook 'python-mode-hook 'jedi:setup)
; (setq jedi:complete-on-dot t)

(global-display-line-numbers-mode)

; (setenv "WORKON_HOME" "C:/Users/bwakefield/.conda/envs")
(setq backup-directory-alist `(("." . "~/.emacs.d/emacs.saves")))
(setq backup-by-copying t)
;(setq backup-by-copying-when-linked t)

;-------------------------------------------------------------------------------
;; SET EMACS THEME AND FONT:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages (quote (c-eldoc jedi elpy python))))
(custom-set-faces
 '(default ((t (:family "Cascadia Mono" :foundry "outline" :slant normal :weight normal :height 98 :width normal))))
 )
