;;; packages.el --- sky-misc layer packages file for Spacemacs.
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
;; added to `sky-misc-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `sky-misc/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `sky-misc/pre-init-PACKAGE' and/or
;;   `sky-misc/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst sky-misc-packages
  '(youdao-dictionary
    paradox
    sql))

;; 有道词典搜索单词
(defun sky-misc/post-init-youdao-dictionary ()
  (spacemacs/set-leader-keys "oy" 'youdao-dictionary-search-at-point+))

;; paradox 是包管理工具，其会去 github 拉取每个包的 star 数
(defun sky-misc/post-init-paradox ()
  (with-eval-after-load 'paradox
    (setq paradox-automatically-star nil)
    (setq paradox-github-token "fa6ba6c8cdc64ae5a1aef7e6906203ff1663104a")))

(defun sky-misc/post-init-sql ()
  (setq sql-mysql-program "/usr/local/mysql/bin/mysql")
  (setq sql-connection-alist
        '(("sky-local-test@localhost"
           (sql-product
            (quote mysql))
           (sql-user "root")
           (sql-password "baitianyu")
           (sql-database "")
           (sql-server "localhost")
           (sql-port 3306))
          ("push-server@10.122.134.164"
           (sql-product
            (quote mysql))
           (sql-user "msgpush")
           (sql-password "msgpush")
           (sql-database "")
           (sql-server "10.122.134.164")
           (sql-port 3306)))))

;;; packages.el ends here
