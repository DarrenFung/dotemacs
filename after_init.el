;; Enable projectile
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-systel 'grizzl)
;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-t") 'projectile-find-file)
;; Press Command-b for fuzzy switch buffer
(global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

;; Enable smartparens
;; (smartparens-global-mode)

;; Enable zenburn theme
(load-theme 'zenburn t)

;; Setup jedi
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; Setup helm
(require 'helm-config)
(helm-mode 1)
(require 'helm-projectile)
(helm-projectile-on)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c t") 'helm-multi-occur)

;; Setup anaconda
(add-hook 'python-mode-hook 'anaconda-mode)

;; Setup saveplace
(require 'saveplace)
(setq-default save-place t)

;; Setup tabbar
(tabbar-mode t)
(global-set-key [M-left] 'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)

;; Enable neotree
(global-set-key (kbd "C-c n") 'neotree-toggle)

;; Fill column indicator
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
(setq fci-rule-column 80)
(setq fci-rule-width 1)

;; Setup org JIRA
(setq jiralib-url "https://jira.evbhome.com")
