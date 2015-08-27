(package-install 'projectile)
(package-install 'helm-projectile)
(require 'projectile)
(require 'helm-projectile)

(projectile-global-mode)
(evil-leader/set-key (kbd "pp") 'helm-projectile)
(evil-leader/set-key (kbd "h") 'projectile-find-other-file)

(provide 'config-projectile)
