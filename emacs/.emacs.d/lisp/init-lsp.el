;;; init-lsp.el --- Language Server Protocol ftw

(use-package lsp-mode
  :init
  (setq lsp-completion-provider :capf)
  (setq lsp-keymap-prefix "C-c l")
  :hook
  (lsp-mode . lsp-enable-which-key-integration))

(use-package lsp-ui
  :after lsp-mode)

(use-package lsp-ivy
  :after lsp-mode ivy)

(use-package lsp-treemacs
  :after lsp-mode treemacs)

(provide 'init-lsp)
