;; Initialize packages and add MELPA to the list.
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Use the Brogrammer inspired theme.
(load-file "~/.emacs.d/themes/brogrammer.el")

;; Identify yourself.
(setq user-full-name "Lewis Barnes")

;; Remove toolbar.
(tool-bar-mode 0)

;; Auto saves sessions open using a save-timeout setting.
(desktop-save-mode 1)

;; Take advantage of the a better file finding interface.
(ido-mode t)

;; Change the cursor to bar rather than the default block.
(setq-default cursor-type 'bar)

;; Disable the messages buffer.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

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

;; Save the state of Emacs from one session to another.
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

;; Make use of the Aspell spell checker (http://aspell.net/win32/).
(add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
(setq ispell-program-name "aspell")

;; Load partial configuration files.
(dolist (f '("backups" "recent-files" "bindings" "misc"))
  (load-file (concat "~/.emacs.d/elisp/" f ".el")))

;; Load profile modes.
(dolist (f '("css" "html" "js2" "jsx" "coffee"))
  (load-file (concat "~/.emacs.d/profiles/" f ".el")))

;; Automatically save place in files.
(setq save-place t)
(toggle-save-place-globally 1)

;; Allow custom dictionaries in ac-dict directory.
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

;; Use default auto-complete configuration.
(ac-config-default)

(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

;; Enable nyan mode 'cause why not?
(nyan-mode 1)

;; Configure indent-guide.
(indent-guide-global-mode)
(set-face-foreground 'indent-guide-face "dimgray")
(setq indent-guide-char ":")

;; Enable recent files mode.
(recentf-mode t)

;; Track only up to 15 files.
(setq recentf-max-saved-items 15)

(set-default 'truncate-lines t)

(message "Loaded init file successfully!")
