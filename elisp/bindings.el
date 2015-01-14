;; Bindings for block commenting.
(global-set-key (kbd "C-x C-;") 'comment-region)
(global-set-key (kbd "C-x C-:") 'uncomment-region)

;; Binding for toggling idle-highlight-mode.
(global-set-key (kbd "C-x C-.") 'idle-highlight-mode)

;; Bindings for expand-region.
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-+") 'er/contract-region)

;; Bindings for multiple cursors.
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-*") 'mc/mark-all-like-this)

;; Binding for editing the config.
(global-set-key
(kbd "<f12>")
    (lambda ()
    (interactive)
    (find-file "~/.emacs.d/init.el")))


;; Binding for opening a new shell.
(defun open-shell()
  "creates a shell with a given name"
  (interactive);; "Prompt\n shell name:")
  (let ((shell-name (read-string "Shell name: " nil)))
    (shell (concat "*shell-" shell-name "*"))))
(global-set-key (kbd "C-x t") 'open-shell)

;; Binding for switching to the mini-buffer.
(defun switch-to-minibuffer ()
  "Switch to minibuffer window."
  (interactive)
  (if (active-minibuffer-window)
      (select-window (active-minibuffer-window))
    (error "Minibuffer is not active")))
(global-set-key (kbd "C-c o") 'switch-to-minibuffer)

(defun open-in-explorer ()
  “Run explorer on the directory of the current buffer.”
   (interactive)
   (shell-command (concat “explorer ” (replace-regexp-in-string “/” “\\\\” (file-name-directory (buffer-file-name)) t t))))
(global-set-key (kbd "C-c M-e") 'open-in-explorer)

(defun open-in-browser()
  (interactive)
  (let ((filename (buffer-file-name)))
    (browse-url (concat "file://" filename))))
(add-hook 'html-mode-hook
          (lambda () (local-set-key (kbd "C-c M-b") 'open-in-browser)))
