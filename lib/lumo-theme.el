;;; lumo-theme --- Summary

;;; Commentary:
;;
;; This is a theme based on Monokai with a few tweaks
;;
;; To discover the font used to color a particular entity in emac:
;; View font-lock under cursor with C-u C-x =
;; Look for 'face' under 'There are text properties here:'


;;; Code:

(deftheme lumo "Code illuminated.")

(let ((class '((class color) (min-colors 89)))
      (foreground "#fcfcfa")
      (background "#2d2a2e")
      (cursor-color "#fcfcfa")
      
      (black "#383539")
      (bright-black "#989599")
      
      (red "#ff6188")
      (bright-red "#ff89a6")
      
      (green "#a9dc76")
      (bright-green "#c5e0a9")

      (yellow "#fc9867")
      (bright-yellow "#ffd866")

      (blue "#78dce8")
      (bright-blue "#c9edf1")

      (magenta "#ab9df2")
      (bright-magenta "#b294bb")

      (cyan "#78e8cf")
      (bright-cyan "#c4f9ed")

      (white "#c3c1c3")
      (bright-white "#f8f8f2")
      
      (origin-1 "#1d1e1a")
      (origin-2 "#282924")
      (origin-3 "#35372f")
      (origin-4 "#42453b")
      (origin-10 "#eeeeee")
      (origin-9 "#cccccc")
      (magenta-5 "#ff3399")
      (mint-5 "#00ffcc")
      (mint-6 "#66ffcc")
      (aqua-3 "#00cccc")
      (aqua-4 "#00e6e6")
      (aqua-5 "#00ffff")
      (daffodil-5 "#ffff66")
      (lavender-5 "#e6e6ff")
      (lumo-light-grey "#eeeeee")
      (lumo-grey "#444444")
      (lumo-black "#1b1d1e")
      (lumo-white "#eeeeee")
      (lumo-yellow "#cf8f2e")
      (lumo-blue "#486ab4")
      (lumo-green "#365d2e")
      (lumo-magenta "#e13dfc")
      (lumo-purple "#8b008b")
      (lumo-region "#dcb9b9"))

  (custom-theme-set-faces
   'lumo
   `(default ((t (:foreground ,foreground :background ,background))))
   `(cursor ((t (:background ,cursor-color))))
   `(region ((t (:background ,black))))
   `(highlight ((t (:background ,black))))
   `(font-lock-builtin-face ((t (:foreground ,green))))
   `(font-lock-keyword-face ((t (:foreground ,red))))
   `(font-lock-type-face ((t (:foreground ,foreground))))
   `(font-lock-function-name-face ((t (:foreground ,green))))
   `(font-lock-string-face ((t (:foreground ,bright-yellow))))
   `(font-lock-comment-face ((t (:foreground ,bright-black))))
   `(font-lock-constant-face ((t (:foreground ,red))))

   `(font-lock-variable-name-face ((t (:foreground ,bright-white))))
   
   `(comint-highlight-prompt ((t (:foreground ,green))))
   
   `(diff-added ((t (:foreground ,green))))
   `(diff-removed ((t (:foreground ,red))))
   `(diff-hunk-header ((t (:foreground ,green))))
   `(diff-file-header ((t (:foreground ,green))))
   `(diff-header ((t (:foreground ,origin-10))))
   
   `(ido-first-match ((t (:foreground ,bright-yellow))))
   `(ido-only-match ((t (:foreground ,green))))
   `(ido-subdir ((t (:foreground ,blue))))
   `(ido-indicator ((t (:foreground ,bright-yellow))))

   `(clojure-keyword-face ((t (:foreground ,red))))

   `(sh-quoted-exec ((t (:foreground ,bright-yellow))))

   `(go-test--error-face ((t (:foreground ,red))))

   `(markdown-inline-code-face ((t (:foreground ,bright-yellow))))
   `(markdown-code-face ((t (:foreground ,bright-yellow))))
   `(markdown-italic-face ((t (:slant italic))))

   `(magit-diffstat-added ((t (:foreground ,green))))
   `(magit-diffstat-removed ((t (:foreground ,red))))
   `(magit-diff-added ((t (:foreground ,green))))
   `(magit-diff-removed ((t (:foreground ,red))))
   `(magit-diff-added-highlight ((t (:foreground ,green))))
   `(magit-diff-removed-highlight ((t (:foreground ,red))))

   ;; magit-diff-added-highlight
   
   `(match ((t (:foreground ,black :background ,bright-yellow)))) ;; used in ripgrep
   `(compilation-info ((t (:foreground ,origin-10))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,aqua-5))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,aqua-4))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,aqua-3))))
   `(company-tooltip ((t (:foreground ,origin-10 :background ,origin-2))))
   `(company-tooltip-selection ((t (:foreground ,origin-10 :background ,origin-3))))
   `(company-tooltip-annotation ((t (:foreground ,aqua-3))))
   `(company-tooltip-annotation-selection ((t (:foreground ,aqua-5))))
   `(company-tooltip-common ((t (:foreground ,aqua-3))))
   `(company-tooltip-common-selection ((t (:foreground ,magenta-5))))
   `(company-scrollbar-fg ((t (:background ,origin-9))))
   `(company-scrollbar-bg ((t (:background ,origin-1))))
   `(company-preview ((t (:foreground ,origin-9 :background ,origin-2))))
   `(company-preview-common ((t (:foreground ,origin-9 :background ,origin-2))))
   (custom-theme-set-variables
    'lumo
    `(ansi-color-names-vector
      [,black
       ,red
       ,green
       ,yellow
       ,blue
       ,magenta
       ,blue
       ,white]))
   `(minibuffer-prompt ((,class (:foreground ,origin-10))))
   ))

(provide-theme 'lumo)
;;; lumo-theme.el ends here
