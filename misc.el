; start emacs maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))
					;
; windowsta neotree'yi hizlandirmak icin
(setq inhibit-compacting-font-caches t)

; neotree'de cursor kalmamasi icin
(setq-default cursor-in-non-selected-windows nil)

; https://www.masteringemacs.org/article/working-coding-systems-unicode-emacs
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

; dired config
; dired'de acilan dosyanin ayni pencerede acilmasi icin
(put 'dired-find-alternate-file 'disabled nil)
; (add-hook 'dired-mode-hook
;	  (lambda ()
;	    (define-key dired-mode-map (kbd "^")
;	      (lambda () (interactive) (find-alternate-file "..")))
;					; was dired-up-directory
;	    ))

(setq ring-bell-function 'ignore)

(require 'auto-complete-config)
(ac-config-default)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; (line-number-mode 1)
(global-display-line-numbers-mode)
; show 3 digits on the line number gutter
(setq-default display-line-numbers-width 3)

(setq scroll-step 1)
; Highlight matching paranthesis
(show-paren-mode 1)

(setq visibile-bell 1)
(global-hl-line-mode +1)

(load-theme 'monokai t)

(setq auto-save-default nil)

(require 'helm-config)
(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "<f5>") 'revert-buffer)

