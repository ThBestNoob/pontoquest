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
    {name: "Gustavo Marques", team_id: 1, pin: "1234"},
    {name: "Felipe Arqueman", team_id: 1, pin: "1234"},
    {name: "Thiago Gerszewski", team_id: 3, pin: "1234"},
    {name: "Christofer Bastos", team_id: 1, pin: "1234"},
    {name: "Adriele Lima", team_id: 1, pin: "1234"},
    {name: "Fernanda Pasqual", team_id: 1, pin: "1234"},
    {name: "Gra Carvalho", team_id: 1, pin: "1234"},
    {name: "Henrique Segatto", team_id: 1, pin: "1234"},
    {name: "Kauê Cordeiro", team_id: 1, pin: "1234"},
    {name: "Léo Del Zotto", team_id: 1, pin: "1234"},
    {name: "Mar Muguerza", team_id: 1, pin: "1234"},
    {name: "Marcos Fernandes", team_id: 1, pin: "1234"},
    {name: "Marina Zen", team_id: 1, pin: "1234"},
    {name: "Susana Britto", team_id: 1, pin: "1234"},
    {name: "Tati Freitas", team_id: 1, pin: "1234"},
    {name: "Yas Nunes", team_id: 1, pin: "1234"},
    {name: "Ket Aal", team_id: 2, pin: "1234"},
    {name: "Dani Reis", team_id: 2, pin: "1234"},
    {name: "Danilo Vaz", team_id: 2, pin: "1234"},
    {name: "Denab Serafim", team_id: 2, pin: "1234"},
    {name: "Fran Oliveira", team_id: 2, pin: "1234"},
    {name: "Leonora Martins", team_id: 2, pin: "1234"},
    {name: "Thiago Gerszewski", team_id: 3, pin: "1234"},
    {name: "Amanda Maia", team_id: 3, pin: "1234"},
    {name: "Ariane Lisboa", team_id: 3, pin: "1234"},
    {name: "Dani Lachman", team_id: 3, pin: "1234"},
    {name: "Ellen Moura", team_id: 3, pin: "1234"},
    {name: "Jhenifer Padilha", team_id: 3, pin: "1234"},
    {name: "Maria Vitória", team_id: 3, pin: "1234"},
    {name: "Mariana Borecki", team_id: 3, pin: "1234"},
    {name: "Mikaela Silva", team_id: 3, pin: "1234"},
    {name: "Rafael Silva", team_id: 3, pin: "1234"},
    {name: "Stefany Amorin", team_id: 3, pin: "1234"},
    {name: "Tammy Okamoto", team_id: 3, pin: "1234"},
    {name: "Tati Ferreira", team_id: 3, pin: "1234"},
    {name: "Thais Leite", team_id: 3, pin: "1234"},    
    {name: "Brendha Barbosa", team_id: 4, pin: "1234"},
    {name: "Rafaella Inácio", team_id: 4, pin: "1234"},
    {name: "Aelita Marcondes", team_id: 4, pin: "1234"},
    {name: "Fernanda Cardoso", team_id: 4, pin: "1234"},
    {name: "Leonardo Vam Beik", team_id: 4, pin: "1234"},
    {name: "Giselle Ferreira", team_id: 4, pin: "1234"},
    {name: "Pedro Vieira", team_id: 4, pin: "1234"},
    {name: "Ynaie Magalhães", team_id: 4, pin: "1234"},
    {name: "Nilso Nogueira", team_id: 4, pin: "1234"},
    {name: "Rafael Biancardi", team_id: 4, pin: "1234"},
    {name: "Gabriel Pissoto", team_id: 4, pin: "1234"},
    {name: "Bruna Schimit", team_id: 4, pin: "1234"},
    {name: "Francieli Cordeiro", team_id: 5, pin: "1234"},
    {name: "Ana Claudia Farias", team_id: 5, pin: "1234"},
    {name: "Endley Cristine", team_id: 5, pin: "1234"},
    {name: "Gustavo Barbosa", team_id: 5, pin: "1234"},
    {name: "Jenyffer Caetano", team_id: 5, pin: "1234"},
    {name: "Ana Luiza Mendes", team_id: 5, pin: "1234"},
    {name: "Elisa Vilalva", team_id: 5, pin: "1234"},
    {name: "Evelyn Cambui", team_id: 5, pin: "1234"},
    {name: "Rafaela Emilli", team_id: 5, pin: "1234"},
    {name: "Caroline Miranda", team_id: 5, pin: "1234"},
    {name: "Evelin Ferreira", team_id: 5, pin: "1234"},
    {name: "Milena Maciel", team_id: 5, pin: "1234"}
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
        text: "De acordo com o email enviado sobre novidades no Sistema Pontomais, a disponibilização do Single Sign On, irá permitir que um usuário efetue login com um único ID em vários sistemas plataformas. Quais dessas plataformas será possível utilizar a autenticação (SSO)?",
        category: "Novidade",
        alternatives_attributes: {
            0=>{
                text: "Google e Microsoft",
                correct: true
            },
            1=>{
                text: "Google, Facebook e Linkedin",
                correct: false
            },
            2=>{
                text: "Microsoft, Facebook e Linkedin",
                correct: false
            },
            3=>{
                text: "Instagram, Facebook e Linkedin",
                correct: false
            }
        }
    },
    {
        text: "De acordo com o email enviado sobre novidades no Sistema Pontomais, a liberação de acesso ao controle de férias e folgas via app atualmente esta liberada somente para nós da Pontomais e alguns clientes e planos específicos. Quais os planos que já estão sendo liberados essa funcionalidade?",
        category: "Novidade",
        alternatives_attributes: {
            0=>{
                text: "Essencial, Fácil e Eficaz",
                correct: true
            },
            1=>{
                text: "Somente para Fácil e Eficaz",
                correct: false
            },
            2=>{
                text: "Fácil e Eficaz",
                correct: false
            },
            3=>{
                text: "Somente Eficaz",
                correct: false
            }
        }
    },
    {
        text: "Quais as movimentações que a equipe de QE começou a realizar via API em caráter de exceção, ou seja, como um apoio ao cliente quando houver necessidade?",
        category: "Procedimento",
        alternatives_attributes: {
            0=>{
                text: "Saldo BH, Planilha de parametrização, Alteração de CPF e algumas Alterações em massa",
                correct: false
            },
            1=>{
                text: "Planilha de parametrização, Alteração de CPF e Alterações em massa",
                correct: true
            },
            2=>{
                text: "Planilha de parametrização, Alteração de CPF e algumas Alterações em massa",
                correct: false
            },
            3=>{
                text: "Planilha de parametrização e Alteração de CPF",
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