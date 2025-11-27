-- 1) Listar funcionários e seus cargos
SELECT f.nome, c.nome_cargo, f.salario
FROM Funcionario f
JOIN Cargo c ON f.cargo_id = c.cargo_id
ORDER BY f.nome;

-- 2) Funcionários que fizeram treinamentos
SELECT f.nome, t.nome_treinamento, t.carga_horaria
FROM TreinamentoFuncionario tf
JOIN Funcionario f ON tf.func_id = f.func_id
JOIN Treinamento t ON tf.treino_id = t.treino_id;

-- 3) Promoções ocorridas no ano de 2024
SELECT p.func_id, f.nome, p.data_promocao
FROM Promocao p
JOIN Funcionario f ON p.func_id = f.func_id
WHERE substr(p.data_promocao, 1, 4) = '2024';

-- 4) Top 5 maiores salários
SELECT nome, salario
FROM Funcionario
ORDER BY salario DESC
LIMIT 5;

-- 5) Avaliações de desempenho acima de nota 8
SELECT f.nome, a.nota, a.comentario
FROM AvaliacaoDesempenho a
JOIN Funcionario f ON a.func_id = f.func_id
WHERE a.nota > 8;
