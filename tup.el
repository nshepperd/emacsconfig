(autoload 'tup-mode "tup-mode.el" "Tup mode." t)
(setq auto-mode-alist (cons '("/Tupfile$" . tup-mode) auto-mode-alist))
