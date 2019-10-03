IEx.configure(
  colors: [enabled: true],
  default_prompt:
    [
      # ANSI CHA, move cursor to column 1
      "\e[G",
      :yellow,
      # IEx prompt variable
      "%prefix",
      # plain string
      ">",
      :reset
    ]
    |> IO.ANSI.format()
    |> IO.chardata_to_string()
)
