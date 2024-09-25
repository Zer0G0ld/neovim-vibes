-- Instala o Packer se não estiver instalado
local function bootstrap()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd("packadd packer.nvim")
        return true
    end
    return false
end

local packer_bootstrap = bootstrap()

-- Verifica se o Packer foi carregado corretamente
local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
    vim.notify("Packer not found!")
    return
end

-- Configuração do Packer
packer.startup(function(use)
    -- Plugins
    use "wbthomason/packer.nvim" -- Gerenciador de plugins
    use "gruvbox-community/gruvbox" -- Um tema popular
    use "nvim-lualine/lualine.nvim" -- Barra de status

    -- Verifica se o Packer está no modo de bootstrap e sincroniza
    if packer_bootstrap then
        require("packer").sync()
    end
end)

-- Configuração do tema
vim.cmd("colorscheme gruvbox")

-- Ativa números de linha
vim.wo.number = true
vim.opt.relativenumber = true -- Números de linha relativos
vim.cmd("syntax on") -- Ativa destaque de sintaxe

-- Configura o uso de espaços em vez de tabs
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Configura a barra de status
require('lualine').setup{
    options = { theme = 'gruvbox' }
}

-- Comando para definir o tema de cores ao iniciar o Neovim
vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("colorscheme gruvbox")
    end
})

-- Mapeamento de teclas
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Opções do editor
vim.opt.mouse = "a"          -- Habilita o uso do mouse
vim.opt.clipboard = "unnamedplus" -- Usar a área de transferência do sistema
