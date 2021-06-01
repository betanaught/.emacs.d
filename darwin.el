;; Initialization file for Emcas running on macOS (e-lisp)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
;(setq backup-by-copying-when-linked t)

