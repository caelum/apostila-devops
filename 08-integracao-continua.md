# Integração Contínua

Neste capítulo vamos aprender sobre Integração Contínua e entender o porquê dessa prática ser indispensável para um time DevOps, além de também aprender a utilizar o Jenkins como uma das principais ferramentas para tal prática.

## Trabalhando em time

Já discutimos que desenvolver um software é uma tarefa bastante complexa e desafiadora, não sendo comum que apenas uma pessoa, de maneira isolada, seja responsável por todo o desenvolvimento dele. É mais provável que seja formado um time, com diversas pessoas colaborando entre si, para realizar tal tarefa.

E com isso algumas dificuldades podem surgir:

* Como fazer para que essas pessoas trabalhem todas ao mesmo tempo mexendo na mesma **base de código**?
* Como fazer para que essas pessoas **sincronizem** sua parte do trabalho com as partes das outras?
* Como identificar possíveis **conflitos** no código ao realizar a sincronização do trabalho?

Já discutimos também, em capítulos anteriores, sobre essas dificuldades e que utilizar uma ferramenta de **controle de versão** é a principal solução para elas. Inclusive, para isso, aprendemos e começamos a utilizar o Git em nossa aplicação.

Entretanto, apenas utilizar uma ferramenta de controle de versão não vai resolver todos os problemas, pois algumas dificuldades ainda podem permanecer e outras poderão surgir.

Para entender melhor que tipos de problemas podem surgir, vamos imaginar a seguinte situação: nossa aplicação possui diversas funcionalidades que precisam ser desenvolvidas e outras que precisam ser ajustadas, e o time de desenvolvimento é formado por 8 pessoas.

Suponha que você ficou responsável por desenvolver alguma dessas funcionalidades, por exemplo, uma tela que mostre um relatório mensal de tópicos criados no fórum da Alura. Você analisou o esforço para realizar essa tarefa e estimou um prazo de 4 dias para realizá-la.

Após os 5 dias, você finalizou o trabalho e agora precisa sincronizar seus commits com o repositório central que está no GitLab. Vimos que isso é algo bem simples de se fazer com o Git, bastando apenas utilizar o comando `git push`.

Porém, durante esses 5 dias em que você ficou trabalhando nessa funcionalidade, as outras 7 pessoas do time também estavam trabalhando em suas funcionalidades, realizando alterações no código fonte da aplicação e commits para registrá-las.

Embora 5 dias possa parecer pouco tempo, quando temos muitas pessoas mexendo ao mesmo tempo no código fonte de uma aplicação, o trabalho acumulado por elas será muito grande, sendo que o efeito disso será percebido apenas quando elas forem sincronizar seus trabalhos.

Antes de efetuar o `push`, você vai precisar executar o comando `pull`, para baixar os commits enviados ao repositório central pelas outras 7 pessoas do time.

Como são muitas pessoas trabalhando na aplicação ao longo de 5 dias, serão muitos commits a serem baixados, sendo muito provável que alguns conflitos ocorram durante a sincronização.

> **Conflitos?**
>
> Em sistemas de controle de versão conflitos ocorrem quando duas ou mais pessoas alteram um mesmo arquivo no repositório.
>
> Se as alterações forem em linhas distintas do arquivo, o Git é capaz de realizar o **merge(mesclagem)** de maneira automática, sem a necessidade de intervenção humana.
>
> Somente nos casos das alterações terem ocorrido na mesma linha de um determinado arquivo é que precisaremos resolver manualmente o conflito, editando o arquivo e indicando ao Git que o conflito foi resolvido.

Perceba então que quanto mais tempo sem sincronizar o código fonte da aplicação, com as alterações feitas pelas outras pessoas do time, mais commits com alterações estarão sendo acumulados, aumentando proporcionalmente com isso as chances de conflitos ocorrerem durante a próxima sincronização.

Agora imagine que o time é formado por 16 pessoas e você ficou 25 dias trabalhando de maneira isolada no desenvolvimento de uma determinada funcionalidade. É bem provável que a sincronização, também chamada de **integração**, será bastante *dolorosa*.

## Integration hell

Trabalhar durante muito tempo de maneira isolada, sem integrar seu código com o repositório central, pode levar a problemas de conflitos ao realizar a integração, que podem demandar muito tempo para serem resolvidos, afinal, estamos falando de centenas, ou até milhares de alterações realizadas no repositório durante todo esse tempo.

Infelizmente essa prática ainda é comum em muitos projetos de software, podendo levar as equipes de desenvolvimento a terem uma certa **aversão** à integração de código, pois as pessoas sabem que isso se trata de um evento traumático e que certamente vai gerar muita dor de cabeça.

Inclusive, as pessoas criaram um termo que define bem essa situação: **Integration Hell**, também conhecido como **Merge Hell**. Isso se deve justamente ao fato de ser um verdadeiro *inferno* o fato de ter que integrar o código e gastar um bom tempo resolvendo problemas de conflitos que são bastante chatos de lidar.

É bem comum encontrar alguns times de desenvolvimento que costumam levar horas, ou até mesmo dias, para fazer a integração do código fonte da aplicação. Geralmente essa atividade é realizada apenas quando é necessário subir uma nova versão da aplicação em ambiente de produção. Também é comum que essa atividade seja realizada apenas nas sextas-feiras, pois o time de desenvolvimento terá o final de semana para resolver os problemas de conflitos, caso seja necessário.

Além dos conflitos, outro problema muito comum ao realizar a integração acontece quando, mesmo depois da resolução dos conflitos, a aplicação não funciona como deveria. Às vezes uma alteração em uma parte do código produz efeitos colaterais em outras partes, sem que a pessoa que realizou tal alteração perceba.

Os testes automatizados, conforme foi visto no capítulo anterior, costumam ajudar bastante a evitar esse problema, mas nem sempre as pessoas se lembram de executar todos os testes após alterar o código fonte da aplicação, podendo com isso deixar de ter rapidamente o feedback de que um ou mais bugs foram gerados.

## Integração Contínua

Existe uma frase bem famosa do Martin Fowler, citada em seu livro *Continuous Integration*, que diz: "If it hurts, do it more often", que em português seria algo como: "Se dói, faça mais vezes".

Embora essa frase seja meio *estranha*, soando até como *masoquismo*, ela reflete exatamente a solução para os problemas citados acima, pois integrar código é uma tarefa dolorosa apenas quando não a fazemos com bastante frequência.

Ao realizar a integração apenas ao finalizar uma tarefa, como por exemplo o desenvolvimento de uma funcionalidade, ocorre um acumulo de alterações no código fonte da aplicação, que certamente vai ser bastante trabalhoso de integrar.

Mas ao diminuir esse tempo, por exemplo integrando semanalmente, diariamente ou até mesmo diversas vezes ao longo do dia, diminuímos com isso o acúmulo de alterações, reduzindo assim também a dificuldade e problemas de se integrar código.

Esse é justamente o ponto principal da frase anterior, pois o foco não é aumentar a frequência de integração para que as pessoas se *acostumem* com a dor, mas sim para **reduzir**, ou quem sabe até eliminar, a dor.

Ou seja, quanto menos tempo levamos para integrar nosso código com o repositório central, menores são as chances de conflitos e outros problemas acontecerem, pois o trabalho acumulado será bem pequeno.

Esse é justamente o *coração* da prática que ficou conhecida como **Continuous Integration(Integração Contínua)**, que é uma das principais práticas utilizadas por times DevOps.

O termo *integração contínua* foi descrito inicialmente por **Grady Booch**, um dos criadores da *UML(Unified Modeling Language)*, em 1991 em seu livro *Object Oriented Design: With Applications*, mas se popularizou apenas após **Kent Beck** ter o incluído com uma das práticas do *XP(Extreme Programming)*, que é uma das principais metodologias ágeis utilizadas por times de desenvolvimento de software.

Integração contínua não é uma ferramenta, como algumas pessoas costumam interpretar de maneira errônea, mas sim uma **prática**. Tal prática consiste no **hábito** que as pessoas que fazem parte do time de desenvolvimento devem ter de continuamente integrarem o código de seu repositório local com o repositório remoto.

Ao invés de realizar tais integrações em períodos longos, como semanas ou meses, o ideal é sempre preferir períodos mais curtos, como dias ou horas.

Dessa forma não ficamos com o nosso repositório local desatualizado por um período muito longo, algo que poderia aumentar drasticamente as chances de conflitos e bugs.

Embora não seja obrigatório, é altamente recomendado que as práticas de build e testes automatizados também façam parte do processo de integração contínua, para assim potencializar seu resultado e benefícios.

## Princípios da integração contínua

Para que o processo de integração contínua se torne um hábito entre todas as pessoas do time de desenvolvimento, não se tornando algo complexo e trabalhoso, alguns princípios devem ser seguidos.

Ao seguir tais princípios, aumentamos as chances de aplicar corretamente a prática de integração contínua e com isso colher todos os seus benefícios.

### Utilize um repositório de código

Já discutimos anteriormente que utilizar uma ferramenta de controle de versão é algo essencial para qualquer projeto de desenvolvimento de software. Com integração contínua isso se torna mais importante ainda.

As pessoas do time precisam ter acesso ao código fonte da aplicação, para poder obter uma cópia dele e então começar a trabalhar nela, criando, editando e removendo seus arquivos.

Gerenciar manualmente os milhares de arquivos que fazem parte do código fonte da aplicação e todas as modificações efetuadas neles se torna uma tarefa praticamente impossível de ser realizada.

Portanto, utilizar uma ferramenta de controle de versão e manter o código fonte da aplicação em um repositório é um dos principais princípios que devem ser seguidos para se realizar a prática da integração contínua.

Não somente o código fonte da aplicação deve ser mantido no repositório, mas também todo e qualquer recurso que seja essencial para ela ser executada normalmente. Isso inclui, por exemplo, os seguintes tipos de recursos:

* Scripts de testes
* Scripts de banco de dados
* Arquivos de configurações
* Bibliotecas externas

Para avaliar se a regra anterior está sendo seguida, responda ao seguinte questionamento: Se eu baixar uma cópia do repositório para um computador recém formatado, serei capaz de executar o build da aplicação sem a necessidade de baixar quaisquer outros arquivos externos?

Caso a resposta do questionamento anterior seja negativa, isso significa que o repositório da aplicação está incompleto, ou seja, existem arquivos essenciais que deveriam estar presentes no repositório, mas que não estão.

### Automatize o processo de build

Integração contínua não se resume a apenas sincronizar o repositório local com o remoto e resolver os conflitos de códigos que eventualmente ocorrerem.

Não adianta nada apenas resolver os conflitos de código, se não pudermos mais realizar o build da aplicação por conta de algum problema ter ocorrido com as alterações realizadas.

Ou seja, é importante também, após realizar a sincronização e resolução dos conflitos, realizar o build da aplicação, para verificar se as últimas alterações realizadas no código fonte dela não causaram algum efeito colateral.

Também é importante que esse processo de build seja automatizado, para que ele seja executado de maneira mais ágil e com menos riscos de falhas.

Perceba então que automatizar o processo de build, para que ele possa ser executado de maneira ágil e confiável a cada integração realizada, se torna também um princípio importante no processo de integração contínua.

Automatização de build é outro assunto que também já foi discutido anteriormente aqui no curso, sendo que já sabemos muito bem como o realizar e sua grande importância para um time DevOps.

### Utilize testes automatizados

No capítulo anterior discutimos sobre testes automatizados e os grandes benefícios que tal prática proporciona para um projeto de software.

Justamente por conta disso é que a prática de escrever testes automatizados em uma aplicação se torna, também, um dos princípios da integração contínua.

Isso porque de nada adianta gerar o build da aplicação com sucesso, gerando com isso o artefato que pode ser realizado o deploy em produção, se nela existem diversos bugs que foram gerados por conta das últimas alterações que foram realizadas nela.

É extremamente importante também garantir que tudo o que estava funcionando, antes de realizar a integração, continue funcionando normalmente após a integração ser realizada.

E sabemos que a única maneira de garantir isso é testando a aplicação, para verificar se nenhuma das modificações gerou um efeito colateral resultando em bugs.

Testar todas as funcionalidades da aplicação de maneira manual, a cada nova integração, se torna algo muito trabalhoso e lento com o passar do tempo, chegando a se tornar algo inviável.

Sendo assim, nada melhor do que automatizar todos esses testes, para agilizar esse processo de detectar bugs e garantir que nada foi impactado com as novas alterações realizadas no código fonte da aplicação.

### Integre os testes automatizados ao processo de build

De nada adianta ter testes automatizados na aplicação, se eles não forem executados continuamente para a detecção de possíveis bugs.

Eventualmente algumas alterações no código fonte da aplicação podem gerar efeitos colaterais, fazendo com que alguns testes automatizados falhem por conta de bugs terem surgido.

Devemos então ter o hábito de sempre executar os testes automatizados da aplicação, principalmente após realizar alterações no código fonte dela, para detectar o quanto antes os problemas.

Porém, pode acontecer das pessoas se esquecerem de executar os testes automatizados, deixando passar batido alguns bugs que deveriam ter sido detectados.

Até aí não seria um grande problema, pois o código foi integrado apenas localmente, sendo que tais alterações, a princípio, não foram enviadas para o ambiente de produção.

Problema mesmo seria se realizarmos o build da aplicação para realizar um deploy em ambiente de produção, sem antes executar os testes automatizados, pois corremos o risco de gerar um artefato contendo bugs.

Ou seja, o mínimo que devemos fazer é integrar a execução dos testes automatizados ao processo de build da aplicação, para que eles sejam executados automaticamente a cada novo build realizado, inclusive forçando uma interrupção do processo de build caso algum dos testes falhe, pois isso indica a presença de um bug.

A regra é bem simples e clara: não podemos gerar os artefatos do build da aplicação no caso de existirem bugs nela!

Isso é extremamente importante para se evitar que bugs sejam colocados em ambiente de produção, prejudicando os usuários da aplicação e até mesmo a organização como um todo.

Esse é mais um dos princípios do processo de integração contínua, que inclusive já estamos seguindo, pois o build de nossa aplicação está configurado para ser automaticamente interrompido no caso de algum teste automatizado falhar.

### Sincronize diariamente com o repositório remoto

Esse talvez possa ser considerado como o principal princípio da integração contínua, pois de nada adianta seguir todos os princípios anteriores, se a integração em si é realizada com pouca frequência.

Devemos encurtar ao máximo o intervalo em que as integrações ocorrem, para minimizar o **volume** de código a ser integrado, pois já discutimos bastante sobre os problemas e dificuldades que podemos enfrentar ao não seguir esse hábito.

A periodicidade recomendada para a sincronização com o repositório remoto é diária, ou seja, pelo menos uma vez ao dia devemos sincronizar nosso repositório local com o remoto, para assim disparar todo o processo de integração contínua e então detectar e corrigir o quanto antes os problemas que surgirem.

Se possível, o ideal seria tentar encurtar mais ainda esse período, realizando então diversas integrações ao longo de todos os dias de trabalho.

### Mantenha ágil o processo de build

Um dos principais fatores que contribuem para a redução da frequência, ou até mesmo o abandono, da prática de integração contínua é o seu tempo de execução ser muito longo.

No início do projeto o tempo para a execução do processo de integração contínua como um todo costuma ser bem pequeno, com uma duração de poucos minutos ou até mesmo segundos.

Porém, conforme a aplicação vai crescendo, com a adição de novas funcionalidades, testes automatizados e complexidade, é natural que o esse tempo também aumente proporcionalmente, podendo levar vários minutos ou até mesmo horas, em casos extremos.

Imagine uma aplicação cujo processo de integração contínua demore 20 minutos para ser concluído. Certamente as pessoas do time não vão gostar do fato de terem de esperar 20 minutos a cada integração que fizerem, pois isso vai impactar absurdamente sua produtividade.

Nesse caso é bem provável que as pessoas parem de realizar o processo de integração contínua, ou, no mínimo, diminuam drasticamente sua frequência, para que assim consigam trabalhar de maneira produtiva, sem muitos momentos de espera e ociosidade.

Ou seja, precisamos ficar sempre atentos a quanto tempo leva para que o ciclo de integração contínua seja concluído, realizando ajustes quando ele estiver muito elevado.

Agora você deve estar se perguntando: mas qual é o tempo ideal de duração do processo de integração contínua da aplicação que estou desenvolvendo?

Infelizmente não existe uma resposta padrão para essa pergunta. Cada aplicação tem suas necessidades e particularidades distintas, fazendo com que esse tempo varie de projeto para projeto.

É possível utilizar como base uma prática do XP chamada **10-minute build**, que recomenda que o build seja executado em no máximo 10 minutos, pois um tempo maior do que esse vai causar uma redução na frequência de sua realização, fazendo com que o time perca feedbacks importantes e rápidos sobre a situação atual da aplicação.

### Dispare o processo de integração contínua a cada novo commit

Ao invés de criar uma especie de *calendário* para a execução do processo de integração contínua, ou seja, definir horários ou uma periodicidade específica, é mais simples e fácil o disparar a cada novo commit efetuado no repositório.

Isso evitar termos de ficar lembrando quando precisamos disparar o processo, além de fazer mais sentido, pois cada commit representa um conjunto de modificações que foi realizado no código fonte da aplicação.

### Utilize um servidor para executar a integração contínua

Até o momento falamos bastante sobre automatização, mas o foco dela era em algumas das etapas do processo de integração contínua e não no processo em si.

Para agilizar o processo e diminuir o risco de esquecimento ou de erros em sua execução, o ideal é sempre utilizar alguma ferramenta que dispare o processo de integração contínua de maneira automatizada para o time.

Inclusive podemos instalar e configurar essa ferramenta em algum servidor externo, evitando que tenhamos que executar o processo em nosso próprio computador.

Dessa forma podemos focar em desenvolver o software em si, de tal forma que o processo de integração contínua funcionará de maneira transparente para o time de desenvolvimento. A única coisa que o time precisará fazer é ter o hábito de sincronizar seu repositório continuamente.

Como não estaremos mais disparando e acompanhando manualmente a execução do processo, precisamos também configurar para que a ferramenta nos alerte de maneira automática, no caso de erros terem sido encontrados.

Seguindo esse princípio o time poderá ficar mais focado em desenvolver o software em si, sendo alertado eventualmente em casos de problemas, e com isso sua produtividade não será muito afetada.

Existem diversas ferramentas que nos auxiliam com esse processo de integração contínua, tais como:

* Jenkins
* Travis CI
* Circle CI
* Bamboo
* Team City
* Code Ship

Mais adiante nesse capítulo aprenderemos a utilizar o Jenkins como nossa principal ferramenta para integração contínua.

### Imediatamente corrija os problemas que forem detectados

Sempre que um problema for detectado, independente se foi por uma pessoa do time, ao realizar o processo de integração contínua manualmente, ou por uma ferramenta, que disparou o processo de maneira automatizada, o time deve parar o que estiver fazendo e imediatamente focar na resolução dele.

Isso é muito importante para evitar que os problemas se acumulem, além de que quanto mais tempo demoramos para resolver um problema, mais difícil será de lembrar o porquê das alterações que o causaram terem sido realizadas.

Ou seja, será muito mais fácil de encontrar e resolver o problema na hora que ele surgir, pois ainda não teremos uma quantidade muito grande de trabalho acumulado e também porque o conhecimento ainda estará *fresco* na cabeça das pessoas do time.

### Torne visível a todos o processo de integração contínua

No início do curso discutimos que transparência é um dos principais pilares culturais para a adoção do modelo DevOps em uma organização, pois sem transparência não haverá confiança.

Esse pilar também é válido para o processo de integração contínua, pois todas as pessoas do time deveriam saber como funciona esse processo em sua aplicação, além de também conseguir visualizar os problemas e possíveis melhorias nele.

Deixar o processo de integração contínua disponível e visível a todos é mais uma maneira de praticar o princípio da transparência, além de também ser considerado como uma forma de comunicação.

É comum que alguns times de desenvolvimento utilizem um monitor ou TV de tela grande, geralmente ficando na mesma sala em que o time trabalha, como forma de seguir esse princípio, pois assim qualquer pessoa, tanto do time quanto externa, ficará sabendo de maneira bem clara e direta como está a situação da aplicação.

![Exemplo de televisão mostrando o status do build de aplicações](imagens/capitulo-08/tv-build.jpeg)

As ferramentas de integração contínua, como o Jenkins, possuem recursos para exibir de maneira visual o status de cada aplicação, nos auxiliando com isso a seguir esse princípio.

### Deixe acessível os artefatos gerados pelos builds

Lembre-se que o resultado do build da aplicação é um artefato que pode ser colocado em produção. Para simplificar esse processo, é importante facilitar o acesso a tais artefatos.

Geralmente na própria ferramenta de integração contínua conseguimos ter acesso aos artefatos produzidos por cada um dos builds que foram executados, facilitando com isso o acesso a eles.

Isso é importante também para que o time de Ops não precise ficar interrompendo alguém do time de Dev toda vez que precisar ter acesso aos artefatos da aplicação para realizar um novo deploy.

Aqui também, novamente, podemos ver o pilar da transparência sendo aplicado.

### Automatize o processo de deploy

Pelo mesmo fato de ser extremamente importante automatizar o processo de build da aplicação, o processo de deploy também deveria ser automatizado.

Além de agilizar o deploy de uma nova versão da aplicação, a automatização vai reduzir o risco de erros que podem ser causados quando esse processo é executado de maneira manual.

Mais adiante no curso veremos com mais detalhes e aplicaremos esse princípio em nossa aplicação.

## Jenkins

## Git: Branches

## Feature-Branch vs. Trunk-Based
