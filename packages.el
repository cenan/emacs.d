(setq package-list '(evil tabbar neotree magit editorconfig
			  auto-complete evil-mc monokai-theme
			  projectile rjsx-mode all-the-icons
			  crystal-mode helm helm-projectile helm-ag
			  go-mode rjsx-mode js2-mode emmet-mode))

(package-initialize)
(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t)
  (add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (when (member "Consolas" (font-family-list))
    (add-to-list 'initial-frame-alist '(font . "Consolas-12")))))


; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

