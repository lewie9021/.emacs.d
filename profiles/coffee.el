;; Use coffee-mode when editing .coffee and .cjsx files.
(add-to-list 'auto-mode-alist '("\\.coffee\\'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.cjsx\\'" . coffee-mode))

;; Sets tab width to 4.
(custom-set-variables '(coffee-tab-width 4))
