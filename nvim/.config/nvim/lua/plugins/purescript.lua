return {
  { "purescript-contrib/purescript-vim" },
  { "AstroNvim/astrolsp",
    opts = {
      config = {
        purescriptls = {
          settings = {
            purescript = {
              formatter = "purs-tidy",
              addSpagoSources = true,
            },
          },
        },
      },
    },
  },
}
