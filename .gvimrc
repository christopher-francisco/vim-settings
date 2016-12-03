"Disable the print key for Macvim
if has("gui_macvim")
    macmenu &File.Print key=<nop>
endif
