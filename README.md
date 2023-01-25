# API para encurtamento de URLs

Este projeto é uma API desenvolvida com Ruby on Rails para encurtamento de URLs. Ele permite que os usuários criem links curtos para qualquer URL, e redirecione esses links curtos para as URLs originais.

## Instalação

1. Faça o clone do repositório: `git clone https://github.com/seu-usuario/shorten_url_api.git`

2. Entre na pasta do projeto: `cd shorten_url_api`

3. Instale as dependências: `bundle install`

4. Crie o banco de dados: `rails db:create db:migrate`

5. Inicie o servidor: `rails s`

## Utilização

Para encurtar uma URL, envie uma requisição `POST` para a rota `/shorten` com a seguinte estrutura no corpo da requisição:

{
    "original_url": "https://www.example.com"
}

A resposta será uma estrutura JSON com a URL encurtada, como por exemplo:

{
    "short_url": "http://localhost:3000/abc123"
}

Para redirecionar um link curto para a URL original, envie uma requisição `GET` para o link curto. Por exemplo, se o link curto é `http://localhost:3000/abc123`, basta acessar esse endereço no navegador, e sera redirecionado para a URL original.

## Contribuição

Contribuições são sempre bem-vindas. Para contribuir, siga os seguintes passos:

1. Faça o fork do projeto

2. Crie uma branch para suas alterações (`git checkout -b minha-nova-feature`)

3. Faça as alterações necessárias

4. Faça o commit das suas alterações (`git commit -am 'Adicionando nova feature'`)

5. Faça o push para a branch criada (`git push origin minha-nova-feature`)

6. Crie um Pull Request

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo [LICENSE](LICENSE.md) para mais detalhes.