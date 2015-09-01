(require 'config-util)

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
(global-set-key (kbd "C-f") 'company-complete)

(defun config/company-c++ ()
  (package-install 'irony)
  (package-install 'company-irony)
  ;; (package-install 'company-c-headers)
  ;; (semantic-mode)
  ;; (global-semantic-idle-scheduler-mode)
  (add-hook 'c-mode-common-hook (lambda ()
				  (irony-mode)
  				  (make-variable-buffer-local 'company-backends)
  				  (setq company-backends '(;; company-semantic
							   company-irony
  							   ;; company-keywords
  							   ;; company-c-headers
  							   ;; company-dabbrev-code
  							   ))
  				  ))
  )

(config/call-all-with-prefix config/company-langs "config/company-")

(provide 'config-company)
