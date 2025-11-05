local ls = require("luasnip")

-- List your languages here
local languages = { "python", "html", "lua", "javascript" }

for _, lang in ipairs(languages) do
  print(lang)
  local ok, snippets = pcall(require, "snippets." .. lang)
  if ok and snippets then
    ls.add_snippets(lang, snippets)
    print("HEY")
  end
end

