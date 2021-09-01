# Page Object da Profile pagina
class ProfilerPage < SitePrism::Page
  elements :btn_caracteristicas, '.sc-fNHLbd.hJUXPD'
  element :btn_caracteristica1, '.sc-fNHLbd.hJUXPD:first-child'
  element :btn_caracteristica2, '.sc-fNHLbd.hJUXPD:nth-child(2)'
  element :btn_caracteristica3, '.sc-fNHLbd.hJUXPD:nth-child(43)'
  element :btn_caracteristica4, '.sc-fNHLbd.hJUXPD:nth-child(44)'
  element :btn_caracteristica5, '.sc-fNHLbd.hJUXPD:nth-child(85)'
  element :btn_caracteristica6, '.sc-fNHLbd.hJUXPD:last-child'
  element :btn_salvar_e_avancar, 'button#saveDataToNextStep'
  element :btn_finalizar, 'button#saveFinalize'

  def selecionar_caracteristicas
    btn_caracteristica1.click
    btn_caracteristica2.click
    btn_caracteristica3.click
    btn_caracteristica4.click
    btn_caracteristica5.click
    btn_caracteristica6.click
  end

  def avancar
    btn_salvar_e_avancar.click
  end

  def finalizar
    btn_finalizar.click
  end
end
