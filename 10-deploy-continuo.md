# Deploy Contínuo

Neste capítulo vamos aprender sobre Continuous Deployment(Deploy Contínuo) e entender sua diferença em relação ao Continuous Delivery, além de aprender a utilizar essa prática para levar o processo de automatização e entrega de software ao extremo, fazendo deploys a cada novo commit realizado.

## Continuous Deployment

No capítulo anterior estudamos sobre continuous delivery e agora estudaremos sobre continuous deployment, que é mais uma prática relacionada com entrega de software.

Mas se essa prática também está relacionada com entrega de software, qual é sua diferença em relação ao continuous delivery?

A diferença está na **maneira** que a entrega do software é realizada.

Enquanto no continuous delivery temos uma ferramenta com um *botão* para disparar o processo de entrega de software, ou seja, realizar o deploy de uma nova versão dele, no continuous deployment essa entrega é efetuada de maneira totalmente automatizada, sem a necessidade de intervenção de alguma pessoa para ser realizada.

Ou seja, cada nova mudança realizada no software, ao ser registrada no controle de versão, vai disparar automaticamente o processo de deploy e realizar a entrega dele de maneira imediata, não havendo mais a necessidade de alguém ter de acessar uma ferramenta e apertar o *botão* que dispara o processo de deploy.

Resumindo em termos técnicos, isso significa que cada novo commit realizado por alguma pessoa do time de desenvolvimento vai disparar automaticamente o processo de deploy, sendo que as alterações desse commit estarão disponíveis no ambiente de produção em questão de minutos.

## Vantagens e desvantagens do continuous deployment

A grande vantagem de utilizar a prática de continuous deployment é o fato de que cada mudança registrada no controle de versão é imediatamente entregue e disponibilizada em ambiente de produção.

Do ponto de vista das pessoas que vão utilizar o software isso é extremamente útil e vantajoso, pois elas terão acesso às novidades do software de maneira muito mais frequente e ágil, sem ter que esperar muito tempo por futuras releases.

Principalmente para as pessoas que estão acostumadas a solicitar pequenos ajustes e melhorias e acabam tendo que esperar por ciclos muito longos, de semanas a meses, para receber tais mudanças entregues em produção, a prática de continuous deployment é vista com *bons olhos*, pois o time agora será capaz de entregar pequenas alterações para elas em questão de minutos ou horas.

Uma desvantagem é que o time de desenvolvimento vai precisar se adaptar para utilizar essa prática, pois é comum que eles utilizem ciclos de desenvolvimento com frequência predefinida, sendo que a release, na teoria, costuma ser liberada apenas ao final de cada ciclo.

Por exemplo, times que utilizam o Scrum como metodologia costumam ter ciclos, conhecidos como Sprints, que variam de uma a quatro semanas, sendo comum que eles estejam acostumados a realizarem a entrega do incremento do software apenas no final de cada Sprint.

Outro problema é que o time de desenvolvimento precisa ter mais atenção ao realizar commits, pois cada commit vai disparar o processo de deploy, sendo que nem sempre um commit pode representar uma tarefa finalizada e com isso pode acontecer de existirem funcionalidades incompletas, ou até mesmo com bugs, em ambiente de produção.

Nesse caso o time vai precisar separar de alguma maneira o trabalho finalizado do trabalho que está ainda em andamento, para evitar problemas em ambiente de produção. Existe uma prática utilizada para esse cenário, que ficou conhecida como **Feature Toggle**.

## Feature Toggle


## Exercício: Continuous Deployment com Jenkins
