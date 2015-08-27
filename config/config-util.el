(defun config/call-all-with-prefix (funcs prefix)
  "Call all functions from funcs, concatenating their names with prefix."
  (dolist (f funcs)
    (let ((function-name (intern (concat prefix (symbol-name f)))))
      (when (fboundp function-name)
	(funcall function-name)
	)
      )
    )
  )

(provide 'config-util)
