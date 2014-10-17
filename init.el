;;; init.el --- just the main file

;;; Commentary:
;;; Code:
(require 'package)

;; dont open the startup screen
(setq inhibit-startup-message t)

;; save backup files in a seperate folder
(setq backup-directory-alist '(("." . "~/.emacs.d/.saves")))
(add-to-list 'backup-directory-alist
                  (cons tramp-file-name-regexp nil))


;; Set locale to UTF8
(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)



;; add the config directory to the loadpath
(add-to-list 'load-path "/home/jan/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/myplugins")

;; always autoindent to four spaces
(electric-indent-mode +1)
(setq-default c-basic-offset 4)
(setq-default d-basic-offset 4)


;;setup elGet
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))
(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files/")




;; use flycheck
(package-initialize)

(add-hook 'after-init-hook #'global-flycheck-mode)
(provide 'init)

;; Auto Completion

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/jan/.emacs.d/ac-dict")
(ac-config-default)


;;; d-mode
(add-to-list 'load-path "~/.emacs.d/el-get/d-mode/")
(autoload 'd-mode "d-mode" "Major mode for editing D code." t)
(add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))

(require 'flycheck-dmd-dub)
(add-hook 'd-mode-hook 'flycheck-dmd-dub-set-include-path)

;;; ac-dcd
(require 'ac-dcd)
(add-hook 'd-mode-hook 'ac-dcd-setup)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-dcd-executable "/home/jan/.emacs.d/myplugins/DCD/bin/dcd-client")
 '(ac-dcd-server-executable "/home/jan/.emacs.d/myplugins/DCD/bin/dcd-server")
 '(custom-buffer-indent 4)
 '(custom-safe-themes (quote ("3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" default)))
 '(electric-indent-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(load-theme 'zenburn t)

(require 'tree-mode)
(require 'windata)
(require 'dirtree)
(require 'dired+)

;; autoindent
(add-hook 'rust-mode-hook '(lambda ()
      (local-set-key (kbd "RET") 'newline-and-indent)))
