(autoload 'tex-mode "tex-mode" "Tex mode." t)
(setq auto-mode-alist (cons '("\\.tex$" . tex-mode) auto-mode-alist))

(defun new-align-section ()
  "Insert a align* section."
  (interactive)
  (latex-insert-block "align*"))
(global-set-key (kbd "C-8") 'new-align-section)


(defun new-gather-section ()
  "Insert a align* section."
  (interactive)
  (latex-insert-block "gather*"))
(global-set-key (kbd "C-7") 'new-gather-section)
