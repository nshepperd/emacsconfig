;; PHP
(autoload 'php-mode "php-mode.el" "Php mode." t)
(setq auto-mode-alist (append '(("/.*\\.php[345]?$" . php-mode)) auto-mode-alist))
