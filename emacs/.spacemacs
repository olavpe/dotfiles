;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   ;; dotspacemacs-enable-lazy-installation 'all
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(csv
     bm
     javascript
     yaml
     octave
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     auto-completion
     (c-c++ :variables
            c-c++-enable-clang-support t)
     better-defaults
     conda
     emacs-lisp
     ess
     ;; +lang
     ;; (extra-langs :variables matlab-mode)
     git
     markdown
     (latex :variables
            latex-build-command "LaTeX"
            latex-enable-auto-fill t
            latex-enable-folding t
            latex-enable-magic t)
     pandoc
     python
     pdf
     ;; (python :variables python-backend 'lsp)
     ;; ipython-notebook
     org
     (shell :variables
            shell-default-shell 'shell
            shell-default-height 30
            shell-default-position 'bottom)
     (spacemacs-spaceline :location local)
     spell-checking
     syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ein
                                      jupyter
                                      xresources-theme
                                      ;; org-bullets
                                      org-pdftools
                                      ;; ewal
                                      ewal-spacemacs-themes
                                      ewal-evil-cursors
                                      autopair
                                      matlab-mode
                                      yasnippet-classic-snippets
                                      yasnippet-snippets
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa t

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         ;; xresources
                         ewal-spacemacs-modern
                         ;; spacemacs-dark
                         ;;spacemacs-light
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq spacemacs-theme-comment-bg nil)
  (setenv "WORKON_HOME" "/home/olav/.conda/envs")
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;;;;; Programming settings

  ;; C
  (add-hook 'c-mode-hook (lambda () (c-toggle-comment-style -1)))
  ;; Python
  (add-hook 'python-mode-hook 'anaconda-mode)
  (setq-default dotspacemacs-configuration-layers
                '((conda :variables conda-anaconda-home "/home/olav/.conda/envs")))

  ;; Matlab
  (defun init-matlab ()
    "Initializes my configuration for matlab mode."
    (interactive)
    (setq matlab-indent-function "")
    (setq matlab-shell-command ""))

  (add-hook 'matlab-mode-hook 'init-matlab)

  ;;;;; ------- PDF settings-------- ;;;;;

  ;;;;; ------- Latex and Markdown Settings -------- ;;;;;

  ;;; --- Markdown
  (add-hook 'markdown-mode-hook 'pandoc-mode)
  (setq markdown-command "/usr/bin/pandoc")
  ;; Turning on automatic newline
  (add-hook 'markdown-mode-hook '(lambda () (setq fill-column 80)))
  (add-hook 'markdown-mode-hook 'auto-fill-mode)
  (add-hook 'markdown-mode-hook 'turn-on-font-lock)

  ;; Latex
  (setq-default TeX-master "main")
  (setq TeX-source-correlate-mode t)
  (setq TeX-source-correlate-start-server t)
  (setq TeX-source-correlate-method 'synctex)
  (setq TeX-PDF-mode t)
  (setq reftex-cite-format 'natbib)
  (setq reftex-index-phrases-case-fold-search t)

  ;; To get the build files to be created in separate folder
  (add-hook 'LaTeX-mode-hook (lambda ()
                               (push
                                '("Latex_outdir" "%`pdflatex --output-directory=/tmp %(mode)%' %t"
                                  TeX-run-TeX nil (latex-mode doctex-mode)
                                  :help "Run pdflatex with output in /tmp")
                                TeX-command-list)))

  ;; (setq TeX-view-program-list
  ;;       '(("Okular" "okular --unique %o#src:%n`pwd`/./%b")
  ;;         ;; ("Skim" "displayline -b -g %n %o %b")
  ;;         ("Zathura"
  ;;          ("zathura %o"
  ;;           (mode-io-correlate
  ;;            " --synctex-forward %n:0:%b -x \"emacsclient +%{line} %{input}\"")))))
  ;; (cond
  ;;  ;; ((spacemacs/system-is-mac) (setq TeX-view-program-selection '((output-pdf "Skim"))))
  ;;  ;; For linux, use Okular or perhaps Zathura.
  ;;  ((spacemacs/system-is-linux) (setq TeX-view-program-selection '((output-pdf "Zathura")))))

  ;; Function that builds pdf when saving latex file
  (defun run-latex ()
    (interactive)
    (let ((process (TeX-active-process))) (if process (delete-process process)))
    (let ((TeX-save-query nil)) (TeX-save-document ""))
    (TeX-command-menu "latex/build"))
  ;; (add-hook 'LaTeX-mode-hook (lambda () (local-set-key (kbd ":w") #'run-latex)))

  ;; ORG-MODE

  ;; Getting org mode to play nice yasnippet
  ;; (add-hook 'org-mode-hook
  ;;           (lambda ()
  ;;             (setq-local yas/trigger-key [tab])
  ;;             (define-key yas/keymap [tab] 'yas/next-field-or-maybe-expand)))
  ;; (use-package org-bullets
    ;; :hook (org-mode . org-bullets-mode))
  (setq org-todo-keywords '((sequence "TODO(t)" "PROGRESS(p)" "WAIT(w)" "|" "DONE(d)" "CANCEL(c)")))
  ;; (use-package org-bullets
  ;;   :hook (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

  ;; Turning on automatic newline
  (add-hook 'org-mode-hook '(lambda () (setq fill-column 80)))
  (add-hook 'org-mode-hook 'auto-fill-mode)
  (add-hook 'org-mode-hook 'turn-on-font-lock)
  (setq org-ellipsis "⤵")
  (add-hook 'org-mode-hook 'org-superstar-mode)
  (setq org-hide-leading-stars nil)
  (setq org-superstar-leading-bullet ?\s)

  ;; Function to change the status of a TODO to DONE when checkboxes are full
  (defun my/org-checkbox-todo ()
    "Switch header TODO state to DONE when all checkboxes are ticked, to TODO otherwise"
    (let ((todo-state (org-get-todo-state)) beg end)
      (unless (not todo-state)
        (save-excursion
          (org-back-to-heading t)
          (setq beg (point))
          (end-of-line)
          (setq end (point))
          (goto-char beg)
          (if (re-search-forward "\\[\\([0-9]*%\\)\\]\\|\\[\\([0-9]*\\)/\\([0-9]*\\)\\]"
                                 end t)
              (if (match-end 1)
                  (if (equal (match-string 1) "100%")
                      (unless (string-equal todo-state "DONE")
                        (org-todo 'done))
                    (unless (string-equal todo-state "TODO")
                      (org-todo 'todo)))
                (if (and (> (match-end 2) (match-beginning 2))
                         (equal (match-string 2) (match-string 3)))
                    (unless (string-equal todo-state "DONE")
                      (org-todo 'done))
                  (unless (string-equal todo-state "TODO")
                    (org-todo 'todo)))))))))

  (add-hook 'org-checkbox-statistics-hook 'my/org-checkbox-todo)
  ;; (use-package org-pdftools
  ;;   :ensure nil
  ;;   :quelpa ((org-pdftools
  ;;             :fetcher git
  ;;             :url "https://github.com/fuxialexander/org-pdftools.git"
  ;;             :upgrade nil)))

  ;; (use-package org-pdftools
  ;;   :straight (org-pdftools :type git :host github :repo "fuxialexander/org-pdftools")
  ;;   ;; :config (setq org-pdftools-root-dir "~/qnet/ref-pdfs/")
  ;;   (with-eval-after-load 'org
  ;;     (org-link-set-parameters "pdftools"
  ;;                              :follow #'org-pdftools-open
  ;;                              :complete #'org-pdftools-complete-link
  ;;                              :store #'org-pdftools-store-link
  ;;                              :export #'org-pdftools-export)
  ;;     (add-hook 'org-store-link-functions 'org-pdftools-store-link)))

  (use-package org-pdftools
    :hook (org-mode . org-pdftools-setup-link))

  (use-package org-noter-pdftools
    :after org-noter
    :config
    (with-eval-after-load 'pdf-annot
      (add-hook 'pdf-annot-activate-handler-functions #'org-noter-pdftools-jump-to-note)))

  ;;;;; Theme Stuff

  (use-package ewal-evil-cursors
    :after (ewal-spacemacs-themes)
    :config (ewal-evil-cursors-get-colors
             :apply t :spaceline t))
  (use-package spaceline
    :after (ewal-evil-cursors winum)
    :init (setq powerline-default-separator nil)
    :config (spaceline-spacemacs-theme))

  ;; Trying Ewal
  ;; (use-package ewal
  ;;   :init (setq ewal-use-built-in-always-p nil
  ;;               ewal-use-built-in-on-failure-p t
  ;;               ewal-built-in-palette "sexy-material"))
  ;; (use-package ewal-spacemacs-themes
  ;;   ;; :defer nil
  ;;   :init (progn
  ;;           (setq spacemacs-theme-underline-parens t
  ;;                 my:rice:font (font-spec
  ;;                               :family "Sauce Code Pro Nerd Font"
  ;;                               ;; :weight 'semi-bold
  ;;                               :size 10.0))
  ;;           )
  ;;           (show-paren-mode +1)
  ;;           (global-hl-line-mode)
  ;;           (set-frame-font my:rice:font nil t)
  ;;           (add-to-list 'default-frame-alist
  ;;                        `(font . ,(font-xlfd-name my:rice:font)))
  ;;   :config (progn
  ;;             (load-theme 'ewal-spacemacs-modern t)
  ;;             (enable-theme 'ewal-spacemacs-modern)))

  ;; Xresources (that is functional)
  ;; (load-theme 'xresources t)

  ;; Disabling highlighting for comments
  (global-hl-line-mode -1)
  (spacemacs/toggle-highlight-current-line-globally-off)

  (defvar org-latex-fragment-last nil
  "Holds last fragment/environment you were on.")

  (defun org-latex-fragment-toggle ()
    "Toggle a latex fragment image "
    (and (eq 'org-mode major-mode)
        (let* ((el (org-element-context))
                (el-type (car el)))
          (cond
            ;; were on a fragment and now on a new fragment
            ((and
              ;; fragment we were on
              org-latex-fragment-last
              ;; and are on a fragment now
              (or
              (eq 'latex-fragment el-type)
              (eq 'latex-environment el-type))
              ;; but not on the last one this is a little tricky. as you edit the
              ;; fragment, it is not equal to the last one. We use the begin
              ;; property which is less likely to change for the comparison.
              (not (= (org-element-property :begin el)
                      (org-element-property :begin org-latex-fragment-last))))
            ;; go back to last one and put image back
            (save-excursion
              (goto-char (org-element-property :begin org-latex-fragment-last))
              (org-preview-latex-fragment))
            ;; now remove current image
            (goto-char (org-element-property :begin el))
            (let ((ov (loop for ov in org-latex-fragment-image-overlays
                            if
                            (and
                              (<= (overlay-start ov) (point))
                              (>= (overlay-end ov) (point)))
                            return ov)))
              (when ov
                (delete-overlay ov)))
            ;; and save new fragment
            (setq org-latex-fragment-last el))

            ;; were on a fragment and now are not on a fragment
            ((and
              ;; not on a fragment now
              (not (or
                    (eq 'latex-fragment el-type)
                    (eq 'latex-environment el-type)))
              ;; but we were on one
              org-latex-fragment-last)
            ;; put image back on
            (save-excursion
              (goto-char (org-element-property :begin org-latex-fragment-last))
              (org-preview-latex-fragment))
            ;; unset last fragment
            (setq org-latex-fragment-last nil))

            ;; were not on a fragment, and now are
            ((and
              ;; we were not one one
              (not org-latex-fragment-last)
              ;; but now we are
              (or
              (eq 'latex-fragment el-type)
              (eq 'latex-environment el-type)))
            (goto-char (org-element-property :begin el))
            ;; remove image
            (let ((ov (loop for ov in org-latex-fragment-image-overlays
                            if
                            (and
                              (<= (overlay-start ov) (point))
                              (>= (overlay-end ov) (point)))
                            return ov)))
              (when ov
                (delete-overlay ov)))
            (setq org-latex-fragment-last el))))))


  (add-hook 'post-command-hook 'org-latex-fragment-toggle)

  ;; For autopairing in org-mode
  (with-eval-after-load 'org
    ;; (modify-syntax-entry ?/ "(/" org-mode-syntax-table)
    ;; (modify-syntax-entry ?= "(=" org-mode-syntax-table)
    (modify-syntax-entry ?\$ "($" org-mode-syntax-table)
    (modify-syntax-entry ?\( "()" org-mode-syntax-table)
    (modify-syntax-entry ?\[ "(]" org-mode-syntax-table)
    (add-hook 'org-mode-hook 'electric-pair-mode))

  ;; (use-package ewal-spacemacs-themes
  ;;   ;; :straight t
  ;;   :defer nil
  ;;   :init (setq ewal-force-tty-colors nil
  ;;               ewal-force-tty-colors-daemon nil)
  ;;   :config (when (ewal-load-wal-colors)
  ;;             (load-theme 'ewal-spacemacs-modern t))
  ;;   :hook (spacemacs-post-user-config
  ;;          . (lambda () (enable-theme 'ewal-spacemacs-modern))))
  ;; (use-package ewal-evil-cursors
  ;;   :after (ewal-spacemacs-themes)
  ;;   :config (ewal-evil-cursors-get-colors
  ;;            :apply t :spaceline t))
  ;; (add-to-list 'TeX-expand-list
  ;;              '("%sn" (lambda () server-name)))
  ;; (add-to-list 'TeX-view-program-list
  ;;              '("Zathura"
  ;;                ("zathura %o"
  ;;                 (mode-io-correlate " --synctex-forward %n:0:%b -x \"emacsclient --socket-name=%sn --no-wait +%{line} %{input}\""))
  ;;                "zathura"))

  ;; This is for using the built in pdfviewer in emacs
  (setq-default TeX-master "main") ;; All master files called "main".
  (setq TeX-view-program-selection '((output-pdf "PDF Tools"))
        TeX-view-program-list '(("PDF Tools" TeX-pdf-tools-sync-view))
        TeX-source-correlate-start-server t)

  ;; This is to use Zathura as the pdfviewer
  ;; (setq TeX-source-correlate-mode t)        ; activate forward/reverse search
  ;; (setq TeX-PDF-mode t)
  ;; (add-to-list 'TeX-view-program-list '("zathura" zathura-forward-search))
  ;; (setq TeX-view-program-selection (quote ((output-pdf "zathura") (output-dvi "xdvi"))))

  ;; Suggested Zathura system
;;   (defvar TeX-view-program-list-builtin
;;   (cond
;;    ((eq system-type 'windows-nt)
;;     '(("Yap" ("yap -1" (mode-io-correlate " -s %n%b") " %o") "yap")
;;       ("dviout" ("dviout -1 "
;; 		 ((paper-a4 paper-portrait) "-y=A4 ")
;; 		 ((paper-a4 paper-landscape) "-y=A4L ")
;; 		 ((paper-a5 paper-portrait) "-y=A5 ")
;; 		 ((paper-a5 paper-landscape) "-y=A5L ")
;; 		 ((paper-b5 paper-portrait) "-y=E5 ")
;; 		 ((paper-b5 paper-landscape) "-y=E5L ")
;; 		 ((paper-b4jis paper-portrait) "-y=B4 ")
;; 		 ((paper-b4jis paper-landscape) "-y=B4L ")
;; 		 ((paper-b5jis paper-portrait) "-y=B5 ")
;; 		 ((paper-b5jis paper-landscape) "-y=B5L ")
;; 		 (paper-legal "-y=Legal ")
;; 		 (paper-letter "-y=Letter ")
;; 		 (paper-executive "-y=Executive ")
;; 		 "%d" (mode-io-correlate " \"# %n '%b'\"")) "dviout")
;;       ("SumatraPDF"
;;        ("SumatraPDF -reuse-instance"
;; 	(mode-io-correlate " -forward-search \"%b\" %n") " %o")
;;        "SumatraPDF")
;;       ("dvips and start" "dvips %d -o && start \"\" %f" "dvips")
;;       ("start" "start \"\" %o")))
;;    ((eq system-type 'darwin)
;;     '(("Preview.app" "open -a Preview.app %o" "open")
;;       ("Skim" "open -a Skim.app %o" "open")
;;       ("displayline" "displayline %n %o %b" "displayline")
;;       ("open" "open %o" "open")))
;;    (t
;;     `(("dvi2tty" ("dvi2tty -q -w 132 %o"))
;;       ("xdvi" ("%(o?)xdvi"
;; 	       (mode-io-correlate " -sourceposition \"%n %b\" -editor \"%cS\"")
;; 	       ((paper-a4 paper-portrait) " -paper a4")
;; 	       ((paper-a4 paper-landscape) " -paper a4r")
;; 	       ((paper-a5 paper-portrait) " -paper a5")
;; 	       ((paper-a5 paper-landscape) " -paper a5r")
;; 	       (paper-b5 " -paper b5")
;; 	       (paper-letter " -paper us")
;; 	       (paper-legal " -paper legal")
;; 	       (paper-executive " -paper 7.25x10.5in")
;; 	       " %d") "%(o?)xdvi")
;;       ("dvips and gv" "%(o?)dvips %d -o && gv %f" ,(list "%(o?)dvips" "gv"))
;;       ("gv" "gv %o" "gv")
;;       ("xpdf" ("xpdf -remote %s -raise %o" (mode-io-correlate " %(outpage)")) "xpdf")
;;       ("Evince" ,(TeX-view-program-select-evince "gnome" "evince") "evince")
;;       ("Atril" ,(TeX-view-program-select-evince "mate" "atril") "atril")
;;       ("Okular" ("okular --unique %o" (mode-io-correlate "#src:%n%a")) "okular")
;;       ("xdg-open" "xdg-open %o" "xdg-open")
;;       ("PDF Tools" TeX-pdf-tools-sync-view)
;;       ("Zathura"
;;        ("zathura %o"
;; 	(mode-io-correlate
;; 	 " --synctex-forward %n:0:%b -x \"emacsclient +%{line} %{input}\""))
;;        "zathura"))))
;;   "Alist of built-in viewer specifications.
;; This variable should not be changed by the user who can use
;; `TeX-view-program-list' to add new viewers or overwrite the
;; definition of built-in ones.  The latter variable also contains a
;; description of the data format.")
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (yasnippet-classic-snippets yasnippet-snippets disaster company-c-headers cmake-mode clang-format ox-pandoc ht pandoc-mode pdf-tools tablist xterm-color unfill shell-pop org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download mwim multi-term htmlize gnuplot flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck eshell-z eshell-prompt-extras esh-help auto-dictionary company-auctex auctex yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode company-anaconda anaconda-mode pythonic ein jupyter xresources-theme ewal-spacemacs-modern-theme autopair ess spacemacs-theme smeargle orgit mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup helm-gitignore helm-company helm-c-yasnippet gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy ewal-spacemacs-theme evil-magit magit transient git-commit with-editor company-statistics company auto-yasnippet yasnippet ac-ispell auto-complete ewal-evil-cursors ewal-spacemacs-themes ewal ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async)))
 '(standard-indent 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 98 :width normal)))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command-style
   '(("" "%(PDF)%(latex) %(file-line-error) %(extraopts) -output-directory=tmp %S%(PDFout) ")))
 '(evil-want-Y-yank-to-eol nil)
 '(org-agenda-files '("/home/olav/Dropbox/project/notes.org"))
 '(package-selected-packages
   '(org-pdftools csv-mode yasnippet-classic-snippets yasnippet-snippets disaster company-c-headers cmake-mode clang-format ox-pandoc ht pandoc-mode pdf-tools tablist xterm-color unfill shell-pop org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-mime org-download mwim multi-term htmlize gnuplot flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck eshell-z eshell-prompt-extras esh-help auto-dictionary company-auctex auctex yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode dash-functional helm-pydoc cython-mode company-anaconda anaconda-mode pythonic ein jupyter xresources-theme ewal-spacemacs-modern-theme autopair ess spacemacs-theme smeargle orgit mmm-mode markdown-toc markdown-mode magit-gitflow magit-popup helm-gitignore helm-company helm-c-yasnippet gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gh-md fuzzy ewal-spacemacs-theme evil-magit magit transient git-commit with-editor company-statistics company auto-yasnippet yasnippet ac-ispell auto-complete ewal-evil-cursors ewal-spacemacs-themes ewal ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hydra lv hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation helm-themes helm-swoop helm-projectile projectile pkg-info epl helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist highlight evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu elisp-slime-nav dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))
 '(standard-indent 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 98 :width normal)))))
)
