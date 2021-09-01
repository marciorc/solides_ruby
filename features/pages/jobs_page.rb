# Page Object da pagina de jobs
class JobsPage < SitePrism::Page
  set_url :''

  element :btn_aceitar_cookies, '.sc-VigVT.hBZMJo'
  element :btn_fechar_agente_virtual, '[aria-label="Descartar"]'
  element :btn_cadastrar, '.sc-bIKvTM.fyGFXe>.sc-gFXMyG.vStgt'

  def aceitar_cookies
    btn_aceitar_cookies.click
  end

  def clicar_em_cadastrar
    btn_cadastrar.click
  end
end
