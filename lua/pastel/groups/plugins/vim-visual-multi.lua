local function callback(c)
  return {
    VM_Extend = { fg=c.base, bg=c.blue, bold=true },
    VM_Insert = { fg=c.base, bg=c.purple, bold=true },
  }
end

return callback
