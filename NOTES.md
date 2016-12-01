# Vim

### Prerequisites
* Ctags `brew install ctags`
* The Silver Searcher `brew install the_silver_searcher`

### Commands
* `:pwd` print current directory
* `zz` 
* `:bufdo bd!` closes all buffer
* `:tabn` or `:tabe` opens a new tab
* `gt` Switch between tabs
* `ctrl + ^` or `:bp` previous buffer
* `Ctrl + u` scrolls half a screen upwards
* `Ctrl + d` scrolls half a screen downwards
* `va{` selects the parentensis too
* `wa` write all files
* `ctrl + w + o` make current buffer fullscreen (from split)
* `J` joins the current line with the next one
* `ctrl + o` jumps back
* `ctrl + i` jumps forward
* `.` repeat last operation
* `?` search above the current line

* `m[lower_letter]` creates a mark on the current buffer
* `m[capital_letter]` creates a mark on any file
* `'[letter]` returns to a mark
* ``[letter]` returns to a mark, to the exact column
* `:marks` lists all marks
* ``0` mark that persist across sections, opens your last file

* `q[key]` start recording a macro (i.e: `qq`)
* `q` in normal mode to stop recording
* `/ + ctrl + R + "` paste what was last yanked in command mode

* `:ls` list all buffers
* `:bd` destroy current buffer
* `:bd [index]` destroy buffer on index
* `sbuffer [index]` opens a split window with that loaded buffer
* `:q` closes window, but buffer is still there

* `co` open the code fold


### CtrlP
* `Ctrl + d` toggle between hunting for filename or path

### CTags
* Inside the project root, run `ctags -R`. If it doesn't work after installing with brew, read [this link](https://gist.github.com/nazgob/1570678).
* Run `ctags -R` on several ocations including a git commit
* `:tag name` go to tag
* `:tn`, `:tp` navigate between next and previous tag
* `:ts` select between tags
* `ctrl + ]` navigate to ctag on the selected cursor

### Ag
* `Ag: 'foo'` search in the whole project

### Gsearch
* `Gsearch`
  1. Select all lines to change
  2. `>s/oldstring/newstring`
  3. `Greplace`
  4. `a` to accept all replacements
  5. `wa` write to all files

### Tpope Surrounidngs
* `cs'"` Change surrounding `'` for `"`.
* `ds'` Delete surrounding `'`.
* `dst` Delete the surrounding tag, like HTML tag
* `cst` Change surrounding tag for the new input one. supports class attribute
* Select the text, then `S` and then write tag

### PHP namespace
* `,n` to add a `use` statement
* `,fn` to expand FQNS
* Select the use imports, then `,su` to sort from shorter to longer

### PSR-2
* `fabpot/php-cs-fixer` through composer global install
* `,pf` to format using psr-2


### Keyboard repeat
* default
  - key repeat: 7
  - delay until repeat: 3