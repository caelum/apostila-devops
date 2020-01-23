# Testes Automatizados

Neste capítulo vamos aprender sobre testes automatizados e o porquê dessa prática ser muito importante não somente para times DevOps, mas para qualquer projeto de software.

## O processo de desenvolvimento de um software

Desenvolver um software é um processo que envolve diversas atividades, tais como:

* Entender os problemas e necessidades de uma ou mais áreas de negócio da empresa;
* Pensar nas funcionalidades que serão necessárias para resolver tais problemas;
* Conversar com as pessoas das áreas de negócio para detalhar melhor tais problemas e as funcionalidades do software;
* Documentar esses problemas e as funcionalidades do software;
* Escrever o código de implementação de tais funcionalidades;
* Testar as funcionalidades para garantir a conformidade;
* Disponibilizar o software para os usuários; e
* Realizar correções e melhorias no software;

Perceba então como desenvolver um software não se resume a apenas escrever código e colocá-lo em produção. É um processo muito mais abrangente e **complexo**, pois envolve diversas áreas e pessoas que devem colaborar entre si para assim alcançar o resultado esperado.

Obviamente, em um processo complexo como esse, problemas e dificuldades vão surgir ao longo do caminho e devemos estar cientes de que isso é algo natural e inevitável.

## Funcionalidades e bugs

Um dos problemas que pode acontecer durante o desenvolvimento de um software são os **bugs**, que nada mais são do que erros inesperados que acontecem ao utilizar o software, sejam eles causados por problemas técnicos ou por não conformidade de regras de negócio.

É praticamente impossível desenvolver um software sem que bugs surjam ao longo do caminho. Devemos entender que isso faz parte do processo e não focar em evitar que bugs aconteçam, mas sim em como **minimizar** o número de bugs e, principalmente, em como **detectar rapidamente** quando um bug surgir, para que então o time consiga o resolver o mais rápido possível.

O ideal é que o próprio time de desenvolvimento detecte os bugs antes do código entrar em produção, evitando assim que os usuários da aplicação sejam prejudicados. Outra coisa importante é evitar que bugs que já foram corrigidos ocorram novamente na aplicação.

A principal maneira para lidar com bugs é a prática de se realizar **testes** durante o desenvolvimento das funcionalidades da aplicação. Esses testes podem ser realizados pela própria pessoa que desenvolveu a funcionalidade ou por alguém que tenha o perfil de *analista de testes*, e possua as habilidades necessárias para saber testar e encontrar bugs em funcionalidades de uma aplicação.

## Testes manuais e seus problemas

O problema da abordagem anterior é que ela é feita de maneira **manual**, ou seja, necessita que uma pessoa execute o passo a passo do teste na aplicação e verifique se tudo ocorreu conforme o esperado. Obviamente, isso para cada teste a ser realizado.

No início do projeto essa tarefa não vai consumir muito tempo e esforço do time de desenvolvimento, pois ainda existem poucas funcionalidades desenvolvidas, mas a medida que a aplicação crescer, com a implementação de novas funcionalidades, o esforço e tempo aumentarão proporcionalmente.

Uma aplicação grande e complexa, com inúmeras funcionalidades e regras de negócio complicadas, vai acabar exigindo centenas ou até milhares de *cenários de testes* para garantir que tudo funciona conforme o esperado.

É muito provável que apenas uma pessoa sozinha não seja capaz de realizar todos esses testes de maneira ágil, surgindo com isso a necessidade de se criar um time de testes, formado por pessoas que são especialistas em realizar testes em aplicações.

Além disso, há ainda um outro problema: sempre que alguém do time de desenvolvimento realiza uma alteração no código fonte da aplicação, existe o risco dessa alteração causar algum impacto no código já existente, gerando com isso novos bugs.

Ou seja, a cada nova mudança no código fonte da aplicação, **todos** os testes deveriam ser realizados novamente, pois não sabemos qual o impacto que essa mudança pode ter gerado. Isso é conhecido como teste de **regressão**, pois a ideia é regredir e testar novamente o que já havia sido testado anteriormente.

Obviamente, realizar testes de regressão manualmente da aplicação inteira a cada nova mudança é algo muito custoso, pois o esforço necessário será proporcional ao tamanho e complexidade do software, podendo em muitos casos ser inviável.

Perceba então como realizar testes de maneira manual em uma aplicação acaba se tornando uma tarefa muito difícil e insustentável no longo prazo.

Para piorar a situação, podemos ainda entrar no mérito de discutir sobre o *fator humano* envolvido nessa atividade, pois são pessoas que vão realizar tais testes, e as pessoas também erram. Pode haver o caso de alguém realizar algum teste de maneira errônea, identificando um bug que na verdade não existe ou o contrário, deixando passar de maneira despercebida um bug que deveria ter sido reportado.

## Testes automatizados

### JUnit

## Exercício

## Tipos de testes automatizados

### Testes de unidade

### Testes de integração

### Mocks

### Testes de aceitação

## Exercício

BOX:Piramide de testes

## Cobertura de testes

## Exercício

## Métrica: Change Failure Rate