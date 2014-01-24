(defvar org-dream-file "~/Documents/org/dreams.org"
  "Path to OrgMode dream journal file.")
(defvar org-dream-date-format "%Y-%m-%d"
  "Date format string for dream journal headings.")

(defun org-dream-entry ()
  "Create a new dream journal entry for today or append to an existing one."
  (interactive)
  (switch-to-buffer (find-file org-dream-file))
  (widen)
  (setq isearch-forward t)
  (let ((today (format-time-string org-dream-date-format)))
    (beginning-of-buffer)
    (unless (org-goto-local-search-headings today nil t)
      ((lambda ()
         (org-insert-heading)
         (insert today)
         (insert "\n\n  \n"))))
    (beginning-of-buffer)
    (org-show-entry)
    (org-narrow-to-subtree)
    (end-of-buffer)
    (backward-char 1)
    (unless (= (current-column) 2)
      (insert "\n\n  "))))

(global-set-key (kbd "C-c C-d") 'org-dream-entry)
