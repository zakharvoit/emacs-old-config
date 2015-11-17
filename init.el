(add-to-list 'load-path "~/.emacs.d/config")

(defvar needed-langs '(c++
		       ))

(setq-default
 config/company-langs needed-langs
 config/srefactor-langs needed-langs
 config/flycheck-langs needed-langs

 config/c++-include-paths '("/usr/include/c++/5.2.0")

 ;; FIXME: Due to some bugs with emacs server, for now this will not take effect
 config/font "Source Code Pro-10"

 magit-rigid-key-bindings
 )

(require 'config-package)
(require 'config-evil)
(require 'config-defaults)
(require 'config-theme)
(require 'config-powerline)
(require 'config-recentf)

;; (require 'config-rust)

(require 'config-helm)
(require 'config-company)
;; (require 'config-srefactor)
(require 'config-flycheck)
(require 'config-projectile)

;; (require 'evil-magit-rebelion)

;; (require 'config-ede)
