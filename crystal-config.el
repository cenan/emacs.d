(global-set-key (kbd "<f6>") 'crystal-spec-all)
(global-set-key "\C-ct" 'crystal-spec-all)

(load-file "~/.emacs.d/flycheck-crystal.el")
(require 'flycheck-crystal)
(add-hook 'crystal-mode-hook 'flycheck-mode)
