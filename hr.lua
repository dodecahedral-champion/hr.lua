#!/usr/bin/env lua

function hr(symbols)
   local termwidth = get_terminal_width()
   if #symbols == 0 then
      symbols = {"#"}
   end

   for _, sym in ipairs(symbols) do
      local count = math.floor(termwidth / sym:len())
      io.write(sym:rep(count), "\n")
   end
end

function capture_output(command)
   if type(io.popen) ~= "function" then
      return false
   end

   local h = io.popen(command, "r")
   if not h then return false end
   local output = h:read("*a")
   h:close()
   return output
end

function parse_terminal_width(stty)
   if (not stty) or stty == "" then return false end
   local strwidth = stty:match("%d+ (%d+)")
   local width = tonumber(strwidth)
   if width == 0 then return false end
   return width
end

function get_terminal_width()
   local stty = capture_output("stty size")
   return parse_terminal_width(stty) or tonumber(os.getenv("COLUMNS")) or 80
end

hr(arg)
