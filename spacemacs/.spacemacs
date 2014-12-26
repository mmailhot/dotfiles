;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; Variables

(setq-default
 ;; List of additional paths where to look for configuration layers.
 ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
 dotspacemacs-configuration-layer-path '()
 ;; List of contribution to load.
 dotspacemacs-configuration-layers '(trishume company-mode clojure-dev rust)
 ;; If non nil the frame is maximized when Emacs starts up (Emacs 24.4+ only)
 dotspacemacs-fullscreen-at-startup nil
 ;; A list of packages and/or extensions that will not be install and loaded.
 dotspacemacs-excluded-packages '(auto-complete ac-ispell tern-auto-complete auto-complete-clang enslime edts)
 ;; The default package repository used if no explicit repository has been
 ;; specified with an installed package.
 ;; Not used for now.
 dotspacemacs-default-package-repository nil

 dotspacemacs-default-theme 'solarized-dark
 )

;; Functions

(defun dotspacemacs/init ()
  "User initialization for Spacemacs. This function is called at the very
 startup."
  (set-default-font "Input Mono Medium 9")
  )

(defun dotspacemacs/config ()
  (mapcar (lambda (kmap)
            (define-key kmap "n" 'evil-next-visual-line)
            (define-key kmap "h" 'evil-backward-char)
            (define-key kmap "i" 'evil-forward-char)
            (define-key kmap "e" 'evil-previous-visual-line)
            (define-key kmap "s" 'evil-insert)
            (define-key kmap "S" 'evil-insert-line)
            (define-key kmap "k" 'spacemacs/anzu-evil-search-next)
            (define-key kmap "K" 'spacemacs/anzu-evil-search-previous)
            (define-key kmap "j" 'evil-forward-word-end)
            (define-key kmap "J" 'evil-forward-WORD-end)
            (define-key kmap "l" 'evil-first-non-blank)
            (define-key kmap "L" 'evil-end-of-line))
          (list evil-normal-state-map evil-lisp-state-map evil-visual-state-map))
  (define-key evil-visual-state-map "r" evil-inner-text-objects-map)
  (define-key evil-operator-state-map "r" evil-inner-text-objects-map)
  )
