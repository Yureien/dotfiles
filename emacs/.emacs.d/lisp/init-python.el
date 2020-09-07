;;; init-python.el --- Setup Python mode

;; Use Python 3 ffs
(eval-and-compile
  (if (executable-find "python3")
      (setq python-shell-interpreter "python3")
    (if (executable-find "python3.8")
        (setq python-shell-interpreter "python3.8")
      (message "Failed to find Python 3 intepreter"))))

(eval-and-compile
  (setq flycheck-python-pycompile-executable python-shell-interpreter)
  (setq flycheck-python-flake8-executable python-shell-interpreter)
  (setq flycheck-python-pylint-executable python-shell-interpreter)
  (setq org-babel-python-command python-shell-interpreter)
  (setq python-shell-completion-native-enable 'nil))


(use-package live-py-mode)

(provide 'init-python)