(defun open-dot-emacs ()
  "Open .emacs config file."
  (interactive)
  (find-file "~/.emacs"))
(define-key evil-normal-state-map (kbd ",v") 'open-dot-emacs)

(defun shortcuts ()
    "Open shortcuts help file."
  (interactive)
  (find-file "~/Dropbox/docs/emacs-shortcuts"))

(defun beautify-json ()
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
