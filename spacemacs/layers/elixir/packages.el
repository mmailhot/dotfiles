(defvar elixir-packages
  '(alchemist))

(defun elixir/init-alchemist ()
  (add-hook 'elixir-mode-hook 'alchemist-mode))
