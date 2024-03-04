(require 'package)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(use-package evil
  :ensure t
  :config
    (evil-mode)
    (evil-set-undo-system 'undo-redo))

;; Agda
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

(setq initial-frame-alist
  (append initial-frame-alist
    '((top    .   1)
      (width  . 120)
      (height .  68))))

(load-theme 'adwaita)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ignored-local-variable-values '((eval turn-off-auto-fill)))
 '(package-selected-packages '(evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
