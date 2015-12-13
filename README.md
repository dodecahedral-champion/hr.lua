# hr.lua

Horizontal rule for your terminal --- in Lua!

Tired of not finding things in your terminal because there's a lot of logs and garbage? Tired of destroying the Enter key by creating a "void zone" in your terminal so that you can see the error that you're trying to debug?

Use the old `<hr />` tag, but in your terminal!

## Inspiration

See https://github.com/LuRsT/hr

## How to use it?

### From the command-line:

    $ hr
    ################################## # Till the end of your terminal window
    $

    $ hr '*'
    ********************************** # Till the end of your terminal window
    $

You can also make "beautiful" ASCII patterns

    $ hr - '#' -
    ----------------------------------
    ##################################
    ----------------------------------
    $ hr '-#-' '-' '-#-'
    -#--#--#--#--#--#--#--#--#--#--#--
    ----------------------------------
    -#--#--#--#--#--#--#--#--#--#--#--

## Requirements

Built for Lua 5.2
