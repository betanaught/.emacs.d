(load-file (expand-file-name
	    (cond ((eq system-type 'windows-nt) "windows.el")
		  ((eq system-type 'gnu/linux) "linux.el"))
	    user-emacs-directory))

