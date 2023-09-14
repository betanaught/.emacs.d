(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (setq use-package-always-ensure t)
   (require 'use-package)))

(set-face-attribute
 'default
 nil
 :family "Source Code Pro"
 :height 200
 :weight 'medium
 :width 'normal
 (use-package sweet-theme :ensure t :init (load-theme 'sweet t))
 (too-bar-mode 0)
 (menu-bar-mode 0)


(require 'ido)
(ido-mode t)
(global-display-line-numbers-mode)
(delete-selection-mode 1)
;; backups -----------------------------
(setq backup-directory-alist `(("." . "~/.emacs.d/emacs.saves")))
(setq backup-by-copying t)
;; (setq backup-by-copying-when-linked t)
;; shell -------------------------------
;; (setq sh-basic-offset 2)
;; (setq sh-indentation 2)
;; (setq smie-indent-basic 2)
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.2")
;; https://github.com/melpa/melpa/issues/7238

