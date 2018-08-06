(setq projectile-mode-line '(:eval (format " PRJ[%s]" (projectile-project-name))))
(setq projectile-switch-project-action 'neotree-projectile-action)
(require 'projectile)
(projectile-global-mode +1)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
(define-key evil-normal-state-map (kbd ",p") 'helm-projectile-switch-project)

; To force the use of external indexing in Windows:
; This can speed up Projectile in Windows significantly. The disadvantage of this method is that it's not well supported on Windows systems. If there's problem, you can always use native indexing mode
(setq projectile-indexing-method 'alien)

; invalidate the cache prior to prompting you for a file to jump to.
; C-u C-c p f

(add-to-list 'projectile-globally-ignored-directories "node_modules")
(add-to-list 'projectile-globally-ignored-directories ".git")

