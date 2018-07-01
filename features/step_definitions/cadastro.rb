Dado('que o usuário esteja no formulário de cadastro') do
  visit 'https://mark7.herokuapp.com/register'
end

Dado('informe o seguinte dados:') do |table|
  @usuario = table.rows_hash
end

Quando('realizar o cadastro') do
  find('#register_name').set @usuario[:nome]
  find('#register_email').set @usuario[:email]
  find('#register_password').set @usuario[:senha]
  find('button[type=submit]').click
end

Então('usuário vê a seguinte mensagem: {string}') do |mensagem|
  expect(page).to have_content mensagem
end
