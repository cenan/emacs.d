(require 'neotree)

(global-set-key [f8] 'neotree-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(define-key evil-normal-state-map (kbd ",n") 'neotree-find)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-confirm-create-file 'off-p)
(setq neo-create-file-auto-open t)
