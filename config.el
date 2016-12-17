;; Get rid of useless messages
;; (setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)

(set-default-font "Terminus-18")

;; Undo-tree
(add-hook 'after-init-hook
	  (lambda () (global-undo-tree-mode)))

;; === Stuff already in better-defaults ===

;; (require 'uniquify)
;; (setq uniquify-buffer-name-style 'forward)

;; ;; Get rid of the menu bars
;; (tool-bar-mode 0)
;; (menu-bar-mode 0)
;; ;; Get rid of the scroll bar
;; (scroll-bar-mode 0)

;; stop open-file from searching in random directories being a little shit
(setq ido-auto-merge-work-directories-length -1)
