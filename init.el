(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Setup line numbers
(global-linum-mode t)
(setq linum-format "%d ")

;; Global highlighting
(global-font-lock-mode)

;; Show matching parenthesis
(show-paren-mode)

;; Setup backup files and autosave
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
(setq backup-by-copying t)

;; Setup save places
(setq save-place-file "~/.emacs.d/saved-places")

;; Disable menubar
(menu-bar-mode -1)

;; Delete trailing whitespace before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Load after-init file
(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/after_init.el")))
