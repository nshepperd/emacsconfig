(autoload 'hledger-mode "hledger-mode.el" "hledger mode." t)
(add-to-list 'auto-mode-alist '("\\.hledger\\.journal" . hledger-mode))

(autoload 'ledger-mode "ledger-mode.el" "ledger mode." t)
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))
