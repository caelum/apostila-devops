# O projeto do curso

Neste capítulo vamos conhecer a aplicação que trabalharemos durante o curso e aprenderemos como fazer para executá-la localmente.

## Alura Fórum: o fórum da plataforma Alura

A Alura é a plataforma de treinamentos de tecnologia do grupo Caelum, criada em 2011, focada em treinamentos na modalidade online.

Sua missão é criar uma plataforma de aprendizado de tecnologia, na qual as pessoas possam discutir, participar e enriquecer seus conhecimentos.

![Site da plataforma Alura](imagens/capitulo-04/alura-home.png)

Uma das funcionalidades da plataforma é o **fórum** de discussões, onde os alunos podem abrir tópicos para tirar dúvidas sobre os cursos ou trocar ideias sobre algum assunto em específico.

Esse fórum de discussões será justamente a aplicação que utilizaremos de exemplo ao longo do curso.

![Fórum da plataforma Alura](imagens/capitulo-04/forum-dashboard.png)

Obs: A aplicação que utilizaremos no curso é uma versão simplificada do fórum real da plataforma Alura, contendo apenas um subconjunto de suas funcionalidades.

## As funcionalidades da aplicação

Vamos agora conhecer um pouco sobre as funcionalidades da aplicação do fórum da alura.

### Lista de tópicos

Uma das funcionalidades do fórum é uma lista contendo todos os tópicos que foram cadastrados pelos alunos e ainda não foram fechados, ou seja, ainda podem ser visualizados e os alunos podem interagir com ele.

![Lista de tópicos](imagens/capitulo-04/forum-topicos.png)

A lista possui algumas informações de cada tópico, como seu título, autor e número de respostas, além de também possuir alguns filtros e paginação dos resultados.

Essa funcionalidade é pública, ou seja, não é necessário estar autenticado para poder acessá-la.

### Detalhes do tópico

Ao clicar em algum tópico, somos redirecionados para uma outra página que mostra mais detalhes dele, além de mostrar também as respostas que ele teve, um formulário para o cadastro de novas respostas e alguns links para executar ações no tópico, como por exemplo fechá-lo ou marcar uma resposta como sendo a solução.

![Tela de detalhes de um tópico](imagens/capitulo-04/forum-topico-detalhe.png)

![Campo para cadastrar resposta em um tópico](imagens/capitulo-04/forum-topico-responder.png)

Essa funcionalidade é parcialmente pública. Usuários não autenticados podem apenas visualizar as informações do tópico, mas não podem interagir com ele.

Para cadastrar uma resposta é necessário estar autenticado na aplicação.

Um outro detalhe importante é que somente o usuário que cadastrou o tópico, ou um usuário com perfil de *moderador*, tem permissão para fechá-lo ou para marcar uma resposta como sendo a solução.

### Login

A aplicação também possui uma funcionalidade para que usuários previamente cadastrados possam se autenticar.

![Tela de login](imagens/capitulo-04/forum-login.png)

### Cadastro

Qualquer pessoa pode se cadastrar livremente no fórum, para poder participar das discussões.

![Tela de cadastro](imagens/capitulo-04/forum-cadastro.png)

Um detalhe aqui é que o email deve ser único no sistema, ou seja, um usuário não pode se cadastrar utilizando o email de outro usuário já cadastrado.

### Editar perfil

A aplicação possui uma tela para editar o perfil do usuário, na qual ele poderá alterar seus dados pessoais, bem como alterar sua senha de acesso.

![Tela de editar perfil](imagens/capitulo-04/forum-perfil.png)

![Tela de redefinir senha](imagens/capitulo-04/forum-senha.png)

Para acessar essa funcionalidade o usuário precisa estar autenticado na aplicação.
