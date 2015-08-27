(require 'recentf)
(recentf-mode)

(evil-leader/set-key (kbd "o") 'recentf-open-files)

(provide 'config-recentf)
