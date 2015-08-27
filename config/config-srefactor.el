(require 'config-util)
(require 'cc-mode)

(package-install 'srefactor)

(defun config/srefactor-c++ ()
  (require 'srefactor)
  (semantic-mode)
  (define-key c-mode-base-map (kbd "M-RET") 'srefactor-refactor-at-point)
  )

(config/call-all-with-prefix config/srefactor-langs "config/srefactor-")

(provide 'config-srefactor)
