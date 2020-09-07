;;; init-lsp.el --- Language Server Protocol ftw

(setq lsp-keymap-prefix "C-c l")

(use-package lsp-mode
  :hook
  (lsp-mode . lsp-enable-which-key-integration))

(use-package lsp-ui
  :after lsp-mode)

(use-package lsp-ivy
  :after lsp-mode ivy)

(use-package lsp-treemacs
  :after lsp-mode treemacs)

(provide 'init-lsp)
