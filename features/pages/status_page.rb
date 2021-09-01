# Page Object da pagina de status

class StatusPage < SitePrism::Page
  element :txt_sucesso, '.sc-ihiiSJ.lfFmmT'
  element :txt_tudo_certo, '.sc-ihiiSJ.lfFmmT'
  element :btn_voltar, '.sc-VigVT.hOXUEw'
  element :btn_ver_aplicacoes, '.sc-VigVT.gZYVwH'
end
