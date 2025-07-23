-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.recipes.vscode" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python-ruff" },
  -- { import = "astrocommunity.pack.purescript" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.clojure" },
  -- { import = "astrocommunity.pack.typescript-deno" },
  -- { import = "astrocommunity.pack.godot" },
}
