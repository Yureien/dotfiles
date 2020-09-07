;;; init-sh.el --- Setup shell mode

;; Add the bash scripts that don't end in proper extension.
(add-to-list
 'auto-mode-alist
 '("PKGBUILD" . sh-mode))

;; Language server for shell
;; System installation: `npm i -g bash-language-server`
;; Disabled because well, scripts aren't projects most of the time.
;; (use-package lsp-mode
;;   :commands lsp
;;   :hook
;;   (sh-mode . lsp))


(provide 'init-sh)
