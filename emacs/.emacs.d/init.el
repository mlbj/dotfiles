
;;; init.el --- Minimal Emacs configuration

;; Package management
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/")
             t)

(package-initialize)

;; Hide non-error warnings from the *Warnings* buffer
(setq warning-minimum-level :error)


;;; Evil mode (Vim-like editing)

(require 'evil)
(evil-mode 1)


;;; Markdown editing

(require 'markdown-mode)

;; Recognize Markdown files
(add-to-list 'auto-mode-alist
             '("\\.md\\'" . markdown-mode))

;; Wrap long lines visually
(add-hook 'markdown-mode-hook #'visual-line-mode)


;;; Markdown browser preview

(autoload 'markdown-preview-mode
  "markdown-preview-mode" nil t)

;;; init.el ends here

