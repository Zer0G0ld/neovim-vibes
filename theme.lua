local M = {}

-- Cores padrão
M.colors = {
    bg = "#282c34",
    fg = "#abb2bf",
    comment = "#5c6370",
    string = "#98c379",
    keyword = "#c678dd",
    func = "#61afef",
    variable = "#e06c75",
    number = "#d19a66",
    constant = "#56b6c2",
    error = "#ff6c6b",
    warning = "#e5c07b",
    info = "#61afef",
    hint = "#56b6c2", -- Cor para dicas
}

function M.setup(custom_colors)
    -- Permite que o usuário sobrescreva as cores padrão
    if custom_colors then
        for key, value in pairs(custom_colors) do
            M.colors[key] = value
        end
    end

    -- Aplica as definições de destaque usando nvim_set_hl
    vim.api.nvim_set_hl(0, "Normal", { bg = M.colors.bg, fg = M.colors.fg })
    vim.api.nvim_set_hl(0, "Comment", { fg = M.colors.comment })
    vim.api.nvim_set_hl(0, "String", { fg = M.colors.string })
    vim.api.nvim_set_hl(0, "Keyword", { fg = M.colors.keyword })
    vim.api.nvim_set_hl(0, "Function", { fg = M.colors.func })
    vim.api.nvim_set_hl(0, "Variable", { fg = M.colors.variable })
    vim.api.nvim_set_hl(0, "Number", { fg = M.colors.number })
    vim.api.nvim_set_hl(0, "Constant", { fg = M.colors.constant })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3c4048" }) -- Cor de fundo da linha atual
    vim.api.nvim_set_hl(0, "Cursor", { fg = "#ffffff", bg = "#61afef" }) -- Cor do cursor
    vim.api.nvim_set_hl(0, "Error", { fg = M.colors.error }) -- Cor para erros
    vim.api.nvim_set_hl(0, "Warning", { fg = M.colors.warning }) -- Cor para avisos
    vim.api.nvim_set_hl(0, "LspDiagnosticsError", { fg = M.colors.error })
    vim.api.nvim_set_hl(0, "LspDiagnosticsWarning", { fg = M.colors.warning })
    vim.api.nvim_set_hl(0, "LspDiagnosticsInformation", { fg = M.colors.info })
    vim.api.nvim_set_hl(0, "LspDiagnosticsHint", { fg = M.colors.hint }) -- Cor para dicas do LSP
    vim.api.nvim_set_hl(0, "Class", { fg = "#c678dd" }) -- Cor para classes
    vim.api.nvim_set_hl(0, "Interface", { fg = "#61afef" }) -- Cor para interfaces
    vim.api.nvim_set_hl(0, "Type", { fg = "#d19a66" }) -- Cor para tipos de dados
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#e06c75", bold = true }) -- Cor do número da linha atual
    vim.api.nvim_set_hl(0, "Search", { fg = "#282c34", bg = "#e5c07b" }) -- Cor de busca
    vim.api.nvim_set_hl(0, "Visual", { bg = "#3c4048" }) -- Cor de seleção visual
    vim.api.nvim_set_hl(0, "StatusLine", { fg = "#ffffff", bg = "#3c4048" }) -- Barra de status
    vim.api.nvim_set_hl(0, "TabLine", { fg = "#abb2bf", bg = "#282c34" }) -- Tabline
end

-- Função para redefinir as cores
function M.reset()
    M.setup() -- Reseta para as cores padrão
end

return M
