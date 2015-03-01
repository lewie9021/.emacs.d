(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.dust\\'" . web-mode))

(setq web-mode-engines-alist  '(("dust" . "\\.dust\\'")))

;; Declare the 4 space indentation.
(setq web-mode-script-padding 4)
(setq web-mode-style-padding 4)
(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)

(setq web-mode-enable-auto-expanding t)
(setq web-mode-extra-expanders
      `(("m/" . "<moo>|</moo>")
        ("z/" . "<zebra>|</zebra>")))

(setq web-mode-enable-current-element-highlight t)

;; Binding for expanding Emmet snippet using tab.
(add-hook 'web-mode-hook (lambda ()
                           (emmet-mode t)
                           (local-set-key (kbd "TAB") 'emmet-expand-line)
                           ))
