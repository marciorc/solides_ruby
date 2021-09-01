Dado('que acesso a opção de cadastrar ao Banco de Talentos') do
  visit 'https://nayaracorporation.solides.jobs/'
  jobs_page.load
  jobs_page.aceitar_cookies
  jobs_page.clicar_em_cadastrar
end

Quando('realizo o cadastro') do
  login_page.clicar_em_registrar_se
  login_page.cadastrar_se
  curriculum_page.preencher_dados_de_contato
  curriculum_page.cadastrar_cv
end

E('preencho o profiler') do
  profiler_page.selecionar_caracteristicas
  expect(profiler_page.btn_caracteristicas.size).to equal 86
  profiler_page.avancar
  profiler_page.selecionar_caracteristicas
  profiler_page.finalizar
end

Entao('espero que a candidatura seja concluida com sucesso') do
  status_page.wait_until_txt_sucesso_visible
  expect(status_page.txt_sucesso.text).to eq 'Sucesso!'
  expect(status_page.btn_ver_aplicacoes.text).to eq 'Ver minhas aplicações'
  expect(status_page.btn_voltar.text).to eq 'Voltar para a tela inicial'
end

Quando('realizo login com e-mail {string} e senha {string}') do |email, senha|
  login_page.realizar_login(email, senha)
end

Entao('espero que a candidatura esteja certa') do
  status_page.wait_until_txt_sucesso_visible
  expect(status_page.txt_sucesso.text).to eq 'Tudo certo!'
  expect(status_page.btn_ver_aplicacoes.text).to eq 'Ver minhas aplicações'
  expect(status_page.btn_voltar.text).to eq 'Voltar para a tela inicial'
end
