(require 'tabbar)
(tabbar-mode 1)

(custom-set-variables
 '(tabbar-separator '(1)))
(defun my-tabbar-buffer-groups ()
  (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
	      ((string-equal "magit:" (substring (buffer-name) 0 6)) "magit")
	      ((eq major-mode 'dired-mode) "emacs")
	      (t "user"))))

(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

;; disable org mode shortcuts for alt-left and alt-right
;; https://emacs.stackexchange.com/a/20238/17353
(with-eval-after-load "org"
  (define-key org-mode-map [M-left] nil)
  (define-key org-mode-map [M-right] nil))

(global-set-key [M-left]  'tabbar-backward-tab)
(global-set-key [M-right] 'tabbar-forward-tab)
(global-set-key [M-up]    'tabbar-backward-group)
(global-set-key [M-down]  'tabbar-forward-group)

(global-set-key [(control tab)]               'tabbar-forward)
(global-set-key [(control shift tab)]         'tabbar-backward)
(global-set-key [(control shift iso-lefttab)] 'tabbar-backward)


(set-face-attribute 'tabbar-default nil
		    :inherit nil
		    :height 100
		    :weight 'normal
		    :width 'normal
		    :slant 'normal
		    :underline nil
		    :strike-through nil
		    :stipple nil
		    :background "#272822"
		    :foreground "#8f908a"
		    :box nil
		    :family "Consolas")
;(set-face-attribute
;    'tabbar-default nil
;    :background "gray60")
;(set-face-attribute
;    'tabbar-unselected nil
;    :background "gray85"
;    :foreground "gray30"
;    :box '(:line-width 3 :color "grey80" :style nil))
;    ;;:box nil)
;(set-face-attribute
;    'tabbar-selected nil
;    :background "#f2f2f6"
;    :foreground "black"
;    :box '(:line-width 3 :color "grey95" :style nil))
;    ;;:box nil)
(set-face-attribute 'tabbar-selected nil
		    :background "#666666"
		    :foreground "#f0f0f0"
		    :inherit 'tabbar-default
		    :box '(:line-width 3 :color "#666666" :style nil))

;(set-face-attribute 'tabbar-unselected nil
;		    :inherit 'tabbar-default
;		    :background "#dedede"
;		    :box '(:line-width 3 :color "#dedede" :style nil))

(set-face-attribute 'tabbar-unselected nil
		    :inherit 'tabbar-default
		    :background "#272822"
		    :box '(:line-width 3 :color "#272822" :style nil))

;(setq tabbar-close-tab-button '((:type png :file "close-tab.png")))

;(set-face-attribute
;    'tabbar-button nil
;    :box '(:line-width 1 :color "gray72" :style released-button))

(set-face-attribute 'tabbar-button nil
		    :inherit 'tabbar-default
		    :box nil)

;(setq tabbar-use-images t)

;(set-face-attribute
;    'tabbar-separator nil
;    :height 0.7)

;(set-face-attribute
; 'tabbar-separator nil
; :height 0.7)

(set-face-attribute 'tabbar-separator nil
		    :background "#272822"
 		    :foreground "#272822"
		    :height 1.0)

(setq tabbar-background-color "#272822")
;(setq tabbar-separator-widget 'string-or-width)
;(setq tabbar-separator-value " ")
