;; Initialization file for Emcas running on macOS (e-lisp)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'ido)
(ido-mode t)
(elpy-enable)
(setq python-shell-interpreter "/usr/local/bin/python3")
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(global-display-line-numbers-mode t)
(global-visual-line-mode t)

(setq backup-directory-alist `(("." . "~/.emacs.d/emacs.saves")))
(setq backup-by-copying t)
;(setq backup-by-copying-when-linked t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(markdown-mode elpy)))
 '(package-selected-packages '(ess markdown-mode elpy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

