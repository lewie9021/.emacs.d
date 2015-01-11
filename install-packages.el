(require 'package)

(package-initialize)
(package-refresh-contents)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Useful packages:
;; achievements - Makes learning about Emacs fun!
;; coffee-mode - Provides syntax highlighting, indentation support, imenu support, a menu bar for coffee script.
;; expand-region - Increases the selected region by semantic units.
;; js2-mode - Improved JavaScript editing mode.
;; multiple-cursors - Provides support for multiple cursors.
;; markdown-mode - Provides syntax highlighting and supporting commands for editing Markdown files.
;; scss-mode - Mode for editing SCSS files in Emacs.
;; web-mode - Autonomous mode for editing web templates.
;; zencoding-mode - CSS-style markup constructor.
;; yasnippet - Template system for creating snippets.
;; undo-tree - Provides functionality for recovering any past state of a buffer.
;; projectile - Provides a nice set of features for operating on a project level.
;; auto-complete - An intelligent auto-completion extension with #popup menu.
;; idle-highlight-mode - Sets an idle timer that highlights all occurences in the buffer of the word under the point.

(dolist (p '(achievements
	     coffee-mode
	     expand-region
	     js2-mode
	     multiple-cursors
             markdown-mode
             scss-mode
             web-mode
             zencoding-mode
             yasnippet
             undo-tree
             projectile
             auto-complete
             idle-highlight-mode)
)(package-install p))

;; Misc packages:
;; figlet - Makes large letters out of ordinary text
;; keyfreq - Monitors how many times you used a command.
;; nyan-mode - Renders an analog indicator of your position in the buffer.
;; rainbow-mode - Colorize color names in the buffer.
;; unbound - Find convenient unbound keystrokes.

(dolist (p '(figlet
	     keyfreq
	     nyan-mode
	     rainbow-mode
	     unbound))
(package-install p))

;; Not interested:
;; gh - GitHub client library.
;; git-cimmit-mode - Edit Git commit messages.
;; git-gutter+ - View, stage and revert Git changes straight from the buffer.
;; gitconfig - Interface to work with git-config variables.
;; github-browse-file - View the file you're editing in Emacs on GitHub.
;; github-clone - Clone GitHub repos and optionally fork a copy with the remote named after the username.
;; gitignore-mode - Mode for editing .gitignore files.
;; dos - Mode for editing Dos scripts.
;; csharp-mode - Provides an editing mode for C# code.
;; pgdevenv - PostgreSQL Development tool.

