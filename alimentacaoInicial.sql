 -- Sequencia: usuario, projeto, usuario_projeto, registro, comentario

INSERT INTO usuario
(nome, email, senha) VALUES 
('Isaac', 'is.aac@bugmail.com', 'isa'),
('Geovani', 'geo.ana@bugmail.com', 'geo'),
('Guilherme', 'gui.sal@bugmail.com', 'gui'), -- Usuário administrador de projeto-exemplo
('Mikael', 'mikaelalves.net@bugmail.com', 'mik'), -- Usuário contribuidor de projeto-exemplo
('Andre', 'and.re@bugmail.com', 'and');

INSERT INTO projeto
(descricao, area, status, data_inicio, data_fim) VALUES 
("Site da Melro Lanches", "Frontend", "Concluído", "2016-04-01 00:00:01", "2016-04-10 23:59:59"), -- Projeto principal
("Projeto Arduino", "Embarcado", "Andamento", "2016-04-03 03:00:01", "2016-04-25 14:30:00"), -- Projeto principal
("Monitor de tráfego aéreo", "51", "Andamento", "2016-04-03 03:00:01", "2017-09-16 15:00:00"),
("Análise aerodinâmica de aileron", "Aeroespacial", "Andamento", "2016-04-03 09:00:01", "2017-09-16 14:00:00"),
("Aplicativo de aviso de processo", "Direito/Jurídica", "Andamento", "2016-04-13 09:00:01", "2017-09-19 14:00:00"), -- Projeto principal
("Estatística de desperdício de alimentos (RU)", "Alimentícia", "Andamento", "2015-04-03 09:00:01", "2018-09-16 14:00:00"),
("Tratamento de dados de batida de automóveis", "Automobilística", "Andamento", "2015-04-03 09:00:01", "2020-09-16 14:00:00"),
("Firewall com ajuste inteligente de risco", "IT", "Andamento", "2016-04-03 09:00:01", "2016-09-16 14:00:00"),
("Algoritmo aritmético para solução de PI", "Matemática", "Andamento", "2016-04-03 09:00:01", "2017-09-16 14:00:00"),
("Resolução de NP-difícil", "Matemática", "Andamento", "2016-04-03 09:00:01", "2022-09-16 19:00:00"),
("Software de ajuste de suspensão", "Automobilística", "Andamento", "2016-03-03 09:00:01", "2019-09-16 20:00:00"),
("Programa de ajuste de ar-condicionado", "IoT", "Andamento", "2016-04-03 09:00:01", "2017-11-21 14:00:00"),
("Aplicativo de geolocalização", "Mobile", "Andamento", "2016-04-23 14:00:01", "2017-05-05 16:00:00"),
("Software de controle vinícola", "Bebidas", "Andamento", "2016-04-03 09:00:01", "2019-11-14 14:00:00"),
("Programa de iluminação de universidade", "IoT", "Andamento", "2016-04-03 09:00:01", "2016-11-21 14:00:00");

INSERT INTO usuario_projeto
(status, id_usuario, id_projeto) VALUES
(true, 3, 2), -- Guilherme : administrador do projeto de Arduino (2)
(false, 4, 2), -- Mikael : contribuidor do projeto de Arduino
(true, 1, 5), -- Isaac : administrador do projeto de aviso de processo (5)
(false, 5, 5), -- Andre : contribuidor do projeto de aviso de processo
(true, 1, 1),
(false, 2, 1),
(false, 3, 1),
(false, 4, 1),
(false, 5, 1),
(true, 1, 3),
(false, 3, 3),
(false, 4, 3),
(true, 1, 4),
(false, 3, 4),
(false, 4, 4),
(true, 1, 6),
(true, 1, 7),
(true, 1, 8),
(true, 1, 9),
(true, 1, 10),
(true, 1, 11),
(true, 1, 12),
(true, 1, 13),
(true, 1, 14),
(true, 1, 15);

INSERT INTO registro
(data_hora, resumo, prioridade, severidade, status, id_usuario_projeto) VALUES
("2016-04-03 17:10:34", "Tem falha dentro de loop(), contando um aluno como se fosse vários", "Extrema", "Extrema", false, 2),
("2016-04-07 21:14:30", "Erro de linha que acende o LED informando ao aluno que ele foi detectado", "Média", "Baixa", false, 1),
("2016-04-07 21:14:12", "Não abre tela inicial se o celular estiver na horizontal", "Média", "Média", false, 4),
("2016-04-07 21:24:12", "Falha na abertura de arquivos .pdf", "Média", "Média", false, 4),
("2016-04-07 21:34:12", "Problema na permissão de uso de câmera", "Média", "Média", false, 4),
("2016-04-07 21:44:12", "Falha na tela de senha, não está recebendo mais que 16 caracteres", "Média", "Média", false, 4),
("2016-04-07 21:54:12", "Problema com consumo de memória excessivo ao usar recursos de imagem nativos", "Média", "Média", false, 4),
("2016-04-08 11:14:12", "Erro de gerenciamento de processos, ordem incorreta", "Média", "Média", false, 4),
("2016-04-08 11:24:12", "Erro ao acessar processos trabalhistas", "Média", "Média", false, 4),
("2016-04-08 11:34:12", "Problema ao indexar arquivos .vcf", "Média", "Média", false, 4),
("2016-04-08 11:44:12", "Falha de acesso à base de dados usando 4G", "Média", "Média", false, 4),
("2016-04-09 11:54:12", "Problema com renderização de gráficos de percentual de processos retificados", "Média", "Média", false, 4),
("2016-04-10 11:14:12", "Falha de envio de e-mail pelo próprio aplicativo", "Média", "Média", false, 3),
("2016-04-10 11:14:12", "Problema com API REST: JSON incompatível, falha de classe principal em acessos de histórico anterior", "Média", "Média", false, 3),
("2016-04-10 11:14:12", "Erro desconhecido: tela de inicialização", "Média", "Média", false, 4),
("2016-04-11 11:14:12", "Problema com acesso a memória externa", "Média", "Média", false, 3),
("2016-04-12 11:14:12", "Erro de acesso a fichas no formato .ds3", "Média", "Média", false, 3),
("2016-04-13 11:14:12", "Erro de acesso a arquivos .ds4", "Média", "Média", false, 3),
("2016-04-14 11:14:12", "Erro de visualização de arquivos .set", "Média", "Média", false, 3),
("2016-04-15 11:14:12", "Problema de acesso a planilhas .xslx", "Média", "Média", false, 3),
("2016-04-16 11:14:12", "Erro de localização de acessos .wrx", "Média", "Média", false, 4),
("2016-04-17 11:14:12", "Falha ao inicializar: tela com resolução muito baixa (qVGA)", "Média", "Média", false, 3),
("2016-04-18 11:14:12", "Problema ao repetir busca em arquivos .html", "Média", "Média", false, 3),
("2016-04-19 11:14:12", "Falha no botão de realizar pedido antecipado", "Média", "Média", false, 5),
("2016-04-21 11:14:12", "Imagem de tela inicial não escala automaticamente", "Média", "Média", false, 5),
("2016-04-22 11:14:12", "borderRadius apresentando dificuldades para ler conteúdo interno", "Média", "Média", false, 5),
("2016-04-23 11:14:12", "Falha no formulário de receber dicas e notícias sobre sorteio", "Média", "Média", false, 5),
("2016-04-24 11:14:12", "Falha no formulário de receber dicas e notícias sobre sorteio", "Média", "Média", false, 5),
("2016-04-24 11:30:12", "Falha na caixa de SAC", "Média", "Média", false, 5),
("2016-04-24 11:30:12", "Erro na coleta de cookies para propaganda", "Média", "Média", false, 5),
("2016-04-24 11:42:12", "Problemas com imagens .svg do background", "Média", "Média", false, 5),
("2016-04-07 21:14:12", "Problema de desempenho devido a especificação ECMAScript em certos navegadores", "Média", "Média", false, 3);

INSERT INTO comentario
(texto_comentario, data_hora, id_registro, id_usuario_projeto) VALUES
("Seria bom fazer um ajuste de delay no loop", "2016-04-03 17:10:34", 1, 2),
("Refazer a linha que configura o LED", "2016-04-07 21:14:30", 2, 1);
