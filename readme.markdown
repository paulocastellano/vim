## Meu vim

Está configuração é um fork do https://github.com/InFog/meuvim adptado ao meu dia a dia

Meus arquivos de configuração para o Vim.

Comecei montar esta configuração para Vim com a ideia de substituir o grandalhão NetBeans no dia-a-dia como desenvolvedor WEB.

Eu trabalho principalmente para web com Python, PHP, JavaScript, CSS e HTML.

### Missão

Substituir todos os editores do mundo! muahuahuahau (risada malévola)

### Como usar

Interessado em usar esta configuração para o seu vim? Faz o seguinte:


 *  Clone do repositório do GitHub: `git clone git://github.com/paulocastellano/vim.git`
   *  Ou baixe aqui: https://github.com/paulocastellano/vim
 *  Coloque o conteúdo do projeto no diretório `~/.vim`
 *  Copie o arquivo `vimrc` para `~/.vimrc`
    * Ou faça um link, que fica bem melhor: `ln -s ~/.vim/vimrc ~/.vimrc`
 *  Crie o diretório `~/.vimundo` para o desfazer persistente (desfaz mesmo fechando o arquivo e abrindo novamente)
 *  Instale os submodules do git: `git submodule init` e `git submodule update` para instalar o `vundle`
 *  Instale as dependências listadas abaixo.
 *  Abra o vim (sem arquivos) e rode um `:BundleInstall`, ou chame assim: `vim +BundleInstall`. Dessa forma ele instala os Bundles.
 *  Para que os temas de cores funcionem corretamente é necessário ativar as 256 cores no terminal.
    * Para isso adicione `export TERM="xterm-256color"` no seu `~/.bashrc`, `~/.zshrc` ou o terminal de sua preferência.
    * Será necessário abrir um novo terminal.
 *  Use seu novo vim =)
 *  Também é possível usar este `vimrc` com o **Neovim**, confira a documentação para isso abaixo.
 *  Gosta do gVim? Aqui também tem um `gvimrc`, basta copiar ou fazer um link para `~/.gvimrc`
    * Este gvimrc basicamente remove todas as opções de menus e barras de rolagem.
 *  Eu testei este vimrc com o vim no Mac, via linha de comando, e funcionou decentemente.
 *  Deve ser possível usar com o GVim no Windows ou no MacVim, mas aí é com você...

### Dicas importantes

 *  Tenha uma boa motivação para usar o Vim, pois no começo é difícil, e você vai querer voltar para a sua IDE favorita.
 *  Você também pode usar este vimrc como inspiração para montar o seu próprio vimrc ;-)
 *  Tente aprender apenas um ou dois comandos novos por dia. Parece pouco, mas em um mês você já terá muitas ferramentas nas pontas dos dedos.
 *  Aprender a navegar usando h, j, k e l é importante, mas usar as setas é perfeitamente normal e aceitável.

### Vim e Eclipse

Se você está usando a IDE Eclipse e quer ter um pouco do poder do Vim nas pontas dos dedos, você pode testar o Vrapper, um emulador do Vim. Ele não é tão bom quanto o Vim original, mas quebra o galho para quando você ter ter as funcionalidades do Vim dentro do Eclise.

Você pode achar o Vrapper aqui: http://vrapper.sourceforge.net/documentation

Dentro deste repositório há também um arquivo `vrapperrc` que você pode copiar para `~/.vrapperrc`.

Alguns outros plugins para melhorar a sensação de "estou usando o Vim" dentro do Eclipse:

 * Relative Line Numbers http://matf.github.io/relativenumberruler/updatesite/

### IdeaVim o Plugin Vim para as IDEs da Jet Brains

Se você está usando alguma IDE da Jet Brains e quer ter um pouco do poder do Vim nas pontas dos dedos, você pode testar o IdeaVim, um emulador do Vim. Ele não é tão bom quanto o Vim original, mas quebra o galho para quando você ter ter as funcionalidades do Vim dentro do IntelliJ, do RubyMine ou do PHPStorm.

Você pode achar o IdeaVim aqui: https://github.com/JetBrains/ideavim

Dentro deste repositório há também um arquivo `ideavimrc` que você pode copiar ou fazer um link para `~/.ideavimrc`.

### Neovim

Esta configuração também funciona para o Neovim, basta fazer um link do arquivo
`vimrc` para `~/.config/nvim/init.vim`.

Saiba mais sobre o Neovim no site do projeto: Learn more about Neovim in their website: https://neovim.io/

### Dependências

Só algumas dependências para tudo funcionar certinho:

 *  **exuberant-ctags** para o Tagbar.
    * No Debian instale o pacote `exuberant-ctags`
    * No Fedora instale o pacote `ctags`
    * No Mac tente instalar o pacote `ctags` usando o `homebrew`
 *  Para o Tagbar funcionar bem com PHP, entre no diretório do `phpctags` (**bundle/tagbar-phpctags.vim**) e instale as dependencias usando o `make`.
 * Se você quiser o autocomplete do PHP do `lvht/phpcd.vim` então vá em **bundle/phpcd.vim** e rode um `composer install`. O funcionamento é bem interessante.
 *  Para que o autocomplete Python funcione é necessário ter o vim compilado com a opção **+python**.
    *  No Debian instale o pacote `vim-gnome` que resolve.
 *  `python-git`, no Debian
 *  Para as a barra de status `airline` funcionar bem com os caracteres especiais, use essas fontes: https://github.com/Lokaltog/powerline-fonts/

### Opções

Snippets : Adicionei o plugin snipMate que tem snippets para várias linguagens. Adicionei algumas opções:

 * foreacht<tab>
   * Cria uma estrura `foreach` em um template html
 * echot<tab>
   * Cria uma estrutura `echo` em um template html
 * ift<tab>
   * Cria uma estrutura `if` em um template html

Explore : Use o comando `,t`

Tagbar : Use o comando `,l`

 * Alguns atalhos do Tagbar:
   * `x` Expandir/retrair a janela
   * `<espaço>` Mostrar a assinatura do método sobre o cursor
   * `-` Para esconder o escopo atual
   * `+` Para expandir o escopo do método/classe sobre o cursor

VDebug : Funciona com algumas linguagens, mas eu uso para PHP, usando o Xdebug. Mais informações aqui: https://github.com/joonty/vdebug

Autocomplete de funções do Python: ctrl + x, ctrl + o. Funciona super bem, mostra até a documentação.

PHPMD : ' `,md` para rodar o Mess Detector. É necessário ter o PHPMD instalado.

### Comandos úteis

 * `%` no modo de comandos vai para o abre/fecha parênteses/chaves/colchetes correspondente.
   * Adicionei o **matchit** que faz o `%` também funcionar com tags html e outras linguagens.
     Detalhe que ele reconhece até a sintaxe alternativa para `if`, `foreach` e outros do `php`.
 * `tn` para abrir nova aba e `tc` para fechar a aba atual.
 * `,/` para limpar o destaque da pesquisa.
 * `,w` para remover os espaços em branco no final das linhas.
