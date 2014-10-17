;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-auto-complete-mode auto-complete-mode auto-complete)
;;;;;;  "auto-complete/auto-complete" "auto-complete/auto-complete.el"
;;;;;;  (21515 3509 407050 626000))
;;; Generated autoloads from auto-complete/auto-complete.el

(autoload 'auto-complete "auto-complete/auto-complete" "\
Start auto-completion at current point.

\(fn &optional SOURCES)" t nil)

(autoload 'auto-complete-mode "auto-complete/auto-complete" "\
AutoComplete mode

\(fn &optional ARG)" t nil)

(defvar global-auto-complete-mode nil "\
Non-nil if Global-Auto-Complete mode is enabled.
See the command `global-auto-complete-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-auto-complete-mode'.")

(custom-autoload 'global-auto-complete-mode "auto-complete/auto-complete" nil)

(autoload 'global-auto-complete-mode "auto-complete/auto-complete" "\
Toggle Auto-Complete mode in all buffers.
With prefix ARG, enable Global-Auto-Complete mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Complete mode is enabled in all buffers where
`auto-complete-mode-maybe' would do it.
See `auto-complete-mode' for more information on Auto-Complete mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (ac-config-default) "auto-complete/auto-complete-config"
;;;;;;  "auto-complete/auto-complete-config.el" (21515 3509 407050
;;;;;;  626000))
;;; Generated autoloads from auto-complete/auto-complete-config.el

(autoload 'ac-config-default "auto-complete/auto-complete-config" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (d-mode) "d-mode/d-mode" "d-mode/d-mode.el" (21569
;;;;;;  1494 344928 180000))
;;; Generated autoloads from d-mode/d-mode.el
 (add-to-list 'auto-mode-alist '("\\.d[i]?\\'" . d-mode))

(autoload 'd-mode "d-mode/d-mode" "\
Major mode for editing code written in the D Programming Language.
See http://www.digitalmars.com/d for more information about the D language.
The hook `c-mode-common-hook' is run with no args at mode
initialization, then `d-mode-hook'.

Key bindings:
\\{d-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-packages-of-type el-get-update-all
;;;;;;  el-get-version) "el-get/el-get" "el-get/el-get.el" (21569
;;;;;;  1495 101590 28000))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21569 1480 164949 327000))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (flycheck-haskell-setup) "flycheck-haskell/flycheck-haskell"
;;;;;;  "flycheck-haskell/flycheck-haskell.el" (21566 37006 188779
;;;;;;  389000))
;;; Generated autoloads from flycheck-haskell/flycheck-haskell.el

(autoload 'flycheck-haskell-setup "flycheck-haskell/flycheck-haskell" "\
Setup Haskell support for Flycheck.

If the current file is part of a Cabal project, configure
Flycheck to take the module paths of the Cabal projects into
account.

Also search for Cabal sandboxes and add them to the module search
path as well.

\(fn)" nil nil)

;;;***

;;;### (autoloads (flycheck-define-error-level flycheck-info flycheck-def-option-var
;;;;;;  flycheck-def-config-file-var global-flycheck-mode flycheck-mode)
;;;;;;  "flycheck/flycheck" "flycheck/flycheck.el" (21569 1403 575959
;;;;;;  764000))
;;; Generated autoloads from flycheck/flycheck.el

(autoload 'flycheck-mode "flycheck/flycheck" "\
Minor mode for on-the-fly syntax checking.

When called interactively, toggle `flycheck-mode'.  With prefix
ARG, enable `flycheck-mode' if ARG is positive, otherwise disable
it.

When called from Lisp, enable `flycheck-mode' if ARG is omitted,
nil or positive.  If ARG is `toggle', toggle `flycheck-mode'.
Otherwise behave as if called interactively.

In `flycheck-mode' the buffer is automatically syntax-checked
using the first suitable syntax checker from `flycheck-checkers'.
Use `flycheck-select-checker' to select a checker for the current
buffer manually.

\\{flycheck-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-flycheck-mode nil "\
Non-nil if Global-Flycheck mode is enabled.
See the command `global-flycheck-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck/flycheck" nil)

(autoload 'global-flycheck-mode "flycheck/flycheck" "\
Toggle Flycheck mode in all buffers.
With prefix ARG, enable Global-Flycheck mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Flycheck mode is enabled in all buffers where
`flycheck-mode-on-safe' would do it.
See `flycheck-mode' for more information on Flycheck mode.

\(fn &optional ARG)" t nil)

(autoload 'flycheck-def-config-file-var "flycheck/flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.

SYMBOL is declared as customizable, buffer-local variable using
`defcustom', to provide a configuration file for the given syntax
CHECKER.  CUSTOM-ARGS are forwarded to `defcustom'.

FILE-NAME is the initial value of the new variable.  If omitted,
the default value is nil.

Use this together with the `config-file' form in the `:command'
argument to `flycheck-define-checker'.

\(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck/flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.

SYMBOL is declared as customizable variable, buffer-local
variable using `defcustom', to provide an option for the given
syntax CHECKER.  INIT-VALUE is the initial value of the variable,
and DOCSTRING is its docstring.  CUSTOM-ARGS are forwarded to
`defcustom'.

Use this together with the `option', `option-list' and
`option-flag' forms in the `:command' argument to
`flycheck-define-checker'.

\(fn SYMBOL INIT-VALUE CHECKER DOCSTRING &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-option-var 'lisp-indent-function '3)

(put 'flycheck-def-option-var 'doc-string-elt '4)

(autoload 'flycheck-info "flycheck/flycheck" "\
Open the Flycheck manual.

\(fn)" t nil)

(autoload 'flycheck-define-error-level "flycheck/flycheck" "\
Define a new error LEVEL with PROPERTIES.

The following PROPERTIES constitute an error level:

`:severity SEVERITY'
     A number denoting the severity of this level.  The higher
     the number, the more severe is this level compared to other
     levels.  Defaults to 0.

     The severity is used by `flycheck-error-level-<' to
     determine the ordering of errors according to their levels.

`:overlay-category CATEGORY'
     A symbol denoting the overlay category to use for error
     highlight overlays for this level.  See Info
     node `(elisp)Overlay Properties' for more information about
     overlay categories.

     A category for an error level overlay should at least define
     the `face' property, for error highlighting.  Other useful
     properties for error level categories are `priority' to
     influence the stacking of multiple error level overlays, and
     `help-echo' to define a default error messages for errors
     without messages.

`:fringe-bitmap BITMAP'
     A fringe bitmap symbol denoting the bitmap to use for fringe
     indicators for this level.  See Info node `(elisp)Fringe
     Bitmaps' for more information about fringe bitmaps,
     including a list of built-in fringe bitmaps.

`:fringe-face FACE'
     A face symbol denoting the face to use for fringe indicators
     for this level.

`:error-list-face FACE'
     A face symbol denoting the face to use for messages of this
     level in the error list.  See `flycheck-list-errors'.

\(fn LEVEL &rest PROPERTIES)" nil nil)

(put 'flycheck-define-error-level 'lisp-indent-function '1)

;;;***

;;;### (autoloads (ghc-debug ghc-init) "ghc-mod/elisp/ghc" "ghc-mod/elisp/ghc.el"
;;;;;;  (21566 37032 248826 712000))
;;; Generated autoloads from ghc-mod/elisp/ghc.el

(autoload 'ghc-init "ghc-mod/elisp/ghc" "\


\(fn)" nil nil)

(autoload 'ghc-debug "ghc-mod/elisp/ghc" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (ghc-core-mode ghc-core-create-core) "haskell-mode/ghc-core"
;;;;;;  "haskell-mode/ghc-core.el" (21566 36973 82042 27000))
;;; Generated autoloads from haskell-mode/ghc-core.el

(autoload 'ghc-core-create-core "haskell-mode/ghc-core" "\
Compile and load the current buffer as tidy core.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.hcr\\'" . ghc-core-mode))

(autoload 'ghc-core-mode "haskell-mode/ghc-core" "\
Major mode for GHC Core files.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-align-imports) "haskell-mode/haskell-align-imports"
;;;;;;  "haskell-mode/haskell-align-imports.el" (21566 36973 82042
;;;;;;  27000))
;;; Generated autoloads from haskell-mode/haskell-align-imports.el

(autoload 'haskell-align-imports "haskell-mode/haskell-align-imports" "\
Align all the imports in the buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-c-mode) "haskell-mode/haskell-c" "haskell-mode/haskell-c.el"
;;;;;;  (21566 36973 82042 27000))
;;; Generated autoloads from haskell-mode/haskell-c.el

(add-to-list 'auto-mode-alist '("\\.hsc\\'" . haskell-c-mode))

(autoload 'haskell-c-mode "haskell-mode/haskell-c" "\
Major mode for Haskell FFI files.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-cabal-visit-file haskell-cabal-get-dir
;;;;;;  haskell-cabal-mode) "haskell-mode/haskell-cabal" "haskell-mode/haskell-cabal.el"
;;;;;;  (21566 36973 82042 27000))
;;; Generated autoloads from haskell-mode/haskell-cabal.el

(add-to-list 'auto-mode-alist '("\\.cabal\\'" . haskell-cabal-mode))

(autoload 'haskell-cabal-mode "haskell-mode/haskell-cabal" "\
Major mode for Cabal package description files.

\(fn)" t nil)

(autoload 'haskell-cabal-get-dir "haskell-mode/haskell-cabal" "\
Get the Cabal dir for a new project. Various ways of figuring this out,
   and indeed just prompting the user. Do them all.

\(fn)" nil nil)

(autoload 'haskell-cabal-visit-file "haskell-mode/haskell-cabal" "\
Locate and visit package description file for file visited by current buffer.
This uses `haskell-cabal-find-file' to locate the closest
\".cabal\" file and open it.  This command assumes a common Cabal
project structure where the \".cabal\" file is in the top-folder
of the project, and all files related to the project are in or
below the top-folder.  If called with non-nil prefix argument
OTHER-WINDOW use `find-file-other-window'.

\(fn OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads (haskell-compile) "haskell-mode/haskell-compile"
;;;;;;  "haskell-mode/haskell-compile.el" (21566 36973 82042 27000))
;;; Generated autoloads from haskell-mode/haskell-compile.el

(autoload 'haskell-compile "haskell-mode/haskell-compile" "\
Compile the Haskell program including the current buffer.
Tries to locate the next cabal description in current or parent
folders via `haskell-cabal-find-dir' and if found, invoke
`haskell-compile-cabal-build-command' from the cabal package root
folder. If no cabal package could be detected,
`haskell-compile-command' is used instead.

If prefix argument EDIT-COMMAND is non-nil (and not a negative
prefix `-'), `haskell-compile' prompts for custom compile
command.

If EDIT-COMMAND contains the negative prefix argument `-',
`haskell-compile' calls the alternative command defined in
`haskell-compile-cabal-build-alt-command' if a cabal package was
detected.

`haskell-compile' uses `haskell-compilation-mode' which is
derived from `compilation-mode'. See Info
node `(haskell-mode)compilation' for more details.

\(fn &optional EDIT-COMMAND)" t nil)

;;;***

;;;### (autoloads (haskell-decl-scan-mode turn-on-haskell-decl-scan
;;;;;;  haskell-ds-create-imenu-index) "haskell-mode/haskell-decl-scan"
;;;;;;  "haskell-mode/haskell-decl-scan.el" (21566 36973 82042 27000))
;;; Generated autoloads from haskell-mode/haskell-decl-scan.el

(autoload 'haskell-ds-create-imenu-index "haskell-mode/haskell-decl-scan" "\
Function for finding `imenu' declarations in Haskell mode.
Finds all declarations (classes, variables, imports, instances and
datatypes) in a Haskell file for the `imenu' package.

\(fn)" nil nil)

(autoload 'turn-on-haskell-decl-scan "haskell-mode/haskell-decl-scan" "\
Unconditionally activate `haskell-decl-scan-mode'.

\(fn)" t nil)

(autoload 'haskell-decl-scan-mode "haskell-mode/haskell-decl-scan" "\
Toggle Haskell declaration scanning minor mode on or off.
With a prefix argument ARG, enable minor mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.

See also info node `(haskell-mode)haskell-decl-scan-mode' for
more details about this minor mode.

Top-level declarations are scanned and listed in the menu item
\"Declarations\" (if enabled via option
`haskell-decl-scan-add-to-menubar').  Selecting an item from this
menu will take point to the start of the declaration.

\\[beginning-of-defun] and \\[end-of-defun] move forward and backward to the start of a declaration.

This may link with `haskell-doc-mode'.

For non-literate and LaTeX-style literate scripts, we assume the
common convention that top-level declarations start at the first
column.  For Bird-style literate scripts, we assume the common
convention that top-level declarations start at the third column,
ie. after \"> \".

Anything in `font-lock-comment-face' is not considered for a
declaration.  Therefore, using Haskell font locking with comments
coloured in `font-lock-comment-face' improves declaration scanning.

Literate Haskell scripts are supported: If the value of
`haskell-literate' (set automatically by `literate-haskell-mode')
is `bird', a Bird-style literate script is assumed.  If it is nil
or `tex', a non-literate or LaTeX-style literate script is
assumed, respectively.

Invokes `haskell-decl-scan-mode-hook' on activation.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (haskell-doc-show-type haskell-doc-current-info
;;;;;;  haskell-doc-mode) "haskell-mode/haskell-doc" "haskell-mode/haskell-doc.el"
;;;;;;  (21566 36973 85375 367000))
;;; Generated autoloads from haskell-mode/haskell-doc.el

(autoload 'haskell-doc-mode "haskell-mode/haskell-doc" "\
Enter `haskell-doc-mode' for showing fct types in the echo area.
See variable docstring.

\(fn &optional ARG)" t nil)

(defalias 'turn-on-haskell-doc-mode 'haskell-doc-mode)

(defalias 'turn-on-haskell-doc 'haskell-doc-mode)

(autoload 'haskell-doc-current-info "haskell-mode/haskell-doc" "\
Return the info about symbol at point.
Meant for `eldoc-documentation-function'.

\(fn)" nil nil)

(autoload 'haskell-doc-show-type "haskell-mode/haskell-doc" "\
Show the type of the function near point.
For the function under point, show the type in the echo area.
This information is extracted from the `haskell-doc-prelude-types' alist
of prelude functions and their types, or from the local functions in the
current buffer.

\(fn &optional SYM)" t nil)

;;;***

;;;### (autoloads (haskell-font-lock-choose-keywords) "haskell-mode/haskell-font-lock"
;;;;;;  "haskell-mode/haskell-font-lock.el" (21569 1401 995915 19000))
;;; Generated autoloads from haskell-mode/haskell-font-lock.el

(autoload 'haskell-font-lock-choose-keywords "haskell-mode/haskell-font-lock" "\


\(fn)" nil nil)

;;;***

;;;### (autoloads (haskell-indent-mode turn-on-haskell-indent) "haskell-mode/haskell-indent"
;;;;;;  "haskell-mode/haskell-indent.el" (21566 36973 85375 367000))
;;; Generated autoloads from haskell-mode/haskell-indent.el

(autoload 'turn-on-haskell-indent "haskell-mode/haskell-indent" "\
Turn on ``intelligent'' Haskell indentation mode.

\(fn)" nil nil)

(autoload 'haskell-indent-mode "haskell-mode/haskell-indent" "\
``Intelligent'' Haskell indentation mode.
This deals with the layout rule of Haskell.
\\[haskell-indent-cycle] starts the cycle which proposes new
possibilities as long as the TAB key is pressed.  Any other key
or mouse click terminates the cycle and is interpreted except for
RET which merely exits the cycle.
Other special keys are:
    \\[haskell-indent-insert-equal]
      inserts an =
    \\[haskell-indent-insert-guard]
      inserts an |
    \\[haskell-indent-insert-otherwise]
      inserts an | otherwise =
these functions also align the guards and rhs of the current definition
    \\[haskell-indent-insert-where]
      inserts a where keyword
    \\[haskell-indent-align-guards-and-rhs]
      aligns the guards and rhs of the region
    \\[haskell-indent-put-region-in-literate]
      makes the region a piece of literate code in a literate script

Invokes `haskell-indent-hook' if not nil.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (turn-on-haskell-indentation haskell-indentation-mode)
;;;;;;  "haskell-mode/haskell-indentation" "haskell-mode/haskell-indentation.el"
;;;;;;  (21566 36973 85375 367000))
;;; Generated autoloads from haskell-mode/haskell-indentation.el

(autoload 'haskell-indentation-mode "haskell-mode/haskell-indentation" "\
Haskell indentation mode that deals with the layout rule.
It rebinds RET, DEL and BACKSPACE, so that indentations can be
set and deleted as if they were real tabs.  It supports
autofill-mode.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-indentation "haskell-mode/haskell-indentation" "\
Turn on the haskell-indentation minor mode.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-interactive-mode-reset-error haskell-interactive-mode-echo
;;;;;;  haskell-interactive-switch haskell-interactive-bring haskell-interactive-mode)
;;;;;;  "haskell-mode/haskell-interactive-mode" "haskell-mode/haskell-interactive-mode.el"
;;;;;;  (21566 36973 85375 367000))
;;; Generated autoloads from haskell-mode/haskell-interactive-mode.el

(autoload 'haskell-interactive-mode "haskell-mode/haskell-interactive-mode" "\
Interactive mode for Haskell.

See Info node `(haskell-mode)haskell-interactive-mode' for more
information.

Key bindings:
\\{haskell-interactive-mode-map}

\(fn)" t nil)

(autoload 'haskell-interactive-bring "haskell-mode/haskell-interactive-mode" "\
Bring up the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-interactive-switch "haskell-mode/haskell-interactive-mode" "\
Switch to the interactive mode for this session.

\(fn)" t nil)

(autoload 'haskell-interactive-mode-echo "haskell-mode/haskell-interactive-mode" "\
Echo a read only piece of text before the prompt.

\(fn SESSION MESSAGE &optional MODE)" nil nil)

(autoload 'haskell-interactive-mode-reset-error "haskell-mode/haskell-interactive-mode" "\
Reset the error cursor position.

\(fn SESSION)" t nil)

;;;***

;;;### (autoloads (haskell-menu) "haskell-mode/haskell-menu" "haskell-mode/haskell-menu.el"
;;;;;;  (21566 36973 85375 367000))
;;; Generated autoloads from haskell-mode/haskell-menu.el

(autoload 'haskell-menu "haskell-mode/haskell-menu" "\
Launch the Haskell sessions menu.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-hayoo hoogle-lookup-from-local haskell-hoogle
;;;;;;  literate-haskell-mode haskell-mode haskell-customize haskell-mode-view-news
;;;;;;  haskell-version) "haskell-mode/haskell-mode" "haskell-mode/haskell-mode.el"
;;;;;;  (21566 36973 85375 367000))
;;; Generated autoloads from haskell-mode/haskell-mode.el

(autoload 'haskell-version "haskell-mode/haskell-mode" "\
Show the `haskell-mode` version in the echo area.
With prefix argument HERE, insert it at point.
When FULL is non-nil, use a verbose version string.
When MESSAGE is non-nil, display a message with the version.

\(fn &optional HERE)" t nil)

(autoload 'haskell-mode-view-news "haskell-mode/haskell-mode" "\
Display information on recent changes to haskell-mode.

\(fn)" t nil)

(autoload 'haskell-customize "haskell-mode/haskell-mode" "\
Browse the haskell customize sub-tree.
This calls 'customize-browse' with haskell as argument and makes
sure all haskell customize definitions have been loaded.

\(fn)" t nil)

(defvar haskell-mode-map (let ((map (make-sparse-keymap))) (define-key map (kbd "C-c C-.") 'haskell-mode-format-imports) (define-key map [remap delete-indentation] 'haskell-delete-indentation) (define-key map (kbd "C-c C-l") 'haskell-mode-enable-process-minor-mode) (define-key map (kbd "C-c C-b") 'haskell-mode-enable-process-minor-mode) (define-key map (kbd "C-c C-v") 'haskell-mode-enable-process-minor-mode) (define-key map (kbd "C-c C-t") 'haskell-mode-enable-process-minor-mode) (define-key map (kbd "C-c C-i") 'haskell-mode-enable-process-minor-mode) map) "\
Keymap used in Haskell mode.")

(autoload 'haskell-mode "haskell-mode/haskell-mode" "\
Major mode for editing Haskell programs.

See also Info node `(haskell-mode)Getting Started' for more
information about this mode.

\\<haskell-mode-map>
Literate scripts are supported via `literate-haskell-mode'.
The variable `haskell-literate' indicates the style of the script in the
current buffer.  See the documentation on this variable for more details.

Use `haskell-version' to find out what version of Haskell mode you are
currently using.

Additional Haskell mode modules can be hooked in via `haskell-mode-hook';
see documentation for that variable for more details.

\(fn)" t nil)

(autoload 'literate-haskell-mode "haskell-mode/haskell-mode" "\
As `haskell-mode' but for literate scripts.

\(fn)" t nil)
(add-to-list 'auto-mode-alist        '("\\.\\(?:[gh]s\\|hi\\)\\'" . haskell-mode))
(add-to-list 'auto-mode-alist        '("\\.l[gh]s\\'" . literate-haskell-mode))
(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))
(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))

(autoload 'haskell-hoogle "haskell-mode/haskell-mode" "\
Do a Hoogle search for QUERY.
When `haskell-hoogle-command' is non-nil, this command runs
that.  Otherwise, it opens a hoogle search result in the browser.

If prefix argument INFO is given, then `haskell-hoogle-command'
is asked to show extra info for the items matching QUERY..

\(fn QUERY &optional INFO)" t nil)

(defalias 'hoogle 'haskell-hoogle)

(autoload 'hoogle-lookup-from-local "haskell-mode/haskell-mode" "\
Lookup by local hoogle.

\(fn)" t nil)

(autoload 'haskell-hayoo "haskell-mode/haskell-mode" "\
Do a Hayoo search for QUERY.

\(fn QUERY)" t nil)

(defalias 'hayoo 'haskell-hayoo)

;;;***

;;;### (autoloads (haskell-move-nested-left haskell-move-nested-right
;;;;;;  haskell-move-nested) "haskell-mode/haskell-move-nested" "haskell-mode/haskell-move-nested.el"
;;;;;;  (21566 36973 85375 367000))
;;; Generated autoloads from haskell-mode/haskell-move-nested.el

(autoload 'haskell-move-nested "haskell-mode/haskell-move-nested" "\
Shift the nested off-side-rule block adjacent to point by COLS columns to the right.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" nil nil)

(autoload 'haskell-move-nested-right "haskell-mode/haskell-move-nested" "\
Increase indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

(autoload 'haskell-move-nested-left "haskell-mode/haskell-move-nested" "\
Decrease indentation of the following off-side-rule block adjacent to point.

Use a numeric prefix argument to indicate amount of indentation to apply.

In Transient Mark mode, if the mark is active, operate on the contents
of the region instead.

\(fn COLS)" t nil)

;;;***

;;;### (autoloads (haskell-navigate-imports-return haskell-navigate-imports-go
;;;;;;  haskell-navigate-imports) "haskell-mode/haskell-navigate-imports"
;;;;;;  "haskell-mode/haskell-navigate-imports.el" (21566 36973 85375
;;;;;;  367000))
;;; Generated autoloads from haskell-mode/haskell-navigate-imports.el

(autoload 'haskell-navigate-imports "haskell-mode/haskell-navigate-imports" "\
Cycle the Haskell import lines or return to point (with prefix arg).

\(fn &optional RETURN)" t nil)

(autoload 'haskell-navigate-imports-go "haskell-mode/haskell-navigate-imports" "\
Go to the first line of a list of consequtive import lines. Cycles.

\(fn)" t nil)

(autoload 'haskell-navigate-imports-return "haskell-mode/haskell-navigate-imports" "\
Return to the non-import point we were at before going to the module list.
   If we were originally at an import list, we can just cycle through easily.

\(fn)" t nil)

;;;***

;;;### (autoloads (interactive-haskell-mode haskell-process haskell-process-start
;;;;;;  haskell-process-cabal haskell-process-cabal-build haskell-process-load-or-reload
;;;;;;  haskell-process-reload-file haskell-process-load-file haskell-process-do-info
;;;;;;  haskell-process-do-type haskell-process-generate-tags) "haskell-mode/haskell-process"
;;;;;;  "haskell-mode/haskell-process.el" (21569 1401 995915 19000))
;;; Generated autoloads from haskell-mode/haskell-process.el

(autoload 'haskell-process-generate-tags "haskell-mode/haskell-process" "\
Regenerate the TAGS table.

\(fn &optional AND-THEN-FIND-THIS-TAG)" t nil)

(autoload 'haskell-process-do-type "haskell-mode/haskell-process" "\
Print the type of the given expression.

\(fn &optional INSERT-VALUE)" t nil)

(autoload 'haskell-process-do-info "haskell-mode/haskell-process" "\
Print info on the identifier at point.
If PROMPT-VALUE is non-nil, request identifier via mini-buffer.

\(fn &optional PROMPT-VALUE)" t nil)

(autoload 'haskell-process-load-file "haskell-mode/haskell-process" "\
Load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-reload-file "haskell-mode/haskell-process" "\
Re-load the current buffer file.

\(fn)" t nil)

(autoload 'haskell-process-load-or-reload "haskell-mode/haskell-process" "\
Load or reload. Universal argument toggles which.

\(fn &optional TOGGLE)" t nil)

(autoload 'haskell-process-cabal-build "haskell-mode/haskell-process" "\
Build the Cabal project.

\(fn)" t nil)

(autoload 'haskell-process-cabal "haskell-mode/haskell-process" "\
Prompts for a Cabal command to run.

\(fn P)" t nil)

(autoload 'haskell-process-start "haskell-mode/haskell-process" "\
Start the inferior Haskell process.

\(fn SESSION)" nil nil)

(autoload 'haskell-process "haskell-mode/haskell-process" "\
Get the current process from the current session.

\(fn)" nil nil)

(autoload 'interactive-haskell-mode "haskell-mode/haskell-process" "\
Minor mode for enabling haskell-process interaction.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (haskell-session-process haskell-session haskell-session-maybe
;;;;;;  haskell-session-installed-modules haskell-session-all-modules)
;;;;;;  "haskell-mode/haskell-session" "haskell-mode/haskell-session.el"
;;;;;;  (21566 36973 88708 709000))
;;; Generated autoloads from haskell-mode/haskell-session.el

(autoload 'haskell-session-all-modules "haskell-mode/haskell-session" "\
Get all modules -- installed or in the current project.
If DONTCREATE is non-nil don't create a new session.

\(fn &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-installed-modules "haskell-mode/haskell-session" "\
Get the modules installed in the current package set.
If DONTCREATE is non-nil don't create a new session.

\(fn &optional DONTCREATE)" nil nil)

(autoload 'haskell-session-maybe "haskell-mode/haskell-session" "\
Maybe get the Haskell session, return nil if there isn't one.

\(fn)" nil nil)

(autoload 'haskell-session "haskell-mode/haskell-session" "\
Get the Haskell session, prompt if there isn't one or fail.

\(fn)" nil nil)

(autoload 'haskell-session-process "haskell-mode/haskell-session" "\
Get the session process.

\(fn S)" nil nil)

;;;***

;;;### (autoloads (haskell-show-parse haskell-show-parse-and-insert
;;;;;;  haskell-show-replace) "haskell-mode/haskell-show" "haskell-mode/haskell-show.el"
;;;;;;  (21566 36973 88708 709000))
;;; Generated autoloads from haskell-mode/haskell-show.el

(autoload 'haskell-show-replace "haskell-mode/haskell-show" "\
Replace the given region containing a Show value with a pretty
  printed collapsible version.

\(fn START END)" nil nil)

(autoload 'haskell-show-parse-and-insert "haskell-mode/haskell-show" "\
Parse a `string' containing a Show instance value and insert
  it pretty printed into the current buffer.

\(fn GIVEN)" nil nil)

(autoload 'haskell-show-parse "haskell-mode/haskell-show" "\
Parse the given input into a tree.

\(fn GIVEN)" nil nil)

;;;***

;;;### (autoloads (turn-on-haskell-simple-indent haskell-simple-indent-mode)
;;;;;;  "haskell-mode/haskell-simple-indent" "haskell-mode/haskell-simple-indent.el"
;;;;;;  (21566 36973 88708 709000))
;;; Generated autoloads from haskell-mode/haskell-simple-indent.el

(autoload 'haskell-simple-indent-mode "haskell-mode/haskell-simple-indent" "\
Simple Haskell indentation mode that uses simple heuristic.
In this minor mode, `indent-for-tab-command' (bound to <tab> by
default) will move the cursor to the next indent point in the
previous nonblank line, whereas `haskell-simple-indent-backtab'
\(bound to <backtab> by default) will move the cursor the
previous indent point.  An indent point is a non-whitespace
character following whitespace.

Runs `haskell-simple-indent-hook' on activation.

\(fn &optional ARG)" t nil)

(autoload 'turn-on-haskell-simple-indent "haskell-mode/haskell-simple-indent" "\
Turn on function `haskell-simple-indent-mode'.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-sort-imports) "haskell-mode/haskell-sort-imports"
;;;;;;  "haskell-mode/haskell-sort-imports.el" (21566 36973 88708
;;;;;;  709000))
;;; Generated autoloads from haskell-mode/haskell-sort-imports.el

(autoload 'haskell-sort-imports "haskell-mode/haskell-sort-imports" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-is-prefix-of haskell-string-take haskell-trim)
;;;;;;  "haskell-mode/haskell-string" "haskell-mode/haskell-string.el"
;;;;;;  (21566 36973 88708 709000))
;;; Generated autoloads from haskell-mode/haskell-string.el

(autoload 'haskell-trim "haskell-mode/haskell-string" "\


\(fn STRING)" nil nil)

(autoload 'haskell-string-take "haskell-mode/haskell-string" "\
Take n chars from string.

\(fn STRING N)" nil nil)

(autoload 'haskell-is-prefix-of "haskell-mode/haskell-string" "\
Is x string a prefix of y string?

\(fn X Y)" nil nil)

;;;***

;;;### (autoloads (turn-on-haskell-unicode-input-method) "haskell-mode/haskell-unicode-input-method"
;;;;;;  "haskell-mode/haskell-unicode-input-method.el" (21566 36973
;;;;;;  88708 709000))
;;; Generated autoloads from haskell-mode/haskell-unicode-input-method.el

(autoload 'turn-on-haskell-unicode-input-method "haskell-mode/haskell-unicode-input-method" "\
Set input method `haskell-unicode'.
See Info node `Unicode(haskell-mode)' for more details.

\(fn)" t nil)

;;;***

;;;### (autoloads (haskell-snippets-initialize haskell-yas-complete)
;;;;;;  "haskell-mode/haskell-yas" "haskell-mode/haskell-yas.el"
;;;;;;  (21566 36973 88708 709000))
;;; Generated autoloads from haskell-mode/haskell-yas.el

(autoload 'haskell-yas-complete "haskell-mode/haskell-yas" "\


\(fn &rest ARGS)" nil nil)

(autoload 'haskell-snippets-initialize "haskell-mode/haskell-yas" "\
Register haskell snippets with yasnippet.

\(fn)" nil nil)

(eval-after-load 'yasnippet '(haskell-snippets-initialize))

;;;***

;;;### (autoloads (inf-haskell-mode inferior-haskell-find-haddock
;;;;;;  inferior-haskell-find-definition inferior-haskell-info inferior-haskell-kind
;;;;;;  inferior-haskell-type inferior-haskell-send-decl inferior-haskell-load-and-run
;;;;;;  inferior-haskell-load-file switch-to-haskell) "haskell-mode/inf-haskell"
;;;;;;  "haskell-mode/inf-haskell.el" (21566 36973 88708 709000))
;;; Generated autoloads from haskell-mode/inf-haskell.el

(defalias 'run-haskell 'switch-to-haskell)

(autoload 'switch-to-haskell "haskell-mode/inf-haskell" "\
Show the inferior-haskell buffer.  Start the process if needed.

\(fn &optional ARG)" t nil)

(autoload 'inferior-haskell-load-file "haskell-mode/inf-haskell" "\
Pass the current buffer's file to the inferior haskell process.
If prefix arg \\[universal-argument] is given, just reload the previous file.

\(fn &optional RELOAD)" t nil)

(autoload 'inferior-haskell-load-and-run "haskell-mode/inf-haskell" "\
Pass the current buffer's file to haskell and then run a COMMAND.

\(fn COMMAND)" t nil)

(autoload 'inferior-haskell-send-decl "haskell-mode/inf-haskell" "\
Send current declaration to inferior-haskell process.

\(fn)" t nil)

(autoload 'inferior-haskell-type "haskell-mode/inf-haskell" "\
Query the haskell process for the type of the given expression.
If optional argument `insert-value' is non-nil, insert the type above point
in the buffer.  This can be done interactively with the \\[universal-argument] prefix.
The returned info is cached for reuse by `haskell-doc-mode'.

\(fn EXPR &optional INSERT-VALUE)" t nil)

(autoload 'inferior-haskell-kind "haskell-mode/inf-haskell" "\
Query the haskell process for the kind of the given expression.

\(fn TYPE)" t nil)

(autoload 'inferior-haskell-info "haskell-mode/inf-haskell" "\
Query the haskell process for the info of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-definition "haskell-mode/inf-haskell" "\
Attempt to locate and jump to the definition of the given expression.

\(fn SYM)" t nil)

(autoload 'inferior-haskell-find-haddock "haskell-mode/inf-haskell" "\
Find and open the Haddock documentation of SYM.
Make sure to load the file into GHCi or Hugs first by using C-c C-l.
Only works for functions in a package installed with ghc-pkg, or
whatever the value of `haskell-package-manager-name' is.

This function needs to find which package a given module belongs
to.  In order to do this, it computes a module-to-package lookup
alist, which is expensive to compute (it takes upwards of five
seconds with more than about thirty installed packages).  As a
result, we cache it across sessions using the cache file
referenced by `inferior-haskell-module-alist-file'. We test to
see if this is newer than `haskell-package-conf-file' every time
we load it.

\(fn SYM)" t nil)

(autoload 'inf-haskell-mode "haskell-mode/inf-haskell" "\
Minor mode for enabling inf-haskell process interaction.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (pkg-info-version-info pkg-info-package-version
;;;;;;  pkg-info-defining-library-version pkg-info-defining-library-original-version
;;;;;;  pkg-info-library-version pkg-info-library-original-version)
;;;;;;  "pkg-info/pkg-info" "pkg-info/pkg-info.el" (21566 36993 805421
;;;;;;  68000))
;;; Generated autoloads from pkg-info/pkg-info.el

(autoload 'pkg-info-library-original-version "pkg-info/pkg-info" "\
Get the original version in the header of LIBRARY.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no X-Original-Version
header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-library-version "pkg-info/pkg-info" "\
Get the version in the header of LIBRARY.

LIBRARY is either a symbol denoting a named feature, or a library
name as string.

If SHOW is non-nil, show the version in the minibuffer.

Return the version from the header of LIBRARY as list.  Signal an
error if the LIBRARY was not found or had no proper header.

See Info node `(elisp)Library Headers' for more information
about library headers.

\(fn LIBRARY &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-original-version "pkg-info/pkg-info" "\
Get the original version of the library defining FUNCTION.

The original version is stored in the X-Original-Version header.
This header is added by the MELPA package archive to preserve
upstream version numbers.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-defining-library-version "pkg-info/pkg-info" "\
Get the version of the library defining FUNCTION.

If SHOW is non-nil, show the version in mini-buffer.

This function is mainly intended to find the version of a major
or minor mode, i.e.

   (pkg-info-defining-library-version 'flycheck-mode)

Return the version of the library defining FUNCTION.  Signal an
error if FUNCTION is not a valid function, if its defining
library was not found, or if the library had no proper version
header.

\(fn FUNCTION &optional SHOW)" t nil)

(autoload 'pkg-info-package-version "pkg-info/pkg-info" "\
Get the version of an installed PACKAGE.

If SHOW is non-nil, show the version in the minibuffer.

Return the version as list, or nil if PACKAGE is not installed.

\(fn PACKAGE &optional SHOW)" t nil)

(autoload 'pkg-info-version-info "pkg-info/pkg-info" "\
Obtain complete version info for LIBRARY and PACKAGE.

LIBRARY is a symbol denoting a named feature, or a library name
as string.  PACKAGE is a symbol denoting an ELPA package.  If
omitted or nil, default to LIBRARY.

If SHOW is non-nil, show the version in the minibuffer.

When called interactively, prompt for LIBRARY.  When called
interactively with prefix argument, prompt for PACKAGE as well.

Return a string with complete version information for LIBRARY.
This version information contains the version from the headers of
LIBRARY, and the version of the installed PACKAGE, the LIBRARY is
part of.  If PACKAGE is not installed, or if the PACKAGE version
is the same as the LIBRARY version, do not include a package
version.

\(fn LIBRARY &optional PACKAGE SHOW)" t nil)

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (21566 36758 254496 55000))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("ac-R/ac-R.el" "auto-complete-clang/auto-complete-clang.el"
;;;;;;  "auto-complete/auto-complete-pkg.el" "cc-mode+/cc-mode+.el"
;;;;;;  "dash/dash-functional.el" "dash/dash.el" "el-get/el-get-autoloads.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "epl/epl.el"
;;;;;;  "f/f.el" "fuzzy/fuzzy.el" "ghc-mod/elisp/ghc-check.el" "ghc-mod/elisp/ghc-command.el"
;;;;;;  "ghc-mod/elisp/ghc-comp.el" "ghc-mod/elisp/ghc-doc.el" "ghc-mod/elisp/ghc-func.el"
;;;;;;  "ghc-mod/elisp/ghc-indent.el" "ghc-mod/elisp/ghc-info.el"
;;;;;;  "ghc-mod/elisp/ghc-ins-mod.el" "ghc-mod/elisp/ghc-pkg.el"
;;;;;;  "ghc-mod/elisp/ghc-process.el" "ghc-mod/elisp/ghc-rewrite.el"
;;;;;;  "haskell-mode/haskell-bot.el" "haskell-mode/haskell-checkers.el"
;;;;;;  "haskell-mode/haskell-collapse.el" "haskell-mode/haskell-compat.el"
;;;;;;  "haskell-mode/haskell-complete-module.el" "haskell-mode/haskell-debug.el"
;;;;;;  "haskell-mode/haskell-mode-autoloads.el" "haskell-mode/haskell-package.el"
;;;;;;  "haskell-mode/haskell-presentation-mode.el" "haskell-mode/haskell-str.el"
;;;;;;  "haskell-mode/haskell-utils.el" "haskell-mode/w3m-haddock.el"
;;;;;;  "popup/popup.el" "s/s.el" "yasnippet/yasnippet-debug.el"
;;;;;;  "yasnippet/yasnippet-tests.el" "yasnippets/yasnippets.el")
;;;;;;  (21569 1502 92115 15000))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
