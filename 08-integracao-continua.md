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

## Integração contínua

## Git: Branches

## Feature-Branch vs. Trunk-Based

## Servidores de integração contínua

## Jenkins
