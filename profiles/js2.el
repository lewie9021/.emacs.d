;; Adds highlighting of many Ecma built-in functions.
(setq js2-highlight-level 3)

;; Switch statement body is indented one additional level.
(setq js2-indent-switch-body t)

;; Prevent warning if return values aren't the same.
(setq js2-strict-inconsistent-return-warning nil)

;; Include Node.js externs in the master externs list.
(setq js2-include-node-externs t)

;; Use js2-mode when editing .js files.
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
