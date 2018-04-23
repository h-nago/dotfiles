;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(keyboard-translate ?\C-h ?\C-?)
(require 'cask "~/.cask/cask.el")
;; (require 'cask) ;; for mac
(cask-initialize)
(load-theme 'manoj-dark t)

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.erb"       . web-mode))
(add-to-list 'auto-mode-alist '("\\.html"     . web-mode))

(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-tag-auto-close-style 2)
  )
(add-hook 'web-mode-hook 'web-mode-hook)

(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(setq-default indent-tabs-mode nil)

(setq ruby-insert-encoding-magic-comment nil)

(setq nginx-indent-level 2)

(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
(setq js-indent-level 2)

(add-to-list 'auto-mode-alist '(".*\\.js\\'" . rjsx-mode))
(add-hook 'rjsx-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil) ;;インデントはタブではなくスペース
            (setq js-indent-level 2) ;;スペースは２つ、デフォルトは4
            (setq js2-strict-missing-semi-warning nil))) ;;行末のセミコロンの警告はオフ

(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq-default)
            (setq tab-width 2)
            (setq standard-indent 2)
            (setq indent-tabs-mode nil)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (package-build shut-up epl git commander f dash s))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
