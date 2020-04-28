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

Os problemas citados anteriormente são bem comuns na grande maioria das empresas, pois muitos times não tem a preocupação do *pós-deploy*, ou seja, a partir do momento que uma aplicação é colocada em produção, considera-se como missão cumprida e o foco passa a ser em outras aplicações ou apenas em ajustes e correções de bugs.

Mas o deploy não deveria ser considerado como *linha de chegada* e encerramento do ciclo, pois muito trabalho ainda pode ser necessário após esse marco.

Uma das atividades importantes que o time de Ops, e também o time de Dev, deveria dar bastante atenção é o **monitoramento** da aplicação, para assim acompanhar como ela está se comportando no ambiente de produção, detectando previamente possíveis gargalos e problemas que precisam de atenção. Dessa maneira o time DevOps seria capaz, por exemplo, de agir antes de um problema *estourar*, evitando que o problema piore e a aplicação fique indisponível aos seus usuários.

Monitoramento é mais uma das atividades que são consideradas extremamente importantes, principalmente em ambientes DevOps, pois além de buscar por mais agilidade e eficiência no processo de desenvolvimento da aplicação, também é importante ter agilidade e eficiência na detecção, correção e recuperação de falhas, que sempre podem acontecer a qualquer momento.

A grande questão é que a atividade de monitoramento não deve ser realizada apenas uma única vez, por exemplo após o deploy ser realizado, e nem tampouco apenas quando problemas acontecerem. Monitoramento deve ser realizado de maneira **contínua**, da mesma forma que devemos integrar o código continuamente.

Isso foi justamente o que motivou o surgimento de um termo conhecido como **Monitoramento Contínuo**, para demonstrar a necessidade dessa prática ser realizada de maneira constante pelo time DevOps, em especial o time de Ops, que geralmente é o time que acaba assumindo essa responsabilidade.

A prática de monitoramento contínuo consiste em fazer um acompanhamento, contínuo e em tempo real, de como a aplicação está se comportando no ambiente de produção, em especial referente ao consumo dos recursos de hardware, como CPU, memória e disco.

Isso permite ao time identificar se os recursos de hardware estão de acordo com o exigido pela aplicação, além de também permitir encontrar padrões de utilização de tais recursos e detectar quando há um uso fora desses padrões, que podem levar a possíveis problemas.

Claro, isso deve ser feito com a utilização de ferramentas, que conseguem automatizar todo esse trabalho e exibir tais informações de maneira simplificada, com gráficos e dashboards bem elaborados, que agilizam na análise das informações e tomada de decisões.

![Exemplo de dashboard de uma ferramenta de monitoramento](imagens/capitulo-11/dashboard.jpg)

## Ferramentas de monitoramento

No mercado existem diversas ferramentas de monitoramento, sendo algumas gratuitas e outras pagas. Não tem certo ou errado aqui, cada ferramenta tem suas vantagens e desvantagens, sendo que o time deve escolher as que fizerem mais sentido e atenderem às suas necessidades.

Estas são algumas das principais ferramentas para monitoramento de infraestrutura e aplicações, que atualmente são utilizadas por times DevOps ao redor do mundo:

* Nagios
* Zabbix
* Graylog
* Prometheus
* Grafana
* InfluxDB
* ELK Stack
* Sensu
* Glowroot

A lista anterior apresenta apenas algumas das ferramentas de monitoramento existentes no mercado, sendo que existem dezenas de outras ferramentas disponíveis que não foram listadas, e serve apenas como uma sugestão de ferramentas que você e seu time DevOps podem pesquisar e estudar mais a respeito, escolhendo apenas as que forem mais relevantes para o seu contexto.

Há também algumas ferramentas que funcionam como serviços Web, principalmente focadas em encontrar gargalos de performance em aplicações. Dentre elas temos: *NewRelic* e *Datadog*, que também recomendamos avaliar.

Embora a prática de monitoramento seja mais uma preocupação do time de Ops do que do time de Dev, recomendamos que esse processo de análise, testes e escolha das ferramentas seja realizado em conjunto por ambos os times, para que assim se tenha uma visão tanto a nível de aplicação, quanto a nível de infraestrutura, e o time todo possa colaborar na decisão de quais ferramentas utilizar e também em como as utilizar da melhor maneira possível.

### Alertas e integrações

Embora a recomendação seja para que a prática de monitoramento ocorra de maneira contínua, isso não significa que alguma pessoa do time precise estar 24h por dia observando os gráficos e dashboards das ferramentas. Isso seria um trabalho manual, chato e muito cansativo, além de também ser um desperdício de talento.

O recomendado é configurar **alertas** de monitoramento nas ferramentas, para que caso algo de incomum aconteça, as pessoas responsáveis sejam notificadas o quanto antes. Geralmente essas ferramentas de monitoramento possuem configurações de alertas, que podem ser utilizadas pelo time para disparar notificações de acordo com parâmetros predefinidos.

Uma outra coisa importante é que hoje em dia tais notificações podem ser feitas de diversas maneiras, com integrações a outros serviços, como Slack, WhatsApp, SMS, etc., bem melhor do que apenas por e-mail, como costumava ser antigamente.

## O que devemos monitorar?

Monitoramento contínuo é uma prática muito importante para um time DevOps, entretanto vale ressaltar que nem tudo que é *monitorável* deve ser monitorado. Isso porque existem dezenas de informações que podem ser monitoradas em relação às aplicações e suas infraestruturas, porém muitas delas podem não ser tão relevantes.

Sendo assim, o time deve avaliar quais os tipos de informações que são essenciais e mais críticos para cada aplicação, fazendo assim um melhor planejamento da estratégia de monitoramento a ser adotada.

Uma dica é analisar quais são os *requisitos não funcionais* mais críticos da aplicação, tais como: performance, escalabilidade, disponibilidade, etc., pois a partir daí o time terá uma boa visão de quais informações devem ser monitoradas e quais não são tão críticas.

Existem algumas categorias de monitoramento, das quais podemos classificar e agrupar os itens a serem monitorados. Dependendo do contexto, algumas delas podem ter muita, pouca ou até mesmo nenhuma relevância, devendo todo o time analisar e discutir sobre isso.

Dentre as principais categorias listamos:

* **Server Health**: Essa é principal e mais óbvia categoria, pois aqui se encontram os itens referentes a infraestrutura, tais como: CPU, memória, espaço em disco, tempo médio de requisições, disponibilidade dos serviços, etc.
* **Logs**: Aqui o foco é no monitoramento dos logs gerados pelos servidores e aplicações, afim de detectar possíveis problemas que merecem atenção e uma melhor análise.
* **Deploys**: Aqui o foco é monitorar o importante processo de deploy da aplicação, afim de detectar problemas que possam acontecer em qualquer uma de suas etapas.
* **Segurança**: Aqui a ideia é monitorar itens relacionados à segurança da aplicação e de sua infraestrutura, tais como: tentativas de intrusão, detecção de scripts maliciosos, vulnerabilidades, etc.

## Monitoramento de negócios

Além de monitorar informações técnicas da aplicação e sua infraestrutura, é extremamente importante também definir aspectos de negócios que também poderiam ser monitorados, gerando com isso mais valor para as pessoas da área de negócios que estejam envolvidas com o produto.

Nesse caso, é essencial que o time DevOps colabore juntamente com o time de business da organização, para que todos consigam identificar informações de negócios que tem muito valor e deveriam também estar no leque dos itens a serem monitorados.

Isso é algo muito útil para uma organização como um todo, embora não seja muito comum de encontrar times que o façam, pois geralmente monitoramento é restrito apenas a itens técnicos.

Para facilitar o entendimento sobre monitoramento de negócios, vamos a um exemplo utilizando nossa aplicação, o fórum de dúvidas da Alura, como base. Pensando do ponto de vista de negócios, a seguir listamos algumas informações que podem ser consideradas como importantes e relevantes para serem monitoradas:

* **Número de tópicos abertos por curso**: Para identificar gargalos de tópicos sendo abertos para um determinado curso, ou até mesmo uma situação incomum de nenhum tópico aberto a determinado tempo para o curso.
* **Número de tópicos abertos por categoria**: Para identificar gargalos de tópicos sendo abertos para uma determinada categoria, ou até mesmo uma situação incomum de nenhum tópico aberto a determinado tempo para a categoria.
* **Número de tópicos sem resposta**: Para identificar alunos(as) com tópicos não respondidos no fórum, o que poderia levar a uma insatisfação com a plataforma.
* **Número de tópicos não solucionados**: Para identificar tópicos que mesmo possuindo respostas ainda não foram solucionados, o que poderia levar a uma insatisfação com a plataforma.

Os exemplos citados acima poderiam ser relatórios disponibilizados como funcionalidades na própria aplicação, entretanto relatórios dependem que alguém os acessem e realizem uma analise das informações, algo que pode ser trabalhoso, chato e sujeito a erros humanos.

Ao monitorar na aplicação tais informações, estamos automatizando o processo de coleta e analise delas, sem depender da necessidade de uma pessoa ter que interagir com a aplicação, além de que também é possível configurar alertas para serem disparados quando tais informações chegarem a um número considerado como crítico, para que assim alguém possa de imediato tomar uma ação.

Essa é justamente a grande vantagem de se realizar monitoramento contínuo de negócios, além do técnico, visando em gerar mais valor para o produto, para a organização e também para seus clientes.

## Métrica: Mean Time To Recover

**Mean Time To Recover** é a última das quatro principais métricas DevOps, que ainda não havia sido discutida até então no curso, sendo que seu objetivo é medir o **tempo médio de recuperação** que um time leva para se recuperar de falhas. Essa métrica também é muito importante, pois demonstra a eficiência e agilidade de um time quando falhas ocorrem.

Já discutimos aqui nesse capítulo que falhas são inevitáveis, sendo que o time deve assumir que uma hora ou outra elas vão acontecer, e por isso é tão importante realizar a prática de monitoramento contínuo, além de também estar preparado para quando elas acontecerem.

Em ambientes tradicionais é comum encontrar times que têm dificuldades de detectar quando falhas ocorrem, de descobrir o que as ocasionou e também dificuldades em se recuperar delas, aumentando com isso o tempo médio de recuperação.

Nos casos mais tensos é comum encontrar times que levam até semanas para se recuperar por completo de uma falha. Imagine o impacto para a organização em ter uma indisponibilidade dessas.

O ideal é que o time leve poucas horas, no máximo 1 dia, para se recuperar de falhas, pois assim os impactos serão minimizados. Claro, isso é algo bem difícil de se alcançar, mas ao utilizar a prática de monitoramento contínuo se torna mais fácil.

A recomendação aqui é para que o time colete essa métrica desde o início do processo de adoção ao DevOps, analisando sua evolução e utilizando práticas para diminuir seu valor com o passar do tempo.
