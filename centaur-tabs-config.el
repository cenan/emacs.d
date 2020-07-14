(centaur-tabs-mode t)

;; disable org mode shortcuts for alt-left and alt-right
;; https://emacs.stackexchange.com/a/20238/17353
(with-eval-after-load "org"
  (define-key org-mode-map [M-left] nil)
  (define-key org-mode-map [M-right] nil))

(global-set-key [C-prior]  'centaur-tabs-backward-tab)
(global-set-key [C-next] 'centaur-tabs-forward-tab)
(global-set-key [M-left]  'centaur-tabs-backward-tab)
(global-set-key [M-right] 'centaur-tabs-forward-tab)
(global-set-key [M-up]    'centaur-tabs-forward-group)
(global-set-key [M-down]  'centaur-tabs-backward-group)

(setq centaur-tabs-height 32)
(setq centaur-tabs-style "rounded")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-gray-out-icons 'buffer)
(setq centaur-tabs-set-bar 'over)
;; (setq x-underline-at-descent-line t)
(setq centaur-tabs-set-modified-marker t)
(setq centaur-tabs-modified-marker "*")

;; You can group your tabs by Projectile’s project. Just use the following function in your configuration:
(centaur-tabs-group-by-projectile-project)
;; This function can be called interactively to enable Projectile grouping. To go back to centaur-tabs’s user defined (or default) buffer grouping function you can interactively call:
;; (centaur-tabs-group-buffer-groups)

