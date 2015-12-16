(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.dust\\'" . web-mode))

(setq web-mode-engines-alist  '(("dust" . "\\.dust\\'")))

;; Declare the 4 space indentation.
(setq web-mode-script-padding 4)
(setq web-mode-style-padding 4)
(setq web-mode-markup-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-code-indent-offset 4)

;; Binding for expanding Emmet snippets using tab.
(add-hook 'web-mode-hook 'emmet-mode)

;; Added additional expansion helpers for html-mode (expand-region).
(require 'html-mode-expansions)
