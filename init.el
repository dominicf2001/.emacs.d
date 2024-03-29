(require 'org)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; start emacs server
(server-start)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (eval-when-compile
    (unless (bound-and-true-p package--initialized)
      (package-initialize))  ;; be sure load-path includes package directories
    (require 'use-package)))

;; Set org babel's load file
(org-babel-load-file "/home/dominic/.emacs.d/config.org")

;; Load nerd icons
(add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter)

;; ---------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f366d4bc6d14dcac2963d45df51956b2409a15b770ec2f6d730e73ce0ca5c8a7" default))
 '(package-selected-packages
   '(vertico-directory marginalia vertico xresources-theme lsp-pyright go-mode flycheck typescript-mode nerd-icons-corfu corfu yasnippet-snippets yasnippet lsp-ido tree-sitter-langs tree-sitter zenburn-theme zenburn geiser-mit cmake-mode use-package))
 '(warning-suppress-log-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-string-face ((t (:foreground "medium sea green"))))
 '(highlight ((t (:background "gray18"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "orange"))))
 '(region ((t (:extend t :background "gray18")))))
