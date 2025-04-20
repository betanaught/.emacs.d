(load-file (expand-file-name
	    (cond ((eq system-type 'windows-nt) "windows.el")
		  ((eq system-type 'gnu/linux) "linux.el")
		  ((eq system-type 'darwin) "darwin.el"))
	    user-emacs-directory))

