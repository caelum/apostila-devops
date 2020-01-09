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

## E quanto ao time de Ops?
