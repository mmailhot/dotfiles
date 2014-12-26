(defvar rust-packages
  '(rust-mode
    toml-mode))

(defun rust/insert-semicolon-newline ()
  (interactive)
  (evil-end-of-line)
  (forward-char)
  (insert ";")
  (evil-normal-state)
  (backward-char)
  (evil-open-below))

(defun rust/init-rust-mode ()
  (evil-leader/set-key-for-mode 'rust-mode ";" 'rust/insert-semicolon-newline))
