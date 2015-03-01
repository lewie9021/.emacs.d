;; Set transparency of frame.
(defun transparency (value)
  "Set transparency of the frame."
  (interactive "nTransparency value (0 - 100): ")
  (set-frame-parameter (selected-frame) 'alpha value))
