Emacs Configuration File: init.el

by Brendan Wakefield (2019)

### Useful Information

I primarily use Emacs as a Python IDE, so most of my configuration file is
set up to accomodate this. I use the [MELPA](https://melpa.org/) package
repository (necessary to get elpy), and things have been much easier since
Emacs 26.3 was released. So check your Emacs version if you're trying to
clone my setup.

### Description

Package Archive: MELPA

Packages Loaded: elpy, jedi, ido

Modes Eneabled:
```
(global-display-line-numbers-mode)
(ido-mode)
```
#### Emacs Backup Files

I also have changed the location of where my backup files go:
```
(setq backup-directory-alist `(("." . "~/.emacs.d/emacs.saves")))
(setq backup-by-copying t)
```
changes the location of all my backup files to a directory within my
.emacs.d folder.