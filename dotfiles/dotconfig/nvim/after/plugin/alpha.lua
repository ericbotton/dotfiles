local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
-- dashboard.section.header.val = {
-- "     .      .          	 .      .      .      .      .      .      .      .      .      .      .          . ",
-- "            .  .       .                               .       .       .       .       .       .            ",
-- "       .                  .        .        .        .        .        .        .        .        .            ",
-- "                 .          .         .         .        _......____._        .         .            ",
-- "               .          .          .          . ..--`` .           ```---...          .           .",
-- "                    .                     _...--`        ................       `-.              .           .",
-- " .          .                          .-`        ...:`::::;:::#:.::::::_;;:...     `-.            ",
-- "                .                   .-`       ..::::`````   _...---```:::+;_::.      `.      .         .  ",
-- "                         .        .` .    ..::::`      _.-`               :::)::.       `.            ",
-- "        .           .           .      ..;:::`     _.-`         .             f::`::    o  _     .   .  ",
-- "               . .             /     .:::#`  .  .-`                        .-.  ::;;:.   /` `x          . ",
-- "   .                     .   .`  `::.::`    .-`     _.--```-.           (   )  ::.::  |_.-` |            ",
-- "            .     .         .`    ::;:`    .`     .-` .d@@b.   /    .    . `-`   ::#::   /_ _/    .      .    .",
-- "                     .     .`    :,::`    /   . _`    8@@@@8   j      .-`       :::::      ` o            ",
-- "          .   .            | .  :.#:` .  j     (_)    `@@@P`  .`   .-`         ::.::    .  f          . ",
-- "   .                       |    ::::     (        -..____...-`  .-`          .::::`       /      .     ",
-- "              .        .   |    `:`::    `.                ..--`        .  .::`::   .    /            ",
-- ".                          j     `:::::    `-._____...---`             .::#:::`       .`  .         .  ",
-- "                 .          /      ::.:#..             .       .    ...:,::::`       .`            ",
-- "        .               .    /       `:::`:..                ....::::.::::`       .-`    .     .           .",
-- "                  .           /    .   ``:::#::`::.......:::::#::.::::``       .-`            ",
-- "                            . `.        . ``::::::#::::.::;;:::::```      _.-`          .            ",
-- "     .         .  .     .       `-..     .    .   `````````         . _.-`     .          .        .   ",
-- "                               .    `--...____    .   ______......--` .         .         .          . ",
-- "      .                 .        .        .    ````     .        .        .        .        .            ",
-- "               .       .       .       .       .       .       .       .       .       .           .",
-- "     .     .      .      .             .      .             .      .           .  .        .",
-- "",
-- "",
-- }


dashboard.section.header.val = {
[[]],
[[]],
[[]],
[[=================     ===============     ===============   ========  ========]],
[[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
[[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
[[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
[[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
[[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
[[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
[[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
[[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
[[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
[[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
[[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
[[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
[[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
[[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
[[||.=='    _-'                                                     `' |  /==.||]],
[[=='    _-'                        N E O V I M                         \/   `==]],
[[\   _-'                                                                `-_   /]],
[[ `''                                                                      ``' ]],
[[]],
[[]],
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "SPC e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "SPC f", "  > Find file", ":cd ~/repos/ | Telescope find_files<CR>"),
    dashboard.button( "SPC w", "  > Find word", ":cd ~/repos/ | Telescope live_grep<CR>"),
    dashboard.button( "SPC r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "SPC s", "  > Settings" , ":e ~/.config/nvim/<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

-- Send config to alpha
alpha.setup(dashboard.opts)