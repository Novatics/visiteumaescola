module HomeHelper
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def unidades_federativas
    [
      ['Acre', 'AC'],
      ['Alagoas', 'AL'],
      ['Amapá', 'AP'],
      ['Amazonas', 'AM'],
      ['Bahia', 'BA'],
      ['Ceará', 'CE'],
      ['Distrito Federal', 'DF'],
      ['Espirito Santo', 'ES'],
      ['Goiás', 'GO'],
      ['Maranhão', 'MA'],
      ['Mato Grosso do Sul', 'MS'],
      ['Mato Grosso', 'MT'],
      ['Minas Gerais', 'MG'],
      ['Pará', 'PA'],
      ['Paraíba', 'PB'],
      ['Paraná', 'PR'],
      ['Pernambuco', 'PE'],
      ['Piauí', 'PI'],
      ['Rio de Janeiro', 'RJ'],
      ['Rio Grande do Norte', 'RN'],
      ['Rio Grande do Sul', 'RS'],
      ['Rondônia', 'RO'],
      ['Roraima', 'RR'],
      ['Santa Catarina', 'SC'],
      ['São Paulo', 'SP'],
      ['Sergipe', 'SE'],
      ['Tocantins', 'TO']
    ]
  end
end
