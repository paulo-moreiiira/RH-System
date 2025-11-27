PRAGMA foreign_keys = ON;

CREATE TABLE Departamento (
    dept_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_departamento TEXT NOT NULL,
    gerente TEXT
);

CREATE TABLE Cargo (
    cargo_id INTEGER PRIMARY KEY AUTOINCREMENT,
    dept_id INTEGER,
    nome_cargo TEXT NOT NULL,
    descricao TEXT,
    nivel_hierarquico INTEGER,
    FOREIGN KEY (dept_id) REFERENCES Departamento(dept_id)
);

CREATE TABLE Funcionario (
    func_id INTEGER PRIMARY KEY AUTOINCREMENT,
    cargo_id INTEGER,
    nome TEXT,
    cpf TEXT UNIQUE,
    email TEXT,
    salario REAL,
    data_de_nascimento TEXT,
    telefone TEXT,
    data_admissao TEXT,
    endereco_rua TEXT,
    endereco_numero TEXT,
    endereco_bairro TEXT,
    endereco_cidade TEXT,
    endereco_estado TEXT,
    endereco_cep TEXT,
    FOREIGN KEY (cargo_id) REFERENCES Cargo(cargo_id)
);

CREATE TABLE Ferias (
    ferias_id INTEGER PRIMARY KEY AUTOINCREMENT,
    func_id INTEGER,
    data_inicio TEXT,
    data_fim TEXT,
    status TEXT,
    FOREIGN KEY (func_id) REFERENCES Funcionario(func_id)
);

CREATE TABLE Promocao (
    promocao_id INTEGER PRIMARY KEY AUTOINCREMENT,
    func_id INTEGER,
    cargo_antigo_id INTEGER,
    cargo_novo_id INTEGER,
    data_promocao TEXT,
    FOREIGN KEY (func_id) REFERENCES Funcionario(func_id),
    FOREIGN KEY (cargo_antigo_id) REFERENCES Cargo(cargo_id),
    FOREIGN KEY (cargo_novo_id) REFERENCES Cargo(cargo_id)
);

CREATE TABLE AvaliacaoDesempenho (
    avaliacao_id INTEGER PRIMARY KEY AUTOINCREMENT,
    func_id INTEGER,
    data TEXT,
    nota INTEGER,
    comentario TEXT,
    FOREIGN KEY (func_id) REFERENCES Funcionario(func_id)
);

CREATE TABLE Treinamento (
    treino_id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_treinamento TEXT,
    carga_horaria INTEGER,
    data TEXT
);

CREATE TABLE TreinamentoFuncionario (
    func_id INTEGER,
    treino_id INTEGER,
    PRIMARY KEY (func_id, treino_id),
    FOREIGN KEY (func_id) REFERENCES Funcionario(func_id),
    FOREIGN KEY (treino_id) REFERENCES Treinamento(treino_id)
);
