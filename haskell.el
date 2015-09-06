(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(add-to-list 'exec-path "~/.local/bin")
(custom-set-variables '(haskell-tags-on-save t))

(add-hook 'haskell-mode-hook
          (lambda ()
            ;; (define-key haskell-mode-map (kbd "M-.") 'haskell-mode-jump-to-def-or-tag)
            (define-key haskell-mode-map (kbd "M-.")
              (lambda ()
                (interactive)
                (browse-url (format "http://holumbus.fh-wedel.de/hayoo/hayoo.html?query=%s&start"
                                    (thing-at-point 'word)))
                ))))

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
