-- 1) Atualizar salário de um funcionário (incremento)
UPDATE Funcionario
SET salario = salario + 500
WHERE func_id = 1;

-- 2) Alterar status de férias
UPDATE Ferias
SET status = 'Concluído'
WHERE ferias_id = 2;

-- 3) Corrigir o cargo de um funcionário
UPDATE Funcionario
SET cargo_id = 3
WHERE func_id = 2;


-- DELETES

-- 1) Remover uma avaliação específica
DELETE FROM AvaliacaoDesempenho
WHERE avaliacao_id = 1;

-- 2) Remover um registro de treinamento de funcionário
DELETE FROM TreinamentoFuncionario
WHERE func_id = 1 AND treino_id = 1;

-- 3) Excluir férias canceladas (nenhum exemplo atual; comando pronto)
DELETE FROM Ferias
WHERE status = 'Cancelado';
