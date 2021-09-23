class ViaCep
  include HTTParty
  base_uri CONFIG['URI_VIA_CEP']
  headers CONFIG['HEADER_VIA_CEP']
  default_timeout 120

  def initialize() end

  def search_cep(payload)
    self.class.get("/ws/#{payload}/json/")
  end
end
