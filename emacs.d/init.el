(setq inhibit-startup-message t)

(scroll-bar-mode  1)
(tool-bar-mode -1)
(tooltip-mode  -1)
(set-fringe-mode 20)
(global-display-line-numbers-mode 1)
(line-number-mode 1)
(electric-pair-mode 1)
(setq electric-pair-pairs
      '(
	(?\' . ?\')
	(?\{ . ?\})
	(?\( . ?\))
	))


(setq-default cursor-type '(bar . 2))
(menu-bar-mode -1)
(cua-mode 1)

(setq visible-bell t)

(global-set-key (kbd "C-Z") 'undo)
(global-set-key (kbd "C-S-z") 'undo-redo)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(defadvice keyboard-escape-quit
  (around keyboard-escape-quit-dont-close-windows activate)
  (let ((buffer-quit-function (lambda () ())))
    ad-do-it))

(require 'package)
(setq package-archives '(("melpa-bleeding-edge" . "https://melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package ivy
  :diminish
  :config
  (ivy-mode 1))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package dired-sidebar
  :ensure t
  :commands (dired-sidebar-toggle-sidebar))
(global-set-key (kbd "C-x t") 'dired-sidebar-toggle-sidebar)

(use-package company
  :ensure t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

(use-package company-tabnine :ensure t)
(require 'company-tabnine)

(add-to-list 'company-backends #'company-tabnine)
;; Trigger completion immediately.
(setq company-idle-delay 0)

;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-quick-access t)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1.0))
(require 'rand-theme)
(use-package firecode-theme)
(use-package flatui-dark-theme)
(use-package danneskjold-theme)
(use-package cyberpunk-theme)
(use-package clues-theme)
(use-package cherry-blossom-theme)
(use-package almost-mono-themes)
(use-package badwolf-theme)
(use-package badger-theme)
(use-package creamsody-theme)
(use-package dakrone-theme)
(use-package dark-krystal-theme)
(use-package distinguished-theme)
(use-package dream-theme)
(use-package flatland-black-theme)
(use-package grandshell-theme)
(use-package hemisu-theme)
(use-package purple-haze-theme)
(use-package quasi-monochrome-theme)
(setq rand-theme-wanted '(firecode flatui-dark danneskjold cyberpunk clues cherry-blossom almost-mono-black almost-mono-gray badwolf badger creamsody dakrone dark-krystal hemisu-dark quasi-monochrome purple-haze grandshell flatland-black distinguished))
(rand-theme)


(global-set-key (kbd "C-;") 'compile)(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "bd82c92996136fdacbb4ae672785506b8d1d1d511df90a502674a51808ecc89f" "738c4838957c1884dfacbb6f4f783c54e87c4a6b31c336d6279fc1c2b2ee56c5" "7c20c453ad5413b110ccc3bb5df07d69999d741d29b1f894bd691f52b4abdd31" "c7b8dbc62bf969295d0068d8dcb47bd1832d9c466bd76ddc6ac325b93cbdf7c6" "6b6bad9d7a844d5de02761a1bd155869512f47bd6a7b14d799eea5c37f08ead4" "e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" default))
 '(package-selected-packages
   '(dark-krystal-theme dakrone-theme creamsody-theme company-tabnine dired-sidebar company-lua nasm-mode flymake-nasm firecode-theme flatui-dark-theme dream-theme danneskjold-theme cyberpunk-theme clues-theme cherry-blossom-theme almost-mono-themes badwolf-theme badger-theme avk-emacs-themes rand-theme twilight-theme which-key rainbow-delimiters auto-dark flycheck-clang-tidy flycheck electric-pair electric-pair-mode auto-complete-clang centaur-tabs company-lsp company use-package lsp-ui ivy doom-modeline ccls)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )



