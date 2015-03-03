;; Prevent creating backup~ files.
(setq make-backup-files nil)

;; Prevent creating #autosave# files.
(setq auto-save-default nil) 

;; Backup all files to Emacs directory.
(setq backup-directory-alist '(("" . "~/.emacs.d/backups")))

;; Prevent lock files from creating.
(setq create-lockfiles nil)
