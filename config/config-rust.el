(package-install 'rust-mode)

(defun config/company-rust ()
  (package-install 'company-racer)
  (add-hook 'rust-mode-hook (lambda ()
			      (make-variable-buffer-local 'company-backends)
			      (setq company-backends '(company-racer
						       company-keywords
						       company-dabbrev-code))
			      )
	    )
  )

(defun config/flycheck-rust ()
  (package-install 'flycheck-rust)
  (add-hook 'rust-mode-hook 'flycheck-mode)
  )

(provide 'config-rust)
