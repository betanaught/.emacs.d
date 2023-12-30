(load-file (expand-file-name
	    (cond ((eq system-type 'windows-nt) "windows.el")
		  ((eq system-type 'gnu/linux) "linux.el")
		  ((eq system-type 'darwin) "darwin.el"))
	    user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("05626f77b0c8c197c7e4a31d9783c4ec6e351d9624aa28bc15e7f6d6a6ebd926" default))
 '(package-selected-packages
   '(flycheck flycheck-checkbashisms flycheck-color-mode-line flycheck-julia flymake-markdownlint flycheck-cfn treemacs-all-the-icons treemacs-icons-dired all-the-icons treemacs-tab-bar treemacs-persp treemacs-magit treemacs dockerfile-mode lsp-jedi lsp-julia lsp-mode company-ansible company-fuzzy company-jedi company-math company-shell company-statistics company-terraform markdown-mode yaml-mode dracula-theme elpy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
