;;; packages.el --- Alda Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Andrew Hill <andrew@andrewkhill.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq alda-packages
  '(
    alda-mode
   ))

(defun alda/init-alda-mode ()
  (use-package alda-mode
    :defer t
    :commands (alda-play-region
               alda-play-block
               alda-play-line
               alda-play-buffer)
    :init
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'alda-mode
        "r" 'alda-play-region
        "c" 'alda-play-block
        "n" 'alda-play-line
        "b" 'alda-play-buffer))))

(defun alda/post-init-ggtags ()
  (add-hook 'alda-mode-local-vars-hook #'spacemacs/ggtags-mode-enable))
