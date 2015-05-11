;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; Variables

(setq-default
 ;; List of additional paths where to look for configuration layers.
 ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
 dotspacemacs-configuration-layer-path '()
 ;; List of contribution to load.
 dotspacemacs-configuration-layers '(trishume company-mode erlang-elixir clojure rust git go haskell)
 ;; If non nil the frame is maximized when Emacs starts up (Emacs 24.4+ only)
 dotspacemacs-fullscreen-at-startup nil
 ;; A list of packages and/or extensions that will not be install and loaded.
 ;; The default package repository used if no explicit repository has been
 ;; specified with an installed package.
 ;; Not used for now.
 dotspacemacs-default-package-repository nil

 evil-lisp-state-major-modes '(emacs-lisp-mode clojure-mode)
 evil-lisp-state-leader-prefix "mp"
 dotspacemacs-themes '(solarized-dark)
 )

;; Functions

(defun dotspacemacs/init ()
  "User initialization for Spacemacs. This function is called at the very
 startup."
  (set-default-font "Inconsolata 10")
  (setq-default evil-escape-key-sequence (kbd "dh"))
  (setq spacemacs-erlang-elixir-use-edts t)
  (setq org-src-fontify-natively t)
  (setq ido-auto-merge-work-directories-length -1)
  )

(defun dotspacemacs/fixclj ()
  (progn
    (paredit-mode f)))

(defun dotspacemacs/config ()
  (add-to-hook 'clojure-mode-hook '(dotspacemacs/fixclj))
  (add-to-hook 'interactive-haskell-mode-hook '(evil-emacs-state))
  (add-to-hook 'haskell-error-mode-hook '(evil-emacs-state)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(paradox-github-token t)
 '(ring-bell-function (quote ignore) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
