(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t
      confirm-nonexistent-file-or-buffer nil
      backup-directory-alist '((".*" . "~/.saves"))
      auto-save-file-name-transforms '((".*" "~/.saves" t)))

(electric-pair-mode)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;; (add-to-list 'default-frame-alist '(font . config/font))
(set-frame-font config/font t t)
(print (font-family-list))

(provide 'config-defaults)
