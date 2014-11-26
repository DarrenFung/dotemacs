(add-to-list 'load-path (expand-file-name  "~/.emacs.d/plugins/fringe-helper.el"))

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

;; Setup backup files
(setq backup-directory-alist `(("." . "~/.backups")))
(setq backup-by-copying t)

;; Setup save places
(setq save-place-file "~/.emacs.d/saved-places")

(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/after_init.el")))

;; Disable menubar
(menu-bar-mode -1)

;; Setup recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
