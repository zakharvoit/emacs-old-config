(package-install 'helm)

(helm-mode 1)
(evil-leader/set-key (kbd "o") 'helm-find-files)
(define-key helm-map (kbd "M-j") 'helm-next-line)
(define-key helm-map (kbd "M-k") 'helm-previous-line)

(provide 'config-helm)
