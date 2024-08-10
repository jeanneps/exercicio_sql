--1. Criação do Banco de Dados:
--a. Crie um banco de dados chamado "Biblioteca".
CREATE DATABASE biblioteca;

--2. Criação de Tabela:
--a. Crie uma tabela chamada “Livros”
--i. id (inteiro, chave primária e auto incrementada)
--ii. titulo (255 caracteres, não pode ser nulo)
--iii. descricao (textual, não pode ser nulo)
--iv. ano de lancamento (inteiro, não pode ser nulo)
CREATE TABLE livros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR (255) NOT NULL, 
    descricao TEXT NOT NULL,
    ano_de_lancamento INT NOT NULL
);

--3. Inserção de Dados:
--a. Insira 10 livros
--i. 2 tem o mesmo nome mas anos diferentes
--ii. alguns que tenham a letra c em qualquer parte no título
--iii. alguns que o título comece com a letra a

--obs. tambem pode colocar os valores no mesmo insert into
INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('O Grande Gatsby','O clássico romance americano que conta a história de Jay Gatsby e seu amor não correspondido por Daisy Buchanan','1925');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('O Grande Gatsby','Esta é uma nova edição com introduções e comentários contemporâneos, mas o conteúdo original permanece o mesmo','2013');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('Cem Anos de Solidão', 'Uma saga épica sobre a família Buendía e a história da fictícia Macondo, que explora temas como o amor, a morte, o tempo e a memória', '1967');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('Crônica de uma Morte Anunciada','Um romance policial que narra os acontecimentos que levam ao assassinato de Santiago Nasar','1981');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('Cidade de Papel','Um romance juvenil sobre a busca por uma garota misteriosa e os desafios da adolescência','2015');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('O Código Da Vinci','A história gira em torno de Robert Langdon, um professor de simbologia religiosa, e Sophie Neveu, uma criptóloga francesa. Eles se envolvem em uma investigação complexa após o assassinato de um curador do Museu do Louvre, que deixa pistas ocultas em uma série de enigmas e símbolos','2003');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('A Metamorfose','Um conto alegórico sobre um homem que acorda transformado em um inseto gigante e as consequências dessa transformação em sua vida e na vida de sua família','1915');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('A Insustentável Leveza do Ser','Um romance que explora temas como o amor, a liberdade, a história e a filosofia, através das vidas de quatro personagens em Praga','1984');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('As Aventuras de Huckleberry Finn','Um clássico da literatura americana que acompanha a jornada de Huck Finn, um menino que foge de casa e navega pelo rio Mississippi','1884');

INSERT INTO livros (titulo, descricao, ano_de_lancamento) VALUES ('A Cabana: Um Refúgio para a Alma','A história gira em torno de Mack, um homem atormentado pela perda trágica de sua filha, que recebe um misterioso convite para passar um fim de semana em uma cabana na floresta','2017');

--4. Listagem
--a. Liste somente os títulos e ano de lançamento
SELECT titulo, ano_de_lancamento FROM livros;

--i. títulos em ordem alfabética;
SELECT * FROM LIVROS ORDER BY titulo;

--ii. Caso tenha títulos iguais, use o ano (do mais recente para o
--mais antigo) para desempatar
SELECT * FROM LIVROS ORDER BY ano_de_lancamento DESC;

--b. Liste em ordem alfabética os títulos apenas dos livros que contenham
--a letra “c” em qualquer parte do título
SELECT * FROM LIVROS WHERE titulo LIKE '%c%';

--5. Atualização
--a. Mude o ano de lançamento de todos os livros que tenham a letra c em
--qualquer parte do título para 2023
UPDATE livros set ano_de_lancamento = '2023' WHERE titulo LIKE '%c%';

--6. Exclusão
--a. Exclua todos os livros que comecem com a letra “a”
DELETE FROM livros WHERE titulo LIKE 'a%';

--7. Derrube toda a estrutura
DROP DATABASE livros; 