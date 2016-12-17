(add-hook 'after-init-hook
          (lambda ()
            (require 'opencl-mode)
            (add-to-list 'auto-mode-alist '("\\.cl\\'" . opencl-mode))))
