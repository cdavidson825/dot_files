;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (color-theme-blackboard) "elpa-to-submit/blackboard"
;;;;;;  "elpa-to-submit/blackboard.el" (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/blackboard.el

(autoload 'color-theme-blackboard "elpa-to-submit/blackboard" "\
Color theme by JD Huntington, based off the TextMate Blackboard theme, created 2008-11-27

\(fn)" t nil)

;;;***

;;;### (autoloads (cheat) "elpa-to-submit/cheat" "elpa-to-submit/cheat.el"
;;;;;;  (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/cheat.el

(autoload 'cheat "elpa-to-submit/cheat" "\
Show the specified cheat sheet.

If SILENT is non-nil then do not print any output, but return it
as a string instead.

\(fn NAME &optional SILENT)" t nil)

;;;***

;;;### (autoloads (clojure-mode) "elpa-to-submit/clojure-mode" "elpa-to-submit/clojure-mode.el"
;;;;;;  (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/clojure-mode.el

(autoload 'clojure-mode "elpa-to-submit/clojure-mode" "\
Major mode for editing Clojure code - similar to Lisp mode..
Commands:
Delete converts tabs to spaces as it moves back.
Blank lines separate paragraphs.  Semicolons start comments.
\\{clojure-mode-map}
Note that `run-lisp' may be used either to start an inferior Lisp job
or to switch back to an existing one.

Entry to this mode calls the value of `clojure-mode-hook'
if that value is non-nil.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;;;***

;;;### (autoloads (cssh-mode) "elpa-to-submit/cssh" "elpa-to-submit/cssh.el"
;;;;;;  (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/cssh.el

(autoload 'cssh-mode "elpa-to-submit/cssh" "\
A major mode for controlling multiple terms at once.

\(fn)" t nil)

;;;***

;;;### (autoloads (gist-fetch gist-buffer gist-region) "elpa-to-submit/gist"
;;;;;;  "elpa-to-submit/gist.el" (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/gist.el

(autoload 'gist-region "elpa-to-submit/gist" "\
Post the current region as a new paste at gist.github.com
Copies the URL into the kill ring.

\(fn BEGIN END)" t nil)

(autoload 'gist-buffer "elpa-to-submit/gist" "\
Post the current buffer as a new paste at gist.github.com.
Copies the URL into the kill ring.

\(fn)" t nil)

(autoload 'gist-fetch "elpa-to-submit/gist" "\
Fetches a Gist and inserts it into a new buffer
If the Gist already exists in a buffer, switches to it

\(fn ID)" t nil)

;;;***

;;;### (autoloads (htmlize-many-files-dired htmlize-many-files htmlize-file
;;;;;;  htmlize-region htmlize-buffer) "elpa-to-submit/htmlize" "elpa-to-submit/htmlize.el"
;;;;;;  (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/htmlize.el

(autoload 'htmlize-buffer "elpa-to-submit/htmlize" "\
Convert BUFFER to HTML, preserving colors and decorations.

The generated HTML is available in a new buffer, which is returned.
When invoked interactively, the new buffer is selected in the current
window.  The title of the generated document will be set to the buffer's
file name or, if that's not available, to the buffer's name.

Note that htmlize doesn't fontify your buffers, it only uses the
decorations that are already present.  If you don't set up font-lock or
something else to fontify your buffers, the resulting HTML will be
plain.  Likewise, if you don't like the choice of colors, fix the mode
that created them, or simply alter the faces it uses.

\(fn &optional BUFFER)" t nil)

(autoload 'htmlize-region "elpa-to-submit/htmlize" "\
Convert the region to HTML, preserving colors and decorations.
See `htmlize-buffer' for details.

\(fn BEG END)" t nil)

(autoload 'htmlize-file "elpa-to-submit/htmlize" "\
Load FILE, fontify it, convert it to HTML, and save the result.

Contents of FILE are inserted into a temporary buffer, whose major mode
is set with `normal-mode' as appropriate for the file type.  The buffer
is subsequently fontified with `font-lock' and converted to HTML.  Note
that, unlike `htmlize-buffer', this function explicitly turns on
font-lock.  If a form of highlighting other than font-lock is desired,
please use `htmlize-buffer' directly on buffers so highlighted.

Buffers currently visiting FILE are unaffected by this function.  The
function does not change current buffer or move the point.

If TARGET is specified and names a directory, the resulting file will be
saved there instead of to FILE's directory.  If TARGET is specified and
does not name a directory, it will be used as output file name.

\(fn FILE &optional TARGET)" t nil)

(autoload 'htmlize-many-files "elpa-to-submit/htmlize" "\
Convert FILES to HTML and save the corresponding HTML versions.

FILES should be a list of file names to convert.  This function calls
`htmlize-file' on each file; see that function for details.  When
invoked interactively, you are prompted for a list of files to convert,
terminated with RET.

If TARGET-DIRECTORY is specified, the HTML files will be saved to that
directory.  Normally, each HTML file is saved to the directory of the
corresponding source file.

\(fn FILES &optional TARGET-DIRECTORY)" t nil)

(autoload 'htmlize-many-files-dired "elpa-to-submit/htmlize" "\
HTMLize dired-marked files.

\(fn ARG &optional TARGET-DIRECTORY)" t nil)

;;;***

;;;### (autoloads (run-ruby inf-ruby inf-ruby-keys) "elpa-to-submit/inf-ruby"
;;;;;;  "elpa-to-submit/inf-ruby.el" (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/inf-ruby.el

(autoload 'inf-ruby-keys "elpa-to-submit/inf-ruby" "\
Set local key defs to invoke inf-ruby from ruby-mode.

\(fn)" nil nil)

(autoload 'inf-ruby "elpa-to-submit/inf-ruby" "\
Run an inferior Ruby process in a buffer.
With prefix argument, prompts for which Ruby implementation
\(from the list `inf-ruby-implementations') to use. Runs the
hooks `inf-ruby-mode-hook' (after the `comint-mode-hook' is
run).

\(fn &optional IMPL)" t nil)

(autoload 'run-ruby "elpa-to-submit/inf-ruby" "\
Run an inferior Ruby process, input and output via buffer *ruby*.
If there is a process already running in `*ruby*', switch to that buffer.
With argument, allows you to edit the command line (default is value
of `ruby-program-name').  Runs the hooks `inferior-ruby-mode-hook'
\(after the `comint-mode-hook' is run).
\(Type \\[describe-mode] in the process buffer for a list of commands.)

\(fn COMMAND &optional NAME)" t nil)

(eval-after-load 'ruby-mode '(add-hook 'ruby-mode-hook 'inf-ruby-keys))

;;;***

;;;### (autoloads (magit-status) "elpa-to-submit/magit" "elpa-to-submit/magit.el"
;;;;;;  (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/magit.el

(autoload 'magit-status "elpa-to-submit/magit" "\


\(fn DIR)" t nil)

;;;***

;;;### (autoloads (markdown-mode) "elpa-to-submit/markdown-mode"
;;;;;;  "elpa-to-submit/markdown-mode.el" (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/markdown-mode.el

(autoload 'markdown-mode "elpa-to-submit/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

;;;***

;;;### (autoloads (moz-minor-mode) "elpa-to-submit/moz" "elpa-to-submit/moz.el"
;;;;;;  (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/moz.el

(autoload 'moz-minor-mode "elpa-to-submit/moz" "\
Toggle Mozilla mode.
With no argument, this command toggles the mode.
Non-null prefix argument turns on the mode.
Null prefix argument turns off the mode.

When Mozilla mode is enabled, some commands become available to
send current code area (as understood by c-mark-function) or
region or buffer to an inferior mozilla process (which will be
started as needed).

\(fn &optional ARG)" t nil)

(eval-after-load 'js2-mode '(add-hook 'js2-mode-hook 'moz-minor-mode))

;;;***

;;;### (autoloads (oddmuse-kill-url oddmuse-browse-this-page oddmuse-browse-page
;;;;;;  emacswiki-post oddmuse-insert-pagename oddmuse-revert oddmuse-post
;;;;;;  oddmuse-follow oddmuse-edit oddmuse-toggle-minor) "elpa-to-submit/oddmuse"
;;;;;;  "elpa-to-submit/oddmuse.el" (21064 34440 0 0))
;;; Generated autoloads from elpa-to-submit/oddmuse.el

(autoload 'oddmuse-toggle-minor "elpa-to-submit/oddmuse" "\
Toggle minor mode state.

\(fn &optional ARG)" t nil)

(autoload 'oddmuse-edit "elpa-to-submit/oddmuse" "\
Edit a page on a wiki.
WIKI is the name of the wiki as defined in `oddmuse-wikis',
PAGENAME is the pagename of the page you want to edit.
Use a prefix argument to force a reload of the page.

\(fn WIKI PAGENAME)" t nil)

(autoload 'oddmuse-follow "elpa-to-submit/oddmuse" "\
Figure out what page we need to visit
and call `oddmuse-edit' on it.

\(fn ARG)" t nil)

(autoload 'oddmuse-post "elpa-to-submit/oddmuse" "\
Post the current buffer to the current wiki.
The current wiki is taken from `oddmuse-wiki'.

\(fn SUMMARY)" t nil)

(autoload 'oddmuse-revert "elpa-to-submit/oddmuse" "\
Revert this oddmuse page.

\(fn)" t nil)

(autoload 'oddmuse-insert-pagename "elpa-to-submit/oddmuse" "\
Insert a PAGENAME of current wiki with completion.

\(fn PAGENAME)" t nil)

(autoload 'emacswiki-post "elpa-to-submit/oddmuse" "\
Post the current buffer to the EmacsWiki.
If this command is invoked interactively: with prefix argument, prompts pagename,
otherwise set pagename as basename of `buffer-file-name'.

This command is intended to post current EmacsLisp program easily.

\(fn &optional PAGENAME SUMMARY)" t nil)

(autoload 'oddmuse-browse-page "elpa-to-submit/oddmuse" "\
Ask a WWW browser to load an oddmuse page.
WIKI is the name of the wiki as defined in `oddmuse-wikis',
PAGENAME is the pagename of the page you want to browse.

\(fn WIKI PAGENAME)" t nil)

(autoload 'oddmuse-browse-this-page "elpa-to-submit/oddmuse" "\
Ask a WWW browser to load current oddmuse page.

\(fn)" t nil)

(autoload 'oddmuse-kill-url "elpa-to-submit/oddmuse" "\
Make the URL of current oddmuse page the latest kill in the kill ring.

\(fn)" t nil)

;;;***

;;;### (autoloads (paredit-mode) "elpa-to-submit/paredit" "elpa-to-submit/paredit.el"
;;;;;;  (21064 34442 0 0))
;;; Generated autoloads from elpa-to-submit/paredit.el

(autoload 'paredit-mode "elpa-to-submit/paredit" "\
Minor mode for pseudo-structurally editing Lisp code.
\\<paredit-mode-map>

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (pcomplete/rake) "elpa-to-submit/pcmpl-rake" "elpa-to-submit/pcmpl-rake.el"
;;;;;;  (21064 34442 0 0))
;;; Generated autoloads from elpa-to-submit/pcmpl-rake.el

(autoload 'pcomplete/rake "elpa-to-submit/pcmpl-rake" "\
Completion rules for the `ssh' command.

\(fn)" nil nil)

;;;***

;;;### (autoloads (ri) "elpa-to-submit/ri" "elpa-to-submit/ri.el"
;;;;;;  (21064 34442 0 0))
;;; Generated autoloads from elpa-to-submit/ri.el

(autoload 'ri "elpa-to-submit/ri" "\
Look up Ruby documentation.

\(fn &optional RI-DOCUMENTED)" t nil)

;;;***

;;;### (autoloads (rinari-minor-mode rinari-launch) "elpa-to-submit/rinari"
;;;;;;  "elpa-to-submit/rinari.el" (21064 34442 0 0))
;;; Generated autoloads from elpa-to-submit/rinari.el

(autoload 'rinari-launch "elpa-to-submit/rinari" "\
Run `rinari-minor-mode' if inside of a rails projecct,
otherwise turn `rinari-minor-mode' off if it is on.

\(fn)" t nil)

(dolist (hook '(ruby-mode-hook mumamo-after-change-major-mode-hook dired-mode-hook)) (add-hook hook 'rinari-launch))

(autoload 'rinari-minor-mode "elpa-to-submit/rinari" "\
Enable Rinari minor mode providing Emacs support for working
with the Ruby on Rails framework.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (color-theme-zenburn) "elpa-to-submit/zenburn"
;;;;;;  "elpa-to-submit/zenburn.el" (21064 34442 0 0))
;;; Generated autoloads from elpa-to-submit/zenburn.el

(autoload 'color-theme-zenburn "elpa-to-submit/zenburn" "\
Just some alien fruit salad to keep you in the zone.

\(fn)" t nil)

(defalias 'zenburn #'color-theme-zenburn)

;;;***

;;;### (autoloads nil nil ("elpa-to-submit/color-theme.el" "elpa-to-submit/eshell-vc.el"
;;;;;;  "elpa-to-submit/findr.el" "elpa-to-submit/inflections.el"
;;;;;;  "elpa-to-submit/jump.el" "elpa-to-submit/ruby-compilation.el")
;;;;;;  (21067 9507 329058 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; loaddefs.el ends here
