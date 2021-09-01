# Page Object da pagina de login/registro
class LoginPage < SitePrism::Page
  element :btn_registrar_se, '.sc-bRBYWo.jBpbNc .sc-hzDkRC.hrgiCe'

  element :inp_user, 'input[name="user"]'
  element :btn_logar, '.sc-VigVT.kqpEiV'

  element :inp_email, 'input[name="email"]'
  element :inp_cpf, 'input[name="cpf"]'
  element :inp_senha, '[label="Senha"] input[type="password"]'
  element :inp_repetir_senha, '[label="Repetir Senha"] input[type="password"]'
  element :ckb_aceitar_termos, '.pure-material-checkbox span'
  element :btn_cadastrar, 'button[type="submit"] .sc-VigVT.kqpEiV'

  def clicar_em_registrar_se
    btn_registrar_se.click
  end

  def gerar_email_e_senha
    puts @number = rand(0..9).to_s
    puts @email = Faker::Internet.email
    puts @senha = Faker::Internet.password + @number
  end

  def cadastrar_se
    gerar_email_e_senha
    inp_email.set @email
    inp_cpf.set Faker::CPF.numeric
    inp_senha.set @senha
    inp_repetir_senha.set @senha
    ckb_aceitar_termos.click
    btn_cadastrar.click
  end

  def realizar_login(email, senha)
    inp_user.set email
    inp_senha.set senha
    btn_logar.click
  end
end
