#Alunos: Renan Cristiano Costa, Maria Eduarda Marangon

#Criação Database
CREATE DATABASE blog_jogos;

USE blog_jogos;

#Create das tabelas 
CREATE table usuarios(
id INT (11) not null,
nome VARCHAR(100)not null,
email VARCHAR(50)not null,
usuario VARCHAR(45) not null,
senha VARCHAR(45) not null,
PRIMARY KEY (id)
);

CREATE table postagens(
id INT (11),
titulo VARCHAR(50),
conteudo TEXT,
user_id INT(11),
PRIMARY KEY (id) ,
FOREIGN KEY (user_id) REFERENCES usuarios(id)
);

CREATE table comentarios(
id INT(11),
titulo VARCHAR(50),
conteudo TEXT,
email VARCHAR(50),
post_id INT(11),
PRIMARY KEY(id),
FOREIGN KEY(post_id) REFERENCES postagens(id)
);

#insert dos primeiros dados nas tabelas

INSERT INTO usuarios(id, nome, email, usuario, senha)
VALUES
(2022000, "Roberto Silva Pereira", "robosilva2@gmail.com", "robertinsilva12", "amobobesponja2"),
(2022001, "Karen dos Anjos", "karenzinha512@gmail.com", "karenanjo85", "eusoudedeus02"),
(2022002, "Luiza Pereira", "luluzinha@gmail.com", "lulugotica01", "amogoths9987"),
(2022003, "José Bezerra", "zebezerra@gmail.com", "zebezerro", "jogominecraftdesdeobeta2"),
(2022004, "Lucas Gabriel Costa", "luquinhadocs@gmail.com", "luquinhacs666", "nabalanaotroca06");

INSERT INTO postagens(id, titulo, conteudo, user_id)
VALUES
(0000000, "Novo Jogo do BobEsponja", "Voces viram o novo jogo do BobEsponja? Ele parece ter mecanicas bem divertidas", 2022000),
(0000001, "Fase secreta	no jogo do BobEsponja", "Descobri uma fase secreta no segundo mundo 2 uma fase do Gary", 2022000),
(0000002, "Como pegar um pet secreto em Animal Planet", "Descobri que quando voce, dropa 2 objetos em um local especifico aparece um novo pet pra voce",2022000),
(0000003, "Como eu consigo a chave do Mario?", "Onde eu consigo pegar a chave secreta para a fase do mario world 3d?", 2022000), 
(0000004, "Jogos novos em promoção?", "Voces sabem de algum jogo novo em promoção boa na steam?", 2022000), 
(0000005, "Quanto ficou o jogo da Imperial?", "Alguem sabe me dizer o resultado do jogo da Imperial, no dia estava muito ocupado com politica", 2022001),
(0000006, "Algume me explica uma bang", "Comecei a jogar cs recentemente e estou querendo aprender uma nova bang no mapa DUST2", 2022001),
(0000007, "Personagem nova do valorant", "Oque voces acharam da nova personagem do valorant a fade?", 2022001),
(0000008, "Novo jogo Stumble Guys", "Gente descobri um jogo super maneiro para jogar com seus amigos, ele chama stumble guys voces ja jogaram?", 2022002),
(0000009, "Phasmophobia um jogo aterrozizante", "Gente comecei a jogar Phasmophobia e estou me divertindo muito", 2022002),
(0000010, "Seed minecraft", "Alguem sabe alguma seed de mapa bonito  no minecraft? Estou tentando achar um mapa bonito mas não encontro nada", 2022003),
(0000011, "Construções politicas", "Genteeeee! me deem ideias de construções politicas para fazer no meu mapa do minecraft", 2022003),
(0000012, "Construções e tiros", "Gente me viciei em fortnite, meudeus que jogo incrivel", 2022004);

INSERT INTO comentarios(id, titulo, conteudo, email, post_id)
VALUES 
#PRIMEIRO USUARIO
(9000000, "Cara muito maneiro", "Eu vi na conferencia da E3 e estou ansioso para comprar este jogo", "amo.obob@gmail.com", 0000000),	
(9000001, "Fase bugada", "eu vi sim essa fase secreta, mas eles removeram pq ela estava toda bugada", "patrickesponja@gmail.com", 0000001),	
(9000002, "Obrigado", "CARA!!! muito obrigado eu estava procurando como fazer isso e vc me mostrou", "animal.love@gmail.com", 0000002),	
(9000003, "Se encontra assim", "Voce tem que entrar dentro de um tubo, e subir na escada até achar a chave", "mario.armario@gmail.com", 0000003),	
(9000004, "Resident Evil", "A saga resident evil está toda em promoção corre pra aproveitar", "risemdente@gmail.com", 0000004),	
#SEGUNDO USUARIO
(9000005, "O jogo da IMP X Furia", "O jogo da imperial contra furia ficou 1 a 0 para furia", "cs1.6eramelhor@gmail.com", 0000005),	
(9000006, "O jogo da IMP x C9", "O jogo ficou 2 x 1 para imperial, cara que jogo incrivel uma virada historica", "amocs@gmail.com", 0000005),	
(9000007, "A bang perfeitinha", "Na porta do meio voce encosta na carroça e mira bem no meio do bomb e joga e bangou todos apenas", "melhoresbangs@gmail.com", 0000006),	
(9000008, "Bang fundo", "Encosta no carro mira na palmeira e pula e joga voce banga o fundo todo", "monodust@gmail.com", 0000006),	
(9000009, "Personagem ruim", "Não gostei da nova personagem parece só uma mistura de todos os bonecos 0 criatividade", "renanzinpocabala@gmail.com", 0000007),	
(9000010, "Boneco Bom", "Uma ótima iniciadora, comba bem com varios personagens", "dudinhadopinas@gmail.com", 0000007),	
#QUARTO USUARIO
(9000011, "Mapa bonito montanhoso", "CARA!!!!! descobri uma seed incrivel é só utilizar 12321321311", "joaozinhopvp@gmail.com", 0000010),
(9000012, "Mapa bonito montanhoso", "CARA!!!!! descobri uma seed incrivel é só utilizar 12321321311", "joaozinhopvp@gmail.com", 0000010),
(9000013, "Mapa bonito com oceano grande", "Cara é só utilizar a seed 1927381 ", "reidaatlanta@gmail.com", 0000010),	
(9000014, "Mapa bonito com oceano grande", "Cara é só utilizar a seed 1927381", "reidaatlanta@gmail.com", 0000010),		
(9000015, "Predio da receita federal", "Cara constroi um prédio da receita federal vai ficar ótimo", "rodineibiruliro2022@gmail.com", 0000011),	
(9000016, "Predio da receita federal", "Cara constroi um prédio da receita federal vai ficar ótimo", "rodineibiruliro2022@gmail.com", 0000011),	
(9000017, "Constroi a casa branca", "Cara a casa branca é uma otima construção politica pra se colocar no seu mapa", "amo.obama@gmail.com", 0000011),	
(9000018, "Constroi a casa branca", "Cara a casa branca é uma otima construção politica pra se colocar no seu mapa", "amo.obama@gmail.com", 0000011),	
#QUINTO USUARIO
(9000019, "Me adiciona", "Eu tambem jogo bastante fortnite cara me adiciona la rodineipinapoco", "rodsmatatodos@gmail.com", 0000012),
(9000020, "Para de jogar", "Mano esse jogo é horrivel para de jogar isso pelo amor de Deus", "hate.fortnite@gmail.com", 0000012),	
(9000021, "Cuidado", "Esse jogo é super viciante eu ja gastei muito dinheiro com isso, poupa seu dinheiro", "primorico@gmail.com", 0000012);	
	
  
 #UPDATES NECESSARIOS   
UPDATE postagens set titulo = "Jogo INÉDITO BobEsponja" where id=0000000; 

UPDATE comentarios set titulo ="CARA MUITO FODA!" where id= 9000000;

#DELETES

DELETE from postagens where id =0000001;
DELETE from comentarios where id=9000001;

#SELECTS

SELECT * FROM usuarios;
SELECT * FROM postagens;
SELECT * FROM comentarios;

SELECT COUNT(usuario) FROM usuarios;	
SELECT COUNT(id) FROM postagens;
SELECT COUNT(id) FROM comentarios;

SELECT nome, email FROM usuarios;

SELECT COUNT(*) FROM comentarios WHERE email="joaozinhopvp@gmail.com";

SELECT * FROM postagens WHERE user_id=2022003;

SELECT * FROM comentarios WHERE post_id=0000010;

SELECT DISTINCT titulo, conteudo FROM comentarios where post_id=0000010;

SELECT * FROM usuarios ORDER BY nome asc;

SELECT * FROM postagens WHERE titulo LIKE '%politica%';

SELECT * FROM comentarios WHERE conteudo LIKE '%politica%';

SELECT * FROM postagens WHERE titulo OR conteudo LIKE '%politica%';

SELECT * FROM postagens WHERE titulo AND conteudo LIKE '%politica%';


