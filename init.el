;; load emacs config file as org-mode file 
;; where org mode is installing it's files
(require 'package)
(package-initialize)

(add-to-list 'load-path "/usr/share/emacs/site-lisp/org")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/org/contrib/lisp")

;;http://emacsblog.org/2008/12/06/quick-tip-detaching-the-custom-file/
;; own file for custom variables, so this variables can be loaded first which is the right way  
(setq custom-file "~/.emacs.d/custom_variables.el")
(load custom-file 'noerror)
(org-babel-load-file "~/.emacs.d/sentor_emacs_cfg.org")
(org-babel-load-file "~/.emacs.d/mu4e_config.org")



