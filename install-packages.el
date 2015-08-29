(require 'package)

(package-initialize)
(package-refresh-contents)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; Useful packages:
;; coffee-mode - Provides syntax highlighting, indentation support, imenu support, a menu bar for coffee script.
;; expand-region - Increases the selected region by semantic units.
;; js2-mode - Improved JavaScript editing mode.
;; multiple-cursors - Provides support for multiple cursors.
;; markdown-mode - Provides syntax highlighting and supporting commands for editing Markdown files.
;; scss-mode - Mode for editing SCSS files in Emacs.
;; web-mode - Autonomous mode for editing web templates.
;; emmet-mode - CSS-style markup constructor.
;; yasnippet - Template system for creating snippets.
;; smex - M-x enhancement (similar to ido-mode works)
;; browse-kill-ring - List recently killed text.
;; undo-tree - Provides functionality for recovering any past state of a buffer.
;; auto-complete - An intelligent auto-completion extension with #popup menu.
;; idle-highlight-mode - Sets an idle timer that highlights all occurences in the buffer of the word under the point.

(dolist (p '(coffee-mode
	     expand-region
	     js2-mode
	     multiple-cursors
             markdown-mode
             scss-mode
             web-mode
             emmet-mode
             yasnippet
             smex
             browse-kill-ring
             undo-tree
             auto-complete
             idle-highlight-mode)
)(package-install p))

;; Misc packages:
;; keyfreq - Monitors how many times you used a command.
;; nyan-mode - Renders an analog indicator of your position in the buffer.
;; rainbow-mode - Colorize color names in the buffer.

(dolist (p '(keyfreq
	     nyan-mode
             annoying-arrows-mode
	     rainbow-mode)
)(package-install p))
