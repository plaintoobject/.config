require("core.opt")
require("core.lazy")

vim.defer_fn(function()
  require("core.map")
  require("core.cmd")
end, 0)
