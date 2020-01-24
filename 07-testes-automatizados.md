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

Perceba que realizar testes de funcionalidades de uma aplicação é uma tarefa repetitiva, pois sempre o mesmo passo a passo deverá ser executado. Justamente por isso é que devemos tentar **automatizar** essa tarefa, pois um computador é um especialista em executar tarefas repetitivas, de maneira muito mais ágil e confiável do que um ser humano. Seres humanos são melhores em tarefas que exigem criatividade e que, eventualmente, necessitam de *improvisos* :)

Não demorou muito para que as pessoas criassem ferramentas que automatizassem a execução de seus testes, nascendo assim o termo **testes automatizados**.

Um teste automatizado nada mais é do que um programa, ou seja, é um trecho de código que vai verificar se o seu código se comporta de acordo com as regras de negócio da aplicação, sempre gerando os resultados esperados para cada cenário possível.

Vamos a um exemplo: imagine que precisamos escrever um código para realizar o cálculo do desconto de um determinado produto, sendo que o desconto deve ser baseado no preço do produto. A regra determina que produtos cujo preço seja de até R$1000.00 não tem desconto, já produtos com preço superior a esse valor deve ter 10% de desconto.

Poderíamos ter a seguinte classe, em Java, para implementar essa funcionalidade:

```java
public class CalculadoraDeDesconto {

  private static final BigDecimal MIL_REAIS = new BigDecimal("1000.00");
  private static final BigDecimal DEZ_POR_CENTO = new BigDecimal("0.1");

  public BigDecimal valorDoDesconto(Produto produto) {
    BigDecimal precoDoProduto = produto.getPreco();

    if (precoDoProduto.compareTo(MIL_REAIS) <= 0) {
      return BigDecimal.ZERO;
    } else {
      return precoDoProduto.multiply(DEZ_POR_CENTO);
    }
  }

}
```

O código anterior aparenta estar correto e deveria funcionar de acordo com as regras de negócio da aplicação, mas podemos escrever um teste automatizado para ter certeza.

Em Java poderíamos escrever o seguinte código para realizar os testes:

```java
public class TestaDescontos {

  public static void main(String[] args) {
    Produto caneta = new Produto(new BigDecimal("2.5"));
    Produto celular = new Produto(new BigDecimal("1000"));
    Produto notebook = new Produto(new BigDecimal("5000"));

    CalculadoraDeDesconto calculadora = new CalculadoraDeDesconto();

    System.out.println(calculadora.valorDoDesconto(caneta));
    System.out.println(calculadora.valorDoDesconto(celular));
    System.out.println(calculadora.valorDoDesconto(notebook));
  }

}
```

Ao executar o código de teste anterior, teremos a seguinte saída no console:

```
0
0
500.0
```

Provando assim que realmente o código da classe `CalculadoraDeDesconto` está correto e funciona de acordo com as regras de negócio da aplicação.

Se alguma pessoa do time de desenvolvimento alterar o código da classe `CalculadoraDeDesconto` gerando, acidentalmente, um bug, ao executar novamente a classe de testes a saída será diferente, indicando assim a possível existência de um bug na aplicação.

Essa é a essência dos testes automatizados. Executar de maneira **ágil** os testes da aplicação e receber, também de maneira ágil, o **feedback** de que tudo continua funcionando normalmente ou de que algum problema surgiu.

Porém, podemos melhorar ainda mais a automatização desses testes, com a utilização de ferramentas criadas para esse objetivo, pois ainda estamos realizando alguns passos de maneira manual.

Por exemplo, o teste anterior está em uma classe Java com o método `main`, mas essa classe executa apenas os testes da classe `CalculadoraDeDesconto`. Em uma aplicação real teremos dezenas, centenas ou até milhares de outras classes contendo regras de negócio, e precisaríamos com isso ter uma classe de teste para cada classe dessa.

O problema é que teríamos que executar as classes de testes uma de cada vez, aumentando assim o tempo desse processo. Além disso, para saber se um teste deu certo, ou seja, se a classe testada está funcionando corretamente, devemos analisar o que foi impresso no console, e isso também para cada uma das classes de teste.

Aqui entra a necessidade de se utilizar alguma ferramenta que simplifique esse processo, para que possamos escrever, executar e analisar os testes de maneira ágil e eficiente.

Existem várias ferramentas que atendem a esse propósito, sendo elas conhecidas como ferramentas de **Unit Testing**. Dentre as principais estão:

* JUnit(Java)
* NUnit(.Net)
* PHPUnit(PHP)
* PyUnit(Python)

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