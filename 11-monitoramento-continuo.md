# Monitoramento Contínuo

Neste capítulo vamos aprender sobre monitoramento de aplicações e como utilizar essa prática para detectar e antecipar possíveis problemas, contribuindo para uma maior agilidade na recuperação de falhas.

## O problema: Sistema fora do ar

Nenhum sistema é à prova de falhas, sendo que problemas sempre poderão acontecer a qualquer momento. Entretanto, é comum que alguns times não tratem desse tópico com muita prioridade, o que pode ocasionar em sérios prejuízos para a organização.

Sempre que uma aplicação fica indisponível a seus usuários, isso deve ser tratado como prioridade, e até com certa urgência, pois certamente esse fato pode ter interrompido e impactado o trabalho de diversas pessoas da organização, o que pode levar a enormes prejuízos.

Já imaginou o impacto que uma indisponibilidade de várias horas de uma aplicação de internet banking pode causar à uma instituição financeira?

Justamente por conta disso, algumas empresas estabelecem que a *disponibilidade* de uma aplicação é um dos fatores mais críticos e impactantes para a organização.

Entretanto, não devemos nos preocupar com disponibilidade apenas nesses casos mais críticos, mas sim considerar que esse tópico é sempre importante, independente do tipo de aplicação, devendo o time DevOps discutir e pensar na melhor maneira possível de lidar com ele.

Mas o foco não deve ser em como evitar que as aplicações fiquem indisponíveis a qualquer custo, pois isso é algo praticamente impossível, já que sempre estaremos sujeitos a falhas humanas e técnicas. Inclusive, grandes empresas de tecnologia como Google, Microsoft e Facebook, costumam ter indisponibilidade em seus produtos, algo que é raro de acontecer, mas não impossível.

O foco deve ser em como lidar com indisponibilidade, bem como quaisquer outros problemas que possam acontecer com as aplicações e sua infraestrutura, e, principalmente, como descobrir rapidamente qual foi o problema que ocorreu, sua causa raiz, como corrigi-lo e como fazer para evitar que tal problema volte a acontecer no futuro.

Esse é a melhor abordagem para lidar com o tema, além de também ser um grande desafio para muitos times DevOps que não tem conhecimento e experiência no assunto.

## A má prática: Apagar incêndios

No mercado é bastante comum encontrar times que não sabem muito bem a melhor forma de lidar com problemas em aplicações e sua infraestrutura, sendo que eles acabam atuando como *bombeiros*, apenas *apagando os incêndios* que vão surgindo, sem de fato corrigir o problema para que um novo incêndio volte a ocorrer.

Um exemplo dessa situação acontece quando uma aplicação está fora do ar e o time de Ops, ao analisar rapidamente o que pode ter acontecido, detecta que o servidor de aplicações caiu por algum motivo, o reiniciando. A aplicação voltará a funcionar após o servidor reiniciar, resolvendo assim a indisponibilidade, porém o problema não foi de fato resolvido, sendo comum que após algum tempo o servidor volte a cair.

Existem organizações nas quais esse problema é pior ainda, pois o time de Ops não realiza nenhum tipo de monitoramento, não tendo nenhum tipo de controle sobre quais aplicações estão online e quais não, sendo comum que os próprios usuários precisem o avisar quando problemas acontecem e aplicações estão fora do ar.

Esses são alguns exemplos de más práticas para lidar com problemas e indisponibilidade de aplicações, as quais os times DevOps devem evitar ao máximo, pois isso é considerado um dos principais motivos pela má fama da área de tecnologia, que, aos olhos das outras áreas da organização, está sempre causando problemas e nunca consegue os resolver de maneira definitiva.

Inclusive esse é um dos principais motivos que levou a famosa rixa entre os times de Dev e Ops nas organizações, pois quando um problema ocorria um time empurrava a responsabilidade ao outro e vice-versa.

## A solução: Monitoramento Contínuo



## O que devemos monitorar?

