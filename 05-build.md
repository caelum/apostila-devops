# Build automatizado

Neste capítulo vamos discutir sobre a importância da automatização do build em uma aplicação, além de aprender a como automatizar o build da aplicação utilizada como exemplo no curso.

## Build

Para desenvolver uma aplicação a equipe de desenvolvimento precisa escrever o código fonte dela, que vai conter as lógicas de negócio específicas da aplicação, além do código de infra estrutura necessário para suportá-la.

Mas uma aplicação não é feita apenas do código fonte escrito em alguma linguagem de programação, como Java, PHP ou Ruby, mas também de outros arquivos utilitários.

Em uma aplicação Web, por exemplo, também são necessárias as páginas HTML, arquivos de estilos CSS, arquivos JavaScript, imagens, dentre outros.

E além disso, também é comum que a equipe de desenvolvimento utilize bibliotecas e frameworks para facilitar o desenvolvimento da aplicação, juntamente com arquivos de configurações.

Mas quando a aplicação estiver pronta para ir à produção será necessário **transformar** todos esses milhares de arquivos em uma espécie de *pacote*, que será o arquivo *binário* a ser instalado e executado no servidor da aplicação.

Esse processo de converter todo o código fonte da aplicação no pacote a ser instalado no servidor é chamado de **build**, sendo que ele pode variar de aplicação para aplicação e também de acordo com a linguagem de programação e bibliotecas utilizadas.

Perceba então que esse processo de realizar o build da aplicação é algo que o time de desenvolvimento precisa realizar com bastante frequência, principalmente em ambientes alinhados com a cultura ágil e DevOps, que exigem ciclos de entregas mais curtos.

Isso faz com que o processo de build de uma aplicação seja considerado como algo *crítico*, devendo o time de desenvolvimento buscar maneiras de minimizar os erros que podem acontecer nele.

## Os problemas do build manual

É muito comum encontrar aplicações cujo processo de build é realizado de maneira manual, ou seja, com alguma pessoa do time de desenvolvimento seguindo um *passo a passo* de tarefas que precisam ser realizadas para gerar o artefato final do build.

Isso foi exatamente o que fizemos no capítulo anterior, ao gerar o build da aplicação do fórum da Alura, o qual inclusive utilizamos o documento chamado **manual do build**, detalhando o passo a passo para realizar o build da aplicação.

O problema dessa abordagem é que ela gera um risco elevado de erros acontecerem, uma vez que o processo de build de uma aplicação pode ser algo complexo e que envolva dezenas de passos a serem seguidos.

Caso uma pessoa do time esqueça de realizar algum dos passos ou o realize de maneira incorreta, teremos um artefato final incompleto ou com erros que podem prejudicar as pessoas que utilizam a aplicação.

Um exemplo clássico de erro comum que pode acontecer ao se ter um processo manual de build, é o de fazer o deploy da aplicação em ambiente de **produção**, mas com as configurações de banco de dados do ambiente de **desenvolvimento**.

Você já passou por isso antes ou conhece alguém que tenha passado? Quais os impactos negativos que isso pode gerar para o time de desenvolvimento, para a área de tecnologia e até mesmo para a própria empresa?

## Automatização do processo de build

## Build tools

## Automatizando o build do fórum da Alura

## Exercício: Build automatizado com Maven
