((ac-R status "installed" recipe
       (:name ac-R :description "Auto-completion-mode support for R" :type git :url "https://github.com/mlf176f2/ac-R"))
 (auto-complete status "installed" recipe
		(:name auto-complete :website "https://github.com/auto-complete/auto-complete" :description "The most intelligent auto-completion extension." :type github :pkgname "auto-complete/auto-complete" :depends
		       (popup fuzzy)
		       :features auto-complete-config :post-init
		       (progn
			 (add-to-list 'ac-dictionary-directories
				      (expand-file-name "dict" default-directory))
			 (ac-config-default))))
 (auto-complete-clang status "installed" recipe
		      (:name auto-complete-clang :website "https://github.com/brianjcj/auto-complete-clang" :description "Auto-complete sources for Clang. Combine the power of AC, Clang and Yasnippet." :type github :pkgname "brianjcj/auto-complete-clang" :depends auto-complete))
 (cc-mode+ status "installed" recipe
	   (:name cc-mode+ :auto-generated t :type emacswiki :description "Extensions to `c-mode.el' & `cc-mode.el'." :website "https://raw.github.com/emacsmirror/emacswiki.org/master/cc-mode+.el"))
 (d-mode status "installed" recipe
	 (:name d-mode :description "Digitalmars-D-Mode for emacs" :type http :url "http://www.billbaxter.com/etc/d-mode.el" :prepare
		(progn
		  (autoload 'd-mode "d-mode" "Major mode for editing D code." t)
		  (add-to-list 'auto-mode-alist
			       '("\\.d[i]?$" . d-mode)))))
 (dired+ status "installed" recipe
	 (:name dired+ :description "Extensions to Dired" :type emacswiki :features dired+))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:load "el-get.el"))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (init-yasnippet status "installed" recipe
		 (:name init-yasnippet :auto-generated t :type emacswiki :description "Yasnippet configuration" :website "https://raw.github.com/emacsmirror/emacswiki.org/master/init-yasnippet.el"))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
		   (("git" "submodule" "update" "--init" "--" "snippets"))))
 (yasnippets status "installed" recipe
	     (:name yasnippets :description "Comprehensive collection of yasnippets" :type github :pkgname "rejeep/yasnippets" :depends
		    (yasnippet))))
