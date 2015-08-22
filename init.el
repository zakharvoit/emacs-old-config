(add-to-list 'load-path "~/.emacs.d/config")

(setq-default config/company-langs '(c++)
	      config/font "Source Code Pro-10")
	

(require 'config-package)
(require 'config-evil)
(require 'config-defaults)
(require 'config-theme)
(require 'config-powerline)
(require 'config-company)
(require 'config-ede)
