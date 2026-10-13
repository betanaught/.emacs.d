;; -*- lexical-binding: t; -*-
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
   '("9c6aa7eb1bde73ba1142041e628827492bd05678df4d9097cda21b1ebcb8f8b9"
     "603a831e0f2e466480cdc633ba37a0b1ae3c3e9a4e90183833bc4def3421a961"
     default))
 '(package-selected-packages
   '(cfn-mode elpy ess julia-ts-mode markdown-mode treemacs
	      treemacs-icons-dired treemacs-magit treemacs-persp
	      treemacs-projectile treemacs-tab-bar yaml-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
