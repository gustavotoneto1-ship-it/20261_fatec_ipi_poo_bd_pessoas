-- INSERT INTO tb_pessoa
-- (nome, fone, email, ativo)
-- VALUES
-- ('Ana', '55665566', 'ana@email.com', 2);

-- INSERT INTO tb_pessoa
-- (nome, fone, email)
-- VALUES
-- ('Cristina', '33443344', 'cristina@email.com');

--como incluir uma coluna chamada ativo com valor padrão igual a 1, ela é do tipo int
-- ALTER TABLE tb_pessoa
-- ADD COLUMN ativo INTEGER DEFAULT 1
-- CHECK (ativo IN (0, 1));

-- SELECT * FROM tb_pessoa

-- DELETE FROM tb_pessoa
-- WHERE nome = 'Maria';

-- projeção
-- SELECT nome, email FROM tb_pessoa --filtra a coluna
-- WHERE cod_pessoa IN (2, 3); --filtra a linha

-- SELECT nome, email FROM tb_pessoa --filtra a coluna
-- WHERE cod_pessoa = 2 or cod_pessoa = 3; --filtra a linha

-- UPDATE tb_pessoa SET
-- nome = 'José da Silva'
-- WHERE cod_pessoa = 1;

-- SELECT * FROM tb_pessoa

-- INSERT INTO tb_pessoa
-- (nome, fone, email) 
-- VALUES
-- ('Jõao', '77447744', 'joao@email.com'),
-- ('Maria', '11221122', 'maria@email.com');

-- SELECT * FROM tb_pessoa --* mostra todo o conteúdo do banco

-- INSERT INTO tb_pessoa
-- (nome, fone, email) 
-- VALUES
-- ('José', '12345678', 'jose@email.com');

-- CREATE TABLE tb_pessoa(
-- 	cod_pessoa SERIAL PRIMARY KEY, --serial serve para auto incremento
-- 	nome VARCHAR(255),
-- 	fone VARCHAR(255),
-- email VARCHAR(255)
-- );