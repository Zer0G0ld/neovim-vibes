# neovim-vibes

# Neovim Custom Configuration

Este repositório contém a configuração personalizada do Neovim, incluindo um tema feito à mão e ajustes no `init.lua` e `theme.lua`. Se você deseja usar esta configuração para personalizar seu Neovim com cores vibrantes e suporte LSP, siga as instruções abaixo.

## Requisitos

Antes de começar, certifique-se de que você tem os seguintes requisitos instalados:

- [Neovim](https://neovim.io/) (versão 0.5+)
- [Packer](https://github.com/wbthomason/packer.nvim) (gerenciador de plugins)
- Git (para clonar os repositórios)
  
## Instalação

### 1. Clone o Repositório

Clone este repositório em seu diretório de configuração do Neovim:

```bash
git clone https://github.com/Zer0G0ld/neovim-vibes
~/.config/nvim
```

### 2. Instale o Packer (se ainda não tiver instalado)

Caso o Packer ainda não esteja instalado, ele será instalado automaticamente ao iniciar o Neovim pela primeira vez com esta configuração. Para verificar, abra o Neovim e execute:

```vim
:PackerSync
```

### 3. Instale os Plugins

Abra o Neovim e rode o seguinte comando para instalar os plugins:

```vim
:PackerInstall
```

### 4. Use a Configuração do Tema

A configuração do tema está no arquivo `lua/theme.lua`. O arquivo `init.lua` carrega essa configuração, então você pode personalizá-la conforme necessário. O tema já está configurado para ser aplicado automaticamente ao iniciar o Neovim.

## Estrutura dos Arquivos

- `init.lua`: Arquivo principal que carrega plugins, opções e o tema.
- `lua/theme.lua`: Configuração personalizada do tema, incluindo cores para variáveis, classes, tipos de dados, erros, avisos e informações do LSP.

## Temas e Customizações

As cores padrão no `theme.lua` são as seguintes:

- **Fundo**: `#282c34`
- **Texto padrão**: `#abb2bf`
- **Comentários**: `#5c6370`
- **Strings**: `#98c379`
- **Palavras-chave**: `#c678dd`
- **Funções**: `#61afef`
- **Variáveis**: `#e06c75`
- **Números**: `#d19a66`
- **Constantes**: `#56b6c2`
- **Erros**: `#ff6c6b`
- **Avisos**: `#e5c07b`
- **Informações do LSP**: `#61afef`

Você pode sobrescrever as cores definindo um objeto `custom_colors` no `theme.lua` ou editando diretamente as cores no arquivo.

## Funcionalidades Adicionais

- **Barra de status**: Configuração do plugin `lualine.nvim` com o tema `gruvbox`.
- **Suporte LSP**: Cores para diagnósticos de erro, aviso e informações.

## Contribuindo

Sinta-se à vontade para abrir uma issue ou enviar um pull request se você quiser contribuir com melhorias ou novas funcionalidades.

## Licença

Este projeto está licenciado sob a [GPL-3.0 license](LICENSE).
