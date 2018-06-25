(require 'package)
(add-to-list 'package-archives'("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Bootstrap `use-package'
;; https://qiita.com/kai2nenobu/items/5dfae3767514584f5220
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)


;;https://stackoverflow.com/questions/25125200/emacs-error-ls-does-not-support-dired
(when (string= system-type "darwin")
  (setq dired-use-ls-dired nil))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (manoj-dark)))
 '(doc-view-continuous t)
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(markdown-command "/usr/local/bin/multimarkdown")
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (magit react-snippets kotlin-mode tide ctags-update tss dumb-jump rjsx-mode aggressive-indent smart-tab ng2-mode dirtree typescript-mode angular-mode exec-path-from-shell twittering-mode htmlize popwin google-translate fuzzy undohist org-link-minor-mode edit-indirect tabbar ido-vertical-mode counsel lorem-ipsum ace-window ace-jump-buffer haskell-mode jedi python-mode elpy helm-swoop ace-jump-mode ace-isearch rainbow-delimiters org-pdfview pdf-tools ac-octave scala-mode abyss-theme org-plus-contrib org-bullets org ein mykie use-package smartparens atomic-chrome total-lines diminish smart-mode-line undo-tree which-key try rspec-mode inf-ruby ruby-electric js2-mode web-mode-edit-element ## iedit flycheck-pos-tip markdown-mode+ markdown-mode smartrep flycheck web-mode latex-preview-pane auto-complete-auctex auctex auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 2.0)))))
