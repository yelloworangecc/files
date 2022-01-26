(server-start)
(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-list-file-prefix "~/.emacs.d/backup/")
 '(backup-directory-alist '(("." . "~/.emacs.d/backup/")))
 '(cua-mode t nil (cua-base))
 '(global-linum-mode t)
 '(inhibit-startup-screen t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(set-fontset-font "fontset-default" 'chinese-gbk "Microsoft YaHei UI")
(add-to-list 'load-path "~/.emacs.d/lisp/")

; cmake-mode
(autoload 'cmake-mode "cmake-mode" "Major mode for editing CMake files" t)
(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . cmake-mode))
(add-to-list 'auto-mode-alist '("\\.cmake\\'" . cmake-mode))

; markdown-mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

(require 'unicad)
(setq default-tab-width 4)
(setq c-basic-offset 4)
(setq c-default-style "linux")
(global-visual-line-mode 1)
(setq org-src-fontify-natively t)
(with-eval-after-load 'org
  (add-to-list 'org-export-backends 'md))

(setq system-time-locale "C")
