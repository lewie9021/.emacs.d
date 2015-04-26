;; Bindings for block commenting.
(global-set-key (kbd "C-x C-;") 'comment-region)
(global-set-key (kbd "C-x C-:") 'uncomment-region)

;; Binding for toggling idle-highlight-mode.
(global-set-key (kbd "C-x C-.") 'idle-highlight-mode)

;; Bindings for expand-region.
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)

;; Bindings for multiple cursors.
(global-set-key (kbd "C--") 'mc/mark-next-like-this)
(global-set-key (kbd "C-_") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-*") 'mc/mark-all-like-this)

;; Binding for smex (M-x enhancement).
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Clear the whole line (c-x of Sublime Text).
(global-set-key (kbd "C-l") 'kill-whole-line)

;; Binding for recursively searching within a directory.
(global-set-key (kbd "C-x g") 'rgrep)

;; Bindings for cycling buffers.
(global-set-key (kbd "<mouse-8>") 'previous-buffer)
(global-set-key (kbd "<mouse-9>") 'next-buffer)

;; Binding for editing the config.
(global-set-key
 (kbd "<f12>")
 (lambda ()
   (interactive)
   (find-file "~/.emacs.d/init.el")))

;; Binding for toggling whitespace. Useful when checking for tab indents.
(global-set-key (kbd "<f8>") 'whitespace-mode)

;; Binding for removing tabs in buffer
(global-set-key
 (kbd "<f7>")
 (lambda ()
   (interactive)
   (untabify (point-min) (point-max))))

;; Binding for opening a new shell. Overwrites the annoying suspend-frame command.
(defun open-shell()
  "Create a shell with a given name"
  (interactive);; "Prompt\n shell name:")
  (let ((shell-name (read-string "Shell name: " nil)))
    (shell (concat "*shell-" shell-name "*"))))
(global-set-key (kbd "C-z") 'open-shell)

;; Binding for switching to the mini-buffer.
(defun switch-to-minibuffer ()
  "Switch to minibuffer window."
  (interactive)
  (if (active-minibuffer-window)
      (select-window (active-minibuffer-window))
    (error "Minibuffer is not active")))
(global-set-key (kbd "C-c o") 'switch-to-minibuffer)

;; Binding to launch Explorer in Windows.
(defun open-in-explorer ()
  "Run explorer on the directory of the current buffer."
  (interactive)
  (shell-command (concat “explorer ” (replace-regexp-in-string “/” “\\\\” (file-name-directory (buffer-file-name)) t t))))
(global-set-key (kbd "C-c M-e") 'open-in-explorer)

;; Binding for launching the default browser when editing a HTML buffer.
(defun open-in-browser()
  (interactive)
  (let ((filename (buffer-file-name)))
    (browse-url (concat "file://" filename))))
(add-hook 'html-mode-hook
          (lambda () (local-set-key (kbd "C-c M-b") 'open-in-browser)))

(defun ido-recentf-open ()
  "Find recent file with ido enhancements"
  (interactive)
  (find-file (ido-completing-read "Find recent file: " recentf-list)))
(global-set-key (kbd "C-x f") 'ido-recentf-open)

(defun beginning-of-line-or-indentation ()
  "Move to beginning of line or indentation"
  (interactive)
  (if (bolp)
      (back-to-indentation)
    (beginning-of-line)))
(global-set-key (kbd "C-a") 'beginning-of-line-or-indentation)

;; Define boundary characters to search for within the buffer.
(defvar boundaries nil "list of boundary chars.")
(setq boundaries '("(" "{" "[" "<" "\"" "'" ")" "]" "}" ">" "”"))

;; Search backwards for the boundaries defined above.
(defun backward-boundary ()
  "Move cursor to the previous boundary occurrence."
  (interactive)
  (search-backward-regexp (eval-when-compile (regexp-opt boundaries)) nil t))

;; Search forwards for the boundaries defined above.
(defun forward-boundary ()
  "Move cursor to the next boundary occurrence."
  (interactive)
  (search-forward-regexp (eval-when-compile (regexp-opt boundaries)) nil t))

(global-set-key (kbd "C-,") 'backward-boundary)
(global-set-key (kbd "C-.") 'forward-boundary)

(defun delete-this-buffer-and-file ()
  "Removes file connected to current buffer and kills buffer."
  (interactive)
  (let ((filename (buffer-file-name))
        (buffer (current-buffer))
        (name (buffer-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (when (yes-or-no-p "Are you sure you want to remove this file? ")
        (delete-file filename)
        (kill-buffer buffer)
        (message "File '%s' successfully removed" filename)))))
(global-set-key (kbd "C-x M-k") 'delete-this-buffer-and-file)

(global-set-key
 (kbd "<next>")
 (lambda ()
   "Scrolls buffer view up 5 characters."
   (interactive)
   (scroll-up-command 5)))

(global-set-key
 (kbd "<prior>")
 (lambda ()
   "Scrolls buffer view down 5 characters."
   (interactive)
   (scroll-down-command 5)))

(global-set-key
 (kbd "<C-next>")
 (lambda ()
   "Scrolls buffer view left 5 characters."
   (interactive)
   (scroll-left 5 t)))

(global-set-key
 (kbd "<C-prior>")
 (lambda ()
   "Scrolls buffer view right 5 characters."
   (interactive)
   (scroll-right 5 t)))
