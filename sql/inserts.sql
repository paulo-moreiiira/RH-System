-- DEPARTAMENTOS
INSERT INTO Departamento (nome_departamento, gerente) VALUES
('Recursos Humanos', 'Carla Moreira'),
('Tecnologia da Informação', 'Marcos Silva'),
('Financeiro', 'João Pereira');

-- CARGOS
INSERT INTO Cargo (dept_id, nome_cargo, descricao, nivel_hierarquico) VALUES
(1, 'Assistente de RH', 'Auxilia processos administrativos e de RH', 1),
(2, 'Desenvolvedor Júnior', 'Desenvolvimento de aplicações', 1),
(2, 'Desenvolvedor Sênior', 'Desenvolvedor experiente responsável por projetos', 3),
(3, 'Analista Financeiro', 'Controle e análise financeira', 2);

-- FUNCIONÁRIOS
INSERT INTO Funcionario (
    cargo_id, nome, cpf, email, salario, data_de_nascimento,
    telefone, data_admissao, endereco_rua, endereco_numero,
    endereco_bairro, endereco_cidade, endereco_estado, endereco_cep
) VALUES
(1, 'Fernanda Souza', '123.456.789-00', 'fernanda@empresa.com', 2800.00, '1990-05-10',
 '11987654321', '2022-03-01', 'Rua A', '100', 'Centro', 'São Paulo', 'SP', '01000-000'),
(2, 'Ricardo Lima', '987.654.321-00', 'ricardo@empresa.com', 4200.00, '1995-08-22',
 '11911223344', '2021-07-15', 'Rua B', '200', 'Jardins', 'São Paulo', 'SP', '01400-000'),
(4, 'Marcela Duarte', '111.222.333-44', 'marcela@empresa.com', 3500.00, '1988-12-30',
 '11933445566', '2020-01-10', 'Rua C', '55', 'Vila Mariana', 'São Paulo', 'SP', '04100-000');

-- FÉRIAS
INSERT INTO Ferias (func_id, data_inicio, data_fim, status) VALUES
(1, '2024-01-10', '2024-01-25', 'Concluído'),
(2, '2024-02-01', '2024-02-15', 'Aprovado');

-- TREINAMENTOS
INSERT INTO Treinamento (nome_treinamento, carga_horaria, data) VALUES
('Integração Corporativa', 8, '2023-01-10'),
('Segurança da Informação', 6, '2023-05-20'),
('Liderança e Gestão', 12, '2023-11-15');

-- TREINAMENTO X FUNCIONÁRIO
INSERT INTO TreinamentoFuncionario (func_id, treino_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3);

-- PROMOÇÕES
INSERT INTO Promocao (func_id, cargo_antigo_id, cargo_novo_id, data_promocao) VALUES
(2, 2, 3, '2024-03-01');

-- AVALIAÇÕES
INSERT INTO AvaliacaoDesempenho (func_id, data, nota, comentario) VALUES
(1, '2024-04-01', 9, 'Excelente desempenho'),
(2, '2024-04-01', 7, 'Bom, mas pode melhorar'),
(3, '2024-04-01', 8, 'Desempenho sólido');
