Emacs Configuration Files: init.el -> windows.el || linux.el || darwin.el

by Brendan Wakefield (2021)

### Useful Information

I like to use Emacs as an IDE for Python/R/Julia, so most of my configuration file is set up to accomodate this. I use the [MELPA](https://melpa.org/) package repository (necessary to get elpy), and things have been much easier since Emacs 26.3 was released. So check your Emacs version if you're trying to clone this setup.

### Description
Package Archive: MELPA

Packages Loaded: elpy, jedi, ido, markdown

Modes Eneabled:
```
(global-display-line-numbers-mode)
(global-visual-line-mode)
(ido-mode)
```
#### `python` on Arch Linux
The default python shell interpreter (`which python`) is set to /usr/bin/python, as this is python3 in Arch Linux.
```
(setq python-shell-interpreter "/usr/local/bin/python3")
```
should be changed to the output of `which python3` to work with Python 3.x.x in non-Arch *nix distributions.

#### Emacs Backup Files
I also have changed the location of where my backup files go:
```
(setq backup-directory-alist `(("." . "~/.emacs.d/emacs.saves")))
(setq backup-by-copying t)
```
changes the location of all my backup files to a directory within my .emacs.d folder.

#### OS-Dependent Init Files

I use different initialization files depending on which operating system I am using, so my init.el file directs emacs to load from either windows.el or linux.el:
```
(load-file (expand-file-name
	    (cond ((eq system-type 'windows-nt) "windows.el")
	    	  ((eq system-type 'gnu/linux) "linux.el")
		  ((eq system-type 'darwin) "darwin.el))
	     user-emacs-directory))
```
