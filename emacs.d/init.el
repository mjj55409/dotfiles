
;; load the package system and add some repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-layout-name "left13")
 '(ecb-options-version "2.40")
 '(ede-project-directories (quote ("/home/michael/work/sml/homer" "/home/michael")))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Droid Sans Mono" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)))))

(load-theme 'tango t)

;; No backup files
(setq make-backup-files nil)

;; Load CEDET
(load-file "~/.emacs.d/emacs-rc-cedet.el")

;; Setup line numbering
(require 'linum)
(global-linum-mode 1)
;(setq linum-format “%4d “)

;; c/c++ style setup
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
(setq c-indent-tabs-mode t
      c-toggle-hungry-state t
      c-basic-offset 2)
