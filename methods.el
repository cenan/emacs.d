(defun co/open-dot-emacs ()
  "Open .emacs config file."
  (interactive)
  (find-file "~/.emacs"))
(define-key evil-normal-state-map (kbd ",v") 'co/open-dot-emacs)

(defun co/things ()
    "Open things file."
  (interactive)
  (find-file "~/Documents/org/things.org"))
(define-key evil-normal-state-map (kbd ",t") 'co/things)

(defun co/shortcuts ()
    "Open shortcuts help file."
  (interactive)
  (find-file "~/Documents/org/emacs-shortcuts"))

(defun co/beautify-json ()
  "Beautify JSON in selection."
  (interactive)
  (let ((b (if mark-active (min (point) (mark)) (point-min)))
	(e (if mark-active (max (point) (mark)) (point-max))))
    (shell-command-on-region b e
			     "python -mjson.tool" (current-buffer) t)))

(defun eshell-goto-current-dir (&optional arg)
      (interactive "P")
      (let ((dir default-directory))
        (eshell arg)
        (eshell/cd dir)))

(global-set-key "\C-cs" 'eshell-goto-current-dir)

(defun dired-w32explore ()
  "Open Windows Explorer to current file or folder."
  (interactive)
  (w32explore (dired-get-filename nil t)))
(eval-after-load "dired"
  '(define-key dired-mode-map [f12] 'dired-w32explore))

;; Source: http://www.emacswiki.org/emacs-en/download/misc-cmds.el
(defun co/revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)
  (revert-buffer :ignore-auto :noconfirm))

; (define-key evil-normal-state-map (kbd ",r") 'co/revert-buffer-no-confirm)
(global-set-key (kbd "<f5>") 'co/revert-buffer-no-confirm)

(defun co/select-font-dialog ()
  (interactive)
  (insert (prin1-to-string (w32-select-font))))

(defun co/wsl-shell ()
  "Runs wsl shell."
  (interactive)
  (let ((explicit-shell-file-name "C:/Windows/System32/bash.exe"))
    (call-interactively 'shell)))

(defun co/open-scratch-buffer ()
  "Opens the scratch buffer"
  (interactive)
  (switch-to-buffer "*scratch*"))

(define-key evil-normal-state-map (kbd ",s") 'co/open-scratch-buffer)
