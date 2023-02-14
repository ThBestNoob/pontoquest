# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

teams = [
    {name: "X-Makers", coordinator: "Leonardo Del Zotto"},
    {name: "PowerMakers", coordinator: "Denab Serafim"},
    {name: "SuperMakers", coordinator: "Tammy Okamoto"},
    {name: "StarMakers", coordinator: "Tati Meduna"},
    {name: "Liga de Heróis", coordinator: "Giovanna Vanzzo"}
]

teams.each do |team|
    Team.create team
end

agents = [
    {name: "Gustavo Marques", team_id: 1},
    {name: "Felipe Arqueman", team_id: 1},
    {name: "Thiago Gerszewski", team_id: 3},
    {name: "Christofer Bastos", team_id: 1},
    {name: "Adriele Lima", team_id: 1},
    {name: "Fernanda Pasqual", team_id: 1},
    {name: "Gra Carvalho", team_id: 1},
    {name: "Henrique Segatto", team_id: 1},
    {name: "Kauê Cordeiro", team_id: 1},
    {name: "Kauê Rosa Cordeiro", team_id: 1},
    {name: "Léo Del Zotto", team_id: 1},
    {name: "Mar Muguerza", team_id: 1},
    {name: "Marcos Fernandes", team_id: 1},
    {name: "Marina Zen", team_id: 1},
    {name: "Susana Britto", team_id: 1},
    {name: "Tati Freitas", team_id: 1},
    {name: "Yas Nunes", team_id: 1},
    {name: "Ket Aal", team_id: 2},
    {name: "Dani Reis", team_id: 2},
    {name: "Danilo Vaz", team_id: 2},
    {name: "Denab Serafim", team_id: 2},
    {name: "Fran Oliveira", team_id: 2},
    {name: "Leonora Martins", team_id: 2},
    {name: "Thiago Gerszewski", team_id: 3},
    {name: "Amanda Maia", team_id: 3},
    {name: "Ariane Lisboa", team_id: 3},
    {name: "Dani Lachman", team_id: 3},
    {name: "Ellen Moura", team_id: 3},
    {name: "Jhenifer Padilha", team_id: 3},
    {name: "Maria Vitória", team_id: 3},
    {name: "Mariana Borecki", team_id: 3},
    {name: "Mikaela Silva", team_id: 3},
    {name: "Rafael Silva", team_id: 3},
    {name: "Stefany Amorin", team_id: 3},
    {name: "Tammy Okamoto", team_id: 3},
    {name: "Tati Ferreira", team_id: 3},
    {name: "Thais Leite", team_id: 3}
]

agents.each do |agent|
    Agent.create agent
end


questions = [
    {
        text: "Onde deve ser inserido o Token do cliente, encontrado no Marketplace, ao fazer uma requisição pela API?",
        category: "Sistema",
        alternatives_attributes: {
            0 => {
                text: "Body > 'account-token'",
                correct: false
            },
            1 => {
                text: "Headers > 'access-token'",
                correct: true
            },
            2 => {
                text: "Marketplace > Saiba mais > Webhooks",
                correct: false
            },
            3 => {
                text: "Marketplace > Saiba mais > aba 'API'",
                correct: false
            }
        }
    },
    {
        text: "Você deseja realizar a quitação total ou parcial do banco de horas?",
        category: "Sistema",
        alternatives_attributes: {
            0=>{
                text: "Sim",
                correct: true
            },
            1=>{
                text: "Não",
                correct: false
            },
            2=>{
                text: "Isso",
                correct: false
            },
            3=>{
                text: "Oi",
                correct: false
            }
        }
    },
    {
        text: "Para que serve o fechamento?",
        category: "Sistema",
        alternatives_attributes: {
            0=>{
                text: "Para gerar o Holerite no sistema",
                correct: false
            },
            1=>{
                text: "Para consolidar as jornadas e gerar os arquivos fiscais",
                correct: true
            },
            2=>{
                text: "Para ficar bonito",
                correct: false
            },
            3=>{
                text: "Não existe fechamento no sistema",
                correct: false
            }
        }
    },
    {
        text: "Sobre o SSO, quais logins poderão ser utilizados?",
        category: "Novidade",
        alternatives_attributes: {
            0=>{
                text: "Google e Microsoft",
                correct: true
            },
            1=>{
                text: "Google e Linkedin",
                correct: false
            },
            2=>{
                text: "Facebook e Hotmail",
                correct: false
            },
            3=>{
                text: "Google e Facebook",
                correct: false
            }
        }
    }
]

questions.each do |question|
    
    puts "\n--------------------------\n"

    puts question[:text]
    q = Question.new question

    if q.valid?
        q.save
    end
end