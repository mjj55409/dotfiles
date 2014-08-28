;;; emacs-rc-ceded.el 
;;; 
;;; CEDED specific configuration
;;;

(load-file "~/src/cedet/cedet-devel-load.el")

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)

;; Enable Semantic
(semantic-mode 1)

(require 'semantic/ia)

(require 'semantic/bovine/gcc)

(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)

;; Enable GNU Global
(when (cedet-gnu-global-version-check t)
  (semanticdb-enable-gnu-global-databases 'c-mode)
  (semanticdb-enable-gnu-global-databases 'c++-mode))

;; Enable EDE (Project Management) features
(global-ede-mode t)


;; Load ECB
(add-to-list 'load-path "/home/michael/src/ecb")
(require 'ecb)
