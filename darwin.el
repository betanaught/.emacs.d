;; Initialization file for Emcas running on macOS (e-lisp)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(require 'ido)
(ido-mode t)
;; (elpy-enable)
;; (setq python-shell-interpreter "/usr/local/bin/python3")
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)

;; WHEN READY FOR JEDI:
;; https://github.com/pyenv/pyenv-virtualenv?tab=readme-ov-file#activate-virtualenv

;; (global-display-line-numbers-mode t)
;; (global-visual-line-mode t)

(setq backup-directory-alist `(("." . "~/.emacs.d/emacs.saves")))
(setq backup-by-copying t)
;;(setq backup-by-copying-when-linked t)
;; sh-mode
;; (setq sh-basic-offset 2)
;; (setq sh-indentation 2)
;; (setq smie-indent-basic 2)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("603a831e0f2e466480cdc633ba37a0b1ae3c3e9a4e90183833bc4def3421a961"
     default))
 '(package-selected-packages
   '(cfn-mode
     elpy ess markdown-mode treemacs treemacs-icons-dired
     treemacs-magit treemacs-persp treemacs-projectile treemacs-tab-bar
     yaml-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; -----------------------------------------------------------------------------
;; YAML MODE
;; -----------------------------------------------------------------------------

;; https://github.com/yoshiki/yaml-mode/tree/master
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
 '(lambda ()
   (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; -----------------------------------------------------------------------------
;; CUSTOM MODES and THEME
;; -----------------------------------------------------------------------------

(add-to-list 'custom-theme-load-path "/opt/homebrew/share/emacs/site-lisp/emacs-dracula")
(load-theme 'dracula)

; (load "~/.emacs.d/cfn-mode.el")
; https://github.com/emacsmirror/cfn-mode
; https://github.com/stelligent/cfn_nag
(load "~/.emacs.d/treemacs.el")
; https://github.com/Alexander-Miller/treemacs#configuration

;; -----------------------------------------------------------------------------
; ESS
(load "ess-autoloads")


