# Page Object da pagina de Curriculum
class CurriculumPage < SitePrism::Page
  element :inp_tel_ou_cel, 'input#contacts'
  element :inp_email, 'input#email'
  element :inp_repetir_email, 'input#secondEmail'

  element :inp_nome, 'input#name'
  element :sel_genero, 'div#gender.sc-jUpvKA.gUYgH'
  element :opt_masculino, 'div#gender > .sc-eEieub.jrIxJr:first-child'
  element :opt_feminino, 'div#gender > .sc-eEieub.jrIxJr:nth-child(2)'
  element :opt_indefinido, 'div#gender > .sc-eEieub.jrIxJr:last-child'
  element :inp_data_nascimento, '#birthday input'

  element :txa_sobre_voce, 'textarea[name="about"]'

  element :btn_salvar_e_avancar, 'button#saveDataToNextStep'

  def preencher_dados_de_contato
    email = Faker::Internet.email
    inp_tel_ou_cel.set Faker::Base.numerify('169########')
    inp_email.set email
    inp_repetir_email.set email
  end

  def cadastrar_cv
    inp_nome.set Faker::Name.name
    sel_genero.click
    opt_masculino.click
    inp_data_nascimento.set Faker::Date.birthday(min_age: 18, max_age: 65).strftime('%d/%m/%Y')
    txa_sobre_voce.set Faker::ChuckNorris.fact
    btn_salvar_e_avancar.click
  end
end
