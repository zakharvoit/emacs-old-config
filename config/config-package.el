(defvar package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			   ("marmalade" .
			    "http://marmalade-repo.org/packages/")
			   ("melpa" .
			    "http://melpa.milkbox.net/packages/")))
(require 'package)
(package-initialize)
(defvar package-archive-contents)
(unless package-archive-contents
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (message "%s" "Done.")
  )

(provide 'config-package)
