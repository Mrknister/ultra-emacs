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
 (cl-lib status "installed" recipe
	 (:name cl-lib :builtin "24.3" :type elpa :description "Properly prefixed CL functions and macros" :url "http://elpa.gnu.org/packages/cl-lib.html"))
 (d-mode status "installed" recipe
	 (:name d-mode :description "Digitalmars-D-Mode for emacs" :type http :url "http://www.billbaxter.com/etc/d-mode.el" :prepare
		(progn
		  (autoload 'd-mode "d-mode" "Major mode for editing D code." t)
		  (add-to-list 'auto-mode-alist
			       '("\\.d[i]?$" . d-mode)))))
 (dash status "installed" recipe
       (:name dash :description "A modern list api for Emacs. No 'cl required." :type github :pkgname "magnars/dash.el"))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
		("el-get.*\\.el$" "methods/")
		:load "el-get.el"))
 (epl status "installed" recipe
      (:name epl :description "EPL provides a convenient high-level API for various package.el versions, and aims to overcome its most striking idiocies." :type github :pkgname "cask/epl"))
 (f status "installed" recipe
    (:name f :website "https://github.com/rejeep/f.el" :description "Modern API for working with files and directories in Emacs" :depends
	   (s dash)
	   :type github :pkgname "rejeep/f.el"))
 (flycheck status "installed" recipe
	   (:name flycheck :type github :pkgname "flycheck/flycheck" :description "On-the-fly syntax checking extension" :build
		  '(("makeinfo" "-o" "doc/flycheck.info" "doc/flycheck.texi"))
		  :info "./doc" :depends
		  (s dash cl-lib f pkg-info)))
 (flycheck-haskell status "installed" recipe
		   (:name flycheck-haskell :description "Flycheck: Cabal projects and sandboxes." :type github :pkgname "flycheck/flycheck-haskell" :depends
			  (flycheck haskell-mode dash f)
			  :prepare
			  (eval-after-load 'flycheck
			    '(add-hook 'flycheck-mode-hook #'flycheck-haskell-setup))))
 (fuzzy status "installed" recipe
	(:name fuzzy :website "https://github.com/auto-complete/fuzzy-el" :description "Fuzzy matching utilities for GNU Emacs" :type github :pkgname "auto-complete/fuzzy-el"))
 (ghc-mod status "installed" recipe
	  (:name ghc-mod :description "Happy Haskell programming" :type github :pkgname "kazu-yamamoto/ghc-mod" :load-path "elisp"))
 (haskell-mode status "installed" recipe
	       (:name haskell-mode :description "A Haskell editing mode" :type github :pkgname "haskell/haskell-mode" :info "." :build
		      `(("make" ,(format "EMACS=%s" el-get-emacs)
			 "all"))
		      :post-init
		      (progn
			(require 'haskell-mode-autoloads)
			(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
			(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation))))
 (pkg-info status "installed" recipe
	   (:name pkg-info :description "Provide information about Emacs packages." :type github :pkgname "lunaryorn/pkg-info.el" :depends
		  (dash epl)))
 (popup status "installed" recipe
	(:name popup :website "https://github.com/auto-complete/popup-el" :description "Visual Popup Interface Library for Emacs" :type github :submodule nil :pkgname "auto-complete/popup-el"))
 (s status "installed" recipe
    (:name s :description "The long lost Emacs string manipulation library." :type github :pkgname "magnars/s.el"))
 (yasnippet status "installed" recipe
	    (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
		   (("git" "submodule" "update" "--init" "--" "snippets"))))
 (yasnippets status "installed" recipe
	     (:name yasnippets :description "Comprehensive collection of yasnippets" :type github :pkgname "rejeep/yasnippets" :depends
		    (yasnippet))))
