local M = {}

function M.setup()
    vim.cmd("hi clear")

    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "partizan"
    vim.o.termguicolors = false
    vim.o.background = "dark"

    -- ПОДСВЕЧИВАЕМ ТОЛЬКО ВАЖНЫЕ ГРУППЫ
    -- ВСЕ ОСТАЛЬНОЕ ПРОСТО БЕЛОЕ ПО СУТИ

    -- Основные цвета
    local colors = {
        background = "#000000",
        foreground = "#ffffff",
        red = "#ffffff",
        green = "#ffffff",
        yellow = "#ffffff",
        blue = "#ffffff",
        cyan = "#ffffff",
        magenta = "#ffffff",
        white = "#ffffff",
        black = "#ffffff",
    }

    local hl = vim.api.nvim_set_hl

    -- Установка цветов для текстов
    hl(0, "Normal", { bg = colors.background, fg = colors.foreground })
    hl(0, "Comment", { fg = colors.green, italic = true })
    hl(0, "Identifier", { fg = colors.cyan })
    hl(0, "Statement", { fg = colors.red })
    hl(0, "PreProc", { fg = colors.yellow })
    hl(0, "Type", { fg = colors.blue })
    hl(0, "Constant", { fg = colors.magenta })

    -- можно линковать группы к другим группам
    -- hi! link jsFunction Function

    -- Дополнительные выделения
    vim.cmd("hi! StatusLine guibg=" .. colors.blue .. " guifg=" .. colors.black)
    vim.cmd("hi! SpecialKey guifg=" .. colors.yellow)
end

return M
