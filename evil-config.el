(setq evil-search-wrap t)
(setq evil-cross-lines t)
(setq evil-normal-state-cursor '("#e0e0e0" box))
(setq evil-insert-state-cursor '((bar . 3) "#cc3333"))
(setq evil-visual-state-cursor '("#33cc33" box))
(require 'evil)
(evil-mode 1)

(define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
(define-key evil-insert-state-map (kbd "C-c") 'evil-normal-state)
(define-key evil-visual-state-map (kbd "C-c") 'evil-normal-state)
(define-key evil-normal-state-map (kbd ",f") 'helm-projectile-find-file)
(define-key evil-normal-state-map (kbd ",w") 'kill-buffer-and-window)
(define-key evil-normal-state-map (kbd ",e") 'eval-region)
(define-key evil-visual-state-map (kbd ",e") 'eval-region)
(define-key evil-normal-state-map (kbd ",g") 'magit-status)

(require 'evil-mc)
(global-evil-mc-mode 1)
(setq evil-mc-mode-line-prefix "X|")
; evil-mc-undo-all-cursors
; C-n C-p create cursors
; M-n M-p cycle cursors
