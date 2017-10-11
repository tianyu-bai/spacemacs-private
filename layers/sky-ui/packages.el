;;; packages.el --- sky-ui layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Baitianyu <Baitianyu@Baitianyu-MacBook-Pro.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `sky-ui-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `sky-ui/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `sky-ui/pre-init-PACKAGE' and/or
;;   `sky-ui/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst sky-ui-packages
  '(linum))

(defun sky-ui/post-init-linum ()
  ;; 配置 linum 只有在编程模式下开启
  (add-hook 'prog-mode-hook 'linum-mode))

;;; packages.el ends here
