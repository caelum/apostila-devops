# Controle de Versão

Neste capítulo vamos aprender a utilizar o Git como ferramenta de controle de versão, além de entender o porquê de ser muito importante utilizar esse tipo de ferramenta, tanto pelo time de Dev quanto pelo time de Ops.

## Backup e colaboração

Você provavelmente deve possuir diversos arquivos em seu computador pessoal. Sejam fotos, vídeos, planilhas, documentos do trabalho, da faculdade e/ou pessoais.

E se algo *trágico* acontecesse com o seu computador, como ele queimar, der problema no HD ou até mesmo ser furtado? Além do prejuízo financeiro, você perderia todos os seus arquivos, algo que seria muito trágico e traumático.

Por conta desse risco, quase todas as pessoas, inclusive pessoas que não trabalham diretamente na área de tecnologia, já possuem o hábito de realizar **cópias** de seus arquivos, em especial os arquivos que são considerados como sendo muito importantes.

Seja utilizando algum serviço Web, como Dropbox ou Google Drive, ou utilizando algum dispositivo físico, como pendrive ou HD externo, as pessoas já desenvolveram há um bom tempo o hábito de realizar **backups** com frequência, pois nunca se sabe quando algo de ruim poderá acontecer com nossos arquivos.

Ao trabalhar no desenvolvimento de uma aplicação temos a mesma situação, pois diversos arquivos serão criados, modificados e excluídos ao longo do tempo, e não queremos correr o risco de perder todo o trabalho já realizado até então.

Devemos então ter o mesmo hábito de realizar backups do código fonte da aplicação. Mas a pergunta é: onde guardar e como realizar tais backups?

Além disso, é raro trabalharmos de maneira isolada durante o projeto. Geralmente trabalhamos simultaneamente com outras pessoas, que juntas formam um time, e com isso surge mais um problema: como fazer para *sincronizar* o trabalho de todo mundo sem que uma pessoa sobrescreva o trabalho da outra, visto que cada pessoa vai trabalhar em seu próprio computador?

Por fim, há ainda mais um problema: seria interessante não apenas ter um backup do código fonte, mas também ter registrado todo o **histórico** de evolução dele, pois dificilmente as pessoas vão conseguir se lembrar de todas as modificações que nele foram feitas ao longo do tempo.

## Sistemas de Controle de Versão

Para resolver esses problemas e facilitar a vida de quem trabalha com desenvolvimento de software, diversas ferramentas foram criadas ao longo do tempo.

Esse tipo de ferramenta é conhecido como **VCS(Version Control Systems)** ou também como **SCM(Source Code Management)**, sendo hoje considerado como **obrigatório** para qualquer tipo de projeto de software.

Sistemas de controle de versão são ferramentas que ajudam um time de desenvolvimento a **gerenciar as alterações** feitas no código fonte do projeto **ao longo do tempo**.

Isso pode ser muito útil para alguém do time que queira entender melhor a **evolução** de certo trecho de código do projeto, além de também facilitar e agilizar nos casos de ser necessário **reverter** um trecho de código para uma das versões anteriores.

Outro benefício de se utilizar esse tipo de ferramenta é a **rastreabilidade**, pois em cada alteração registrada nela também são armazenados metadados sobre quando a alteração foi feita, quais modificações foram realizadas e quem foi a pessoa que as realizou.

Além disso, esse tipo de ferramenta favorece bastante a **colaboração**, pois permite que diversas pessoas trabalhem ao mesmo tempo na mesma base de código, colaborando entre si para o desenvolvimento do projeto.

Eventualmente pode haver conflitos no código fonte, no caso de duas ou mais pessoas alterarem o mesmo arquivo em um mesmo momento, mas as ferramentas de controle de versão costumam auxiliar na resolução deles, por meio de seus recursos.

Sendo assim, percebe-se então a grande importância de se utilizar uma ferramenta de controle de versão pelo time de desenvolvimento, sendo essa considerada uma ferramenta muito importante e valiosa, pois o time a utilizará diariamente ao longo do desenvolvimento do projeto.

### Ferramentas de controle de versão

Dentre as principais ferramentas de controle de versão estão:

* CVS
* Subversion(SVN)
* SourceSafe
* Git
* Mercurial

Cada uma delas tem suas vantagens e desvantagens, sendo que todas elas cumprem com seu objetivo principal, que é manter o histórico de modificações nos arquivos de um projeto.

Até meados de 2008 o SVN era uma das mais populares e utilizadas dentre elas, mas foi perdendo cada vez mais mercado para o Git, cuja popularidade aumentava cada vez mais ao redor do mundo, tendo atualmente o domínio do mercado.

## Git

O Git foi criado em 2005 por *Linus Torvalds*, o mesmo criador do kernel do *Linux*, e hoje é a ferramenta de controle de versão mais popular, utilizada e recomendada ao redor do mundo.

Dentre as principais vantagens do Git estão:

* Gratuito e open source
* Distribuído
* Alta performance
* Extensível
* Suporte a diferentes tipos de workflow

Essas vantagens foram atraindo muitos desenvolvedores ao redor do mundo, que começaram a o utilizar como principal ferramenta para controle de versão, aumentando com isso sua popularidade.

Depois de um tempo muitas ferramentas e serviços baseados no Git foram criadas, para facilitar ainda mais a vida das pessoas que trabalham com desenvolvimento de software, criando-se com isso uma enorme comunidade e apoio ao projeto.

Um exemplo disso é o **GitHub**, que é um site que funciona como serviço para hospedagem de código fonte de projetos que utilizam o Git como controle de versão.

O GitHub provavelmente foi a ferramenta que mais disseminou o uso do Git ao redor do mundo, além de também incentivar e apoiar fortemente os projetos de software open source, oferencendo planos gratuitos para esse tipo de projeto.

Isso fez com que muitos projetos open source fossem migrados de outras plataformas, como *Google Code* e *SourceForge*, para o GitHub, aumentando assim tanto a sua popularidade, como também a do Git.

## Utilizando o Git

Para utilizar o Git é preciso baixá-lo e fazer sua instalação. Existem versões para Windows, Linux e Mac, que podem ser baixadas diretamente de seu site: https://git-scm.com/downloads

![Página de Download no site do Git](imagens/capitulo-06/download-git.png)

Existem duas principais maneiras de se utilizar o Git: via linha de comandos e via interface gráfica.

Existem aplicações gráficas para se trabalhar com o Git, como por exemplo: *gitk*, *git-gui* e *GitHub for macOS and Windows*, além das próprias IDEs já possuirem *plugins* que as integram diretamente com o Git, evitando a necessidade de se utilizar ferramentas externas.

Mas ao longo do curso vamos trabalhar com o Git via linha de comandos, utilizando o *Terminal*, para não ficar dependente de uma ferramenta ou plugin em específico, e também para entender melhor como funcionam os comandos do Git.

### Criando um novo repositório

No Git existe um termo importante chamado **repositório**, que nada mais é do que o diretório raiz da aplicação, no qual o time de desenvolvimento vai criar o código fonte dela. A ideia é que cada aplicação tenha o seu próprio repositório separado, para que o código de uma não atrapalhe no das outras.

Para criar um novo repositório no Git basta acessar o diretório raiz da aplicação e rodar o seguinte comando:

```
git init
```

Ao rodar o comando anterior o Git criará um diretório oculto chamado `.git`, o qual contém todas as informações sobre o repositório para o Git. Esse diretório será utilizado pelo Git para armazenar o histórico de alterações dos arquivos, dentre outras informações, não devendo ser modificado pelo time de desenvolvimento. É justamente por isso que ele é um diretório oculto :)

Agora o time de desenvolvimento já pode criar os arquivos que farão parte do código fonte da aplicação.

### Configurando o usuário para o Git

Antes de registrar as alterações no repositório precisamos nos *identificar* para o Git, pois o Git precisa guardar quem foi a pessoa que registrou cada alteração.

Isso deve ser feito utilizando os seguintes dois comandos:

```
git config --global user.name 'seu nome'
git config --global user.email 'seu email'
```

Agora todas as alterações registradas nesse repositório, feitas a partir desse computador, estarão vinculadas à pessoa com o *nome* e *email* indicados no comando anterior.

O parâmetro `--global` indica ao Git que esse mesmo nome e email deve ser utilizado em todos os novos repositórios Git que forem criados ou baixados a partir desse computador, para que assim você não precise ficar repetindo o comando anterior a cada novo repositório que for trabalhar.

### Registrando alterações com commits

Outro termo importante e recorrente no Git é o **commit**, que nada mais é do que a representação de um registro de alteração efetuada por alguém em um determinado momento no repositório.

Sempre que uma pessoa do time de desenvolvimento desejar registrar no histórico do repositório alguma alteração, ela precisará fazer um commit.

Ao realizar um commit no repositório, o Git deixará registrado quem o efetuou, quando ele foi feito e, principalmente, quais arquivos foram modificados.

Para efetuar um commit, o seguinte comando deve ser utilizado:

```
git commit -m 'mensagem do commit'
```

O parâmetro `-m` é utilizado para escrever uma mensagem que explique o que aquele commit representa para a aplicação. Veja alguns exemplos de mensagens:

* Correção do bug no botão de logout
* Funcionalidade de login
* Ajuste no tamanho das fontes
* Alteração da cor de fundo da tabela de novos clientes
* Correção ortográfica na mensagem de erro
* Adicionando campo telefone no cadastro de clientes
* Adicionando novo item na barra de menu superior
* Simplificando código que calcula o valor do saldo devedor

Perceba que as mensagens costumam ser curtas e objetivas em relação ao que aquele commit representa, facilitando assim quando for necessário analisar os commits do repositório.

## E quanto ao time de Ops?
