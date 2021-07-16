(module magic.init
  {autoload {plugin magic.plugin
             nvim aniseed.nvim}})

;;; Introduction

;; Aniseed compiles this (and all other Fennel files under fnl) into the lua
;; directory. The init.lua file is configured to load this file when ready.

;; We'll use modules, macros and functions to define our configuration and
;; required plugins. We can use Aniseed to evaluate code as we edit it or just
;; restart Neovim.

;; You can learn all about Conjure and how to evaluate things by executing
;; :ConjureSchool in your Neovim. This will launch an interactive tutorial.


;;; Generic configuration

(set nvim.o.termguicolors true)
(set nvim.o.mouse "a")
(set nvim.o.updatetime 500)
(set nvim.o.timeoutlen 500)
(set nvim.o.sessionoptions "blank,curdir,folds,help,tabpages,winsize")
(set nvim.o.inccommand :split)

(nvim.ex.set :spell)
(nvim.ex.set :list)


;;; Mappings

(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")


;;; Plugins

;; Run script/sync.sh to update, install and clean your plugins.
;; Packer configuration format: https://github.com/wbthomason/packer.nvim
(plugin.use
  :Olical/aniseed {}
  :Olical/conjure {}
  :airblade/vim-gitgutter {}
  :clojure-vim/vim-jack-in {}
  :eraserhd/parinfer-rust {:run "cargo build --release"}
  :easymotion/vim-easymotion {}
  :ntpeters/vim-better-whitespace {}
  :luochen1990/rainbow {:config (plugin.req :rainbow)}
  :folke/which-key.nvim {}
  :hrsh7th/nvim-compe {}
  :junegunn/fzf {}
  :junegunn/fzf.vim {}
  :liuchengxu/vim-better-default {:config (plugin.req :better-default)}
  :mbbill/undotree {}
  :radenling/vim-dispatch-neovim {}
  :projekt0n/github-nvim-theme {:mod :github}
  :tami5/compe-conjure {}
  :neovim/nvim-lspconfig {:config (plugin.req :nvim-lspconfig)}
  :clojure-lsp/clojure-lsp {}
  ;:tpope/vim-abolish {}
  ;:tpope/vim-commentary {}
  ;:tpope/vim-dispatch {}
  ;:tpope/vim-eunuch {}
  ;:tpope/vim-fugitive {}
  ;:tpope/vim-sleuth {}
  ;:tpope/vim-vinegar {}
  :wbthomason/packer.nvim {})
