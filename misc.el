; windowsta neotree'yi hizlandirmak icin
(setq inhibit-compacting-font-caches t)

; neotree'de cursor kalmamasi icin
(setq-default cursor-in-non-selected-windows nil)

; https://www.masteringemacs.org/article/working-coding-systems-unicode-emacs
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

; dired'de acilan dosyanin ayni pencerede acilmasi icin
(put 'dired-find-alternate-file 'disabled nil)

(setq ring-bell-function 'ignore)
