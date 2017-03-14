;;; packages.el --- auto-insert layer packages file for Spacemacs.
;;
;; Author: iory <ab.ioryz@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; auto-insert-mode to enable spacemacs

;;; Code:


;;; Constants =================================================================

(defconst auto-insert-layer-source-dir
  (if load-file-name
      (file-name-directory load-file-name)
    default-directory)
  "Source dir of auto-insert-layer")

(defconst auto-insert-packages
  '(auto-insert-mode)
  )

;; auto insertion
(auto-insert-mode)
(setq auto-insert-directory (concat auto-insert-layer-source-dir "/template"))
(define-auto-insert "CMakeLists.txt" "cmake-template.txt")
(define-auto-insert "\\.c$" "c-template.c")
(define-auto-insert "\\.cpp$" "c-plusplus-template.cpp")
(define-auto-insert "\\.l$" "euslisp-template.l")
(define-auto-insert "\\.launch$" "launch-template.launch")
(define-auto-insert "\\.php$" "php-template.sh")
(define-auto-insert "\\.py$" "py-template.py")
(define-auto-insert "\\.sh$" "sh-template.sh")


;;; packages.el ends here
