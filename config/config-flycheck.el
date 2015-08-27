(require 'config-util)

(package-install 'flycheck)

(evil-leader/set-key (kbd "fl") 'flycheck-list-errors)
(evil-leader/set-key (kbd "fj") 'flycheck-next-error)
(evil-leader/set-key (kbd "fk") 'flycheck-previous-error)

(defun config/flycheck-c++ ()
  (setq-default flycheck-clang-include-path config/c++-include-paths)
  (add-hook 'c-mode-common-hook 'flycheck-mode)
  )

(config/call-all-with-prefix config/flycheck-langs "config/flycheck-")

(provide 'config-flycheck)
