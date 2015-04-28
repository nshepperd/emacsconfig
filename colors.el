;; (require 'color-theme)
;; (eval-after-load "color-theme"
;;   '(progn
;;      (color-theme-initialize)
;;      (color-theme-clarity)))
(add-hook 'after-init-hook 
	  (lambda () (load-theme 'cyberpunk t)))
