;; Initialize packages and add MELPA to the list.
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Identify yourself.
(setq user-full-name "Lewis Barnes")
(setq user-mail-address "lewis@theconnectgroup.net")

;; Remove toolbar.
(tool-bar-mode 0)

;; Auto saves sessions open using a save-timeout setting.
(desktop-save-mode 1)

;; Take advantage of the a better file finding interface.
(ido-mode t)

;; Change the cursor to bar rather than the default block.
(setq-default cursor-type 'bar)

;; The default desktop is saved always
(setq desktop-save t)

;; The default desktop is loaded anyway if it is locked
(setq desktop-load-locked-desktop t)

;; Hide welcome screen.
(setq inhibit-startup-screen t)

;; Prevent tabs when formating a region
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

;; Prevents new buffers when in Dired.
(put 'dired-find-alternate-file 'disabled nil)

;; Save the state of Emacs from one session to anothe
(desktop-save-mode t)

;; Display column numbers.
(setq column-number-mode t)

;; Display line numbers.
(global-linum-mode 1)

;; Highlight matching parentheses.
(show-paren-mode t)

;; Replace active region inserting text.
(delete-selection-mode 1)

;; Characters like newlines trigger reindentation.
(electric-indent-mode t)

;; Inserts matching delimiters and places pointer within.
(electric-pair-mode t)

;; Display a vertical line through column 120.
(set-default 'fill-column 120)
(setq fci-rule-width 1)

;; Override standard undo system with undo-tree
(global-undo-tree-mode)

(setq js2-highlight-level 3)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Bindings for block commenting.
(global-set-key (kbd "C-x C-;") 'comment-region)
(global-set-key (kbd "C-x C-:") 'uncomment-region)

;; Binding for toggling idle-highlight-mode
(global-set-key (kbd "C-x C-.") 'idle-highlight-mode)

;; Binding for expand-region
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)

;; Bindings for multiple cursors.
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-*") 'mc/mark-all-like-this)

;; Load themes
(dolist (f '("brogrammer"))
  (load-file (concat "~/.emacs.d/themes/" f ".el")))

;; Load manual packages.
(dolist (f '("indent-guide"))
  (load-file (concat "~/.emacs.d/packages/" f ".el")))

;; Load partial configuration files.
(dolist (f '("backups" "recent-files"))
  (load-file (concat "~/.emacs.d/elisp/" f ".el")))

;; Load profile modes.
(dolist (f '("html"))
  (load-file (concat "~/.emacs.d/profiles/" f ".el")))

;; Automatically save place in files.
(setq save-place t)
(toggle-save-place-globally 1)

;; Enable yasnippet globally.
(yas-global-mode 1)

;; Allow custom dictionaries in ac-dict directory.
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

;; Use default auto-complete configuration.
(ac-config-default)

;; set the trigger key so that it can work together with yasnippet on tab key,
;; if the word exists in yasnippet, pressing tab will cause yasnippet to
;; activate, otherwise, auto-complete will.
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;; Enable projectile  globally.
(projectile-global-mode)

;; Configure indent-guide.
(indent-guide-global-mode)
(set-face-foreground 'indent-guide-face "dimgray")
(setq indent-guide-char ":")

(message "Loaded init file successfully!")
