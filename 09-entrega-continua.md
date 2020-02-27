# Entrega Contínua

Neste capítulo vamos aprender sobre Continuous Delivery(Entrega Contínua) e entender como podemos utilizar essa prática para entregar software com mais frequência e agilidade, e menos riscos e problemas.

## O trauma do deploy

Em muitas empresas é comum que o termo *deploy* seja tratado pelo time de desenvolvimento, e principalmente pelo time de operações, como sinônimo de *problema*.

Isso se deve ao fato de que, geralmente, o processo de deploy de uma aplicação é algo burocrático, manual, lento, sujeito a falhas e que raramente é executado com total sucesso, ou seja, sem nenhum tipo de problema acontecer ao longo de sua execução.

Mesmo hoje em dia ainda é comum encontrar tal situação em diversas empresas, principalmente as que possuem aplicações que são grandes e complexas, tornando com isso que um simples processo de deploy de uma aplicação seja uma tarefa muito complexa e arriscada, pois pode deixar a aplicação, ou até mesmo a organização como um todo, fora do ar, podendo isso levar a enormes prejuízos.

Essa é razão pela qual muitos times de desenvolvimento e operações evitam ao máximo realizar deploys, acumulando o máximo de trabalho possível para ser entregue de uma só vez, pois eles sabem que o processo de deploy é algo muito complexo e que vai gerar diversos problemas, que certamente demandarão muitas horas, ou até mesmo dias, para serem resolvidos.

Talvez você já tenha passado por essa situação, na qual o processo de deploy de uma aplicação gerou diversos problemas, forçando todo o time de desenvolvimento a descobrir o que os causou e como os resolver o mais rápido possível. 

Em alguns casos é comum que o time de operações precise realizar o *rollback* da aplicação para uma versão anterior, para não deixá-la fora do ar por muito tempo, até que o time de desenvolvimento descubra e corrija os problemas que aconteceram, para que uma nova tentativa de deploy possa ser realizada futuramente.

Por conta disso ser algo recorrente, ou seja, algo que acontece em diversas aplicações e em diferentes empresas, é comum que as pessoas que trabalham em times de desenvolvimento e operações tenham um certo *trauma* de realizar deploy de aplicações, pois elas sabem muito bem o quão *dolorido* é realizar essa tarefa, por conta de suas experiências anteriores.

Como consequência disso, muitas empresas costumam limitar o número de vezes em que os deploys de aplicações podem ser realizados, para assim tentar diminuir os riscos e o estresse causados por tal tarefa.

## Janela de deploy

Uma prática comum em muitas empresas é criar a famosa **janela de deploy**, que nada mais é do que um agendamento do deploy das aplicações. Isso significa que o deploy de uma aplicação não pode ser realizada a qualquer momento, mesmo que o time de desenvolvimento já tenha finalizado as alterações nela e ela já esteja pronta para ir à produção, pois o deploy será realizado apenas na próxima janela de deploy disponível.

Por exemplo, imagine que a janela de deploy de uma empresa seja às quintas-feiras e sextas-feiras das 18:00 às 20:00. Isso significa que os deploys somente poderão ser realizados nesses dias e horários específicos.

Sendo assim, quando uma aplicação já está pronta para ir à produção, o time de desenvolvimento deve solicitar ao time de operações que realize o deploy dela na próxima janela disponível.

A janela de deploy mais comum é nas sextas-feiras à noite, ou na madrugada dos sábados, pois nesse horário é pouco comum que tenham usuários utilizando a aplicação, e caso aconteça algum problema, o time terá todo o final de semana para resolvê-lo.

## Continuous Delivery

## Os problemas do deploy manual

## Automatizando o deploy

## One-Click deploy

## Blue-Green Deployment

## Reduzindo o Lead Time
