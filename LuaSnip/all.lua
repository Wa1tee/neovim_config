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
        t({
            "s(\"\", {",
            "    t({",
            "        \"\",",
            "    })",
            "})",
        }), 
    }),
    s("for", {
        t("for(int "),
        i(1),
        t("="),
        i(2),
        t("; "),
        rep(1),
        t("<"),
        i(3),
        t("; "),
        rep(1),
        t({"++){", "    ",}),
        i(4),
        t({"", "}"})
    }),
}


