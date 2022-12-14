# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'rest-client'

url = 'https://microverse-api-app.herokuapp.com/users'
response = RestClient.get url, {:Authorization => 'An32iK-eRu17'}

users = JSON.parse(response)

users.map { |user|
  new_user = User.create(
    api_id: user['id'],
    first_name: user['first_name'],
    last_name: user['last_name'],
    status: user['status'],
    created_at: user['created_at'],
    email: user['email']
  )
}

