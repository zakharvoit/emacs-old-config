(add-to-list 'load-path "~/.emacs.d/config")

(defvar needed-langs '(c++
		       rust))

(setq-default
 ;; FIXME: Due to bug in rust 1.2.0 we cannot use company-rust right now
 config/company-langs (remq 'rust needed-langs)
 config/srefactor-langs needed-langs
 config/flycheck-langs needed-langs

 ;; TODO: Detect paths automatically to reduce migration problems
 config/c++-include-paths '("~/.nix-profile/include/c++/4.9.3"
			    "~/.nix-profile/include/c++/4.9.3/x86_64-unknown-linux-gnu")

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

(require 'config-rust)

(require 'config-helm)
(require 'config-company)
(require 'config-srefactor)
(require 'config-flycheck)
(require 'config-projectile)

(require 'evil-magit-rebelion)

;; (require 'config-ede)
