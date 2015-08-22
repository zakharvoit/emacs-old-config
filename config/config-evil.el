(package-install 'evil)
(package-install 'evil-leader)

(require 'evil)
(require 'evil-leader)

(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")

(evil-mode)

(provide 'config-evil)
