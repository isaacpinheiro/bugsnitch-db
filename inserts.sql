-- Sequencia: usuario, projeto, usuario_projeto, registro, comentario

INSERT INTO usuario
(nome, email, senha) VALUES
('Isaac Pinheiro', 'is.aac@bugmail.com', 'senhaforte'),
('Geovani Anacleto', 'geo.ana@bugmail.com', 'senhaforte'),
('Guilherme Salim', 'gui.sal@bugmail.com', 'senhaforte'), -- Usuário administrador de projeto-exemplo
('Mikael Alves', 'mikaelalves.net@gmail.com', 'senhaforte') -- Usuário contribuidor de projeto-exemplo

INSERT INTO projeto
(descricao, area, status, data_inicio, data_fim) VALUES
("Site da Nasal Lanches", "Frontend", "Concluído", "2016-04-01 00:00:01", "2016-04-10 23:59:59"),
("Contador de alunos para Arduino", "Embarcado", "Andamento", "2016-04-03 03:00:01", "2016-04-25 14:30:00"), -- Projeto principal
("Sistema de mísseis do carro do Batman", "51", "Andamento", "2016-04-03 03:00:01", "2017-09-16 15:00:00")

INSERT INTO usuario_projeto
(status, id_usuario, id_projeto) VALUES
(true, 3, 2) -- Salim e o adminitrador do projeto de Arduino
INSERT INTO usuario_projeto
(status, id_usuario, id_projeto) VALUES
(false, 4, 2) -- Mikael e contribuidor do projeto do Arduino

INSERT INTO registro
(data_hora, resumo, prioridade, severidade, status, id_usuario_projeto) VALUES
("2016-04-03 17:10:34", "Tem falha dentro de loop(), contando um aluno como se fosse vários", "Extrema", "Extrema", false, 2)
("2016-04-07 21:14:30", "Erro de linha que acende o LED informando ao aluno que ele foi detectado", "Média", "Baixa", false, 1)

INSERT INTO comentario
(texto_comentario, data_hora, id_registro, id_usuario_projeto) VALUES
("Seria bom fazer um ajuste de delay no loop", "2016-04-03 17:10:34", 1, 2),
("Refazer a linha que confugura o LED", "2016-04-07 21:14:30", 2, 1),
