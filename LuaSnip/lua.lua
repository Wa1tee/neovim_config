local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return{
    s("snip", {
        t("s(\""),
        i(1),
        t({
            "\", {",
            "    t({\"",
        }),
        i(2),
        t({ "\" }),",
            "}),"
        })
    }),
    s("t", {
        t({ "t({\"" }),
        i(1),
        t("\"}),"),
    }),
    s("i", {
        t({ "i(" }),
        i(1),
        t("),")
    }),

}

