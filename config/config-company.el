(package-install 'company)
(package-install 'company-quickhelp)
(require 'company)

(setq-default
 company-idle-delay 0.1
 company-minimum-prefix-length 1
 )

(global-company-mode)
(company-quickhelp-mode)

(global-set-key (kbd "M-j") 'company-select-next)
(global-set-key (kbd "M-k") 'company-select-previous)

(defun config/company-c++ ()
  (package-install 'company-c-headers)
  (semantic-mode 1)
  (global-semantic-idle-scheduler-mode)
  (add-hook 'c-mode-common-hook (lambda ()
				  (make-variable-buffer-local 'company-backends)
				  (setq company-backends '(company-semantic
							   company-keywords
							   company-c-headers
							   company-dabbrev-code
							   ))
				  ))
  )

;; Setup languages for all additional languages
(dolist (lang config/company-langs)
  (let ((function-name (concat "config/company-" (symbol-name lang))))
    (funcall (intern function-name))
    )
  )

(provide 'config-company)
