(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward)
(set-default-font "Terminus-10")

(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))

(require 'tup-mode)

;; Get rid of the menu bars
(tool-bar-mode 0)
(menu-bar-mode 0)
;; Get rid of the scroll bar
(scroll-bar-mode 0)
;; Get rid of useless messages
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-screen t)
