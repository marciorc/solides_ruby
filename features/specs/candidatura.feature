#language: pt

@candidatura
Funcionalidade: Realizar candidatura
  Como um candidato na Solides
  Quero me candidatar ao banco de talentos
  Para fazer parte do processo seletivo

@cadastro_novo
Cenario: Candidatar-se a vaga sem cadastro
  Dado que acesso a opção de cadastrar ao Banco de Talentos
  Quando realizo o cadastro
  E preencho o profiler
  Entao espero que a candidatura seja concluida com sucesso

@usuario_cadastrado
Cenario: Candidatar-se a vaga possuindo cadastro prévio
  Dado que acesso a opção de cadastrar ao Banco de Talentos
  Quando realizo login com e-mail "eloy@breitenberg-macejkovic.biz" e senha "AhOxYqItCf6"
  Entao espero que a candidatura esteja certa