;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; ADD MELPA --------------------------------------------------------------
(require 'package)
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives
	     '("melpa-stable"
	       . "https://stable.melpa.org/packages/"))
(package-initialize)

;; -----------------------------------------------------------------------------
;; PACKAGES
;; -----------------------------------------------------------------------------

(custom-set-variables
  '(custom-safe-themes
    '("05626f77b0c8c197c7e4a31d9783c4ec6e351d9624aa28bc15e7f6d6a6ebd926" default))
  '(package-selected-packages
    '(flycheck;
      flycheck-checkbashisms;
      flycheck-color-mode-line;
      flycheck-julia;
      flymake-markdownlint;
      flycheck-cfn;
      treemacs-all-the-icons;
      treemacs-icons-dired;
      all-the-icons;
      treemacs-tab-bar;
      treemacs-persp;
      treemacs-magit;
      treemacs;
      dockerfile-mode;
      lsp-jedi ;
      lsp-julia ;
      lsp-mode ;
      company-ansible ;
      company-fuzzy ;
      company-jedi ;
      company-math ;
      company-shell ;
      company-statistics ;
      company-terraform ;
      markdown-mode ;
      yaml-mode ;
      dracula-theme ;
      elpy)))

(custom-set-faces
;;
)

(require 'use-package)
;; -----------------------------------------------------------------------------
;; MODES
;; -----------------------------------------------------------------------------
(require 'ido)
(ido-mode t)
(global-display-line-numbers-mode)
(delete-selection-mode 1)
;; backups -----------------------------
(setq backup-directory-alist `(("." . "~/.emacs.d/emacs.saves")))
(setq backup-by-copying t)
;; (setq backup-by-copying-when-linked t)
;; shell -------------------------------
(setq sh-basic-offset 2)
(setq sh-indentation 2)
(setq smie-indent-basic 2)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.2")
;; https://github.com/melpa/melpa/issues/7238

;; -----------------------------------------------------------------------------
;; PYTHON MODE
;; -----------------------------------------------------------------------------
(elpy-enable)
(setq python-shell-interpreter "/usr/bin/python")
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; -----------------------------------------------------------------------------
;; YAML MODE
;; -----------------------------------------------------------------------------

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
 '(lambda ()
   (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; -----------------------------------------------------------------------------
;; FLYCHECK
;; -----------------------------------------------------------------------------

(require 'flycheck)
; https://www.flycheck.org/en/latest/user/quickstart.html
(add-hook 'after-init-hook #'global-flycheck-mode)
(require 'flycheck-cfn)

;; -----------------------------------------------------------------------------
;; CUSTOM MODES and THEME
;; -----------------------------------------------------------------------------

(load-theme 'dracula t)

(load "~/.emacs.d/cfn-mode.el")
; https://github.com/emacsmirror/cfn-mode
; https://github.com/stelligent/cfn_nag
(load "~/.emacs.d/treemacs.el")
; https://github.com/Alexander-Miller/treemacs#configuration

; ESS

(add-to-list 'load-path "/usr/share/emacs/site-lisp/elpa-src/ess-18.10.2")
