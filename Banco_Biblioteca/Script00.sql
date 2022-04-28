USE banco_biblioteca;

create table editora(
	codigo int not null,
    nome varchar(100) not null,
    contato varchar(50) not null,
    primary key (codigo)
);

insert into editora(codigo, nome, contato) 
values
 (1, "Renan" , "renan.costa2098@gmail.com"),
 (2, "Livia" , "livia.boleta@gmail.com"),
 (3, "Rogerio" , "rogerioopeixe@gmail.com"),
 (4, "Duardo" , "duduardo@gmail.com");

SELECT * FROM banco_biblioteca.editora;

delete from editora where codigo in(2, 4);

update editora set nome ="Rogerio O'Peixe", contato="rogerioopeixao@gmail.com" where codigo = 3;

create table livros(
	codigolivro int not null,
    titulo varchar(100) not null,
    edição int not null,
    Genero varchar(100) not null,
    AnoDePublicacao int not null,
    CodigoEditora int not null,
    
    primary key (codigolivro),
    foreign key (CodigoEditora) REFERENCES editora(codigo)
);

insert into livros(codigolivro, titulo, edição, Genero, AnoDePublicacao, CodigoEditora)
values
	(1, 'Romeu_e_Julieta', 1, 'Romance', 1998, 1),
	(2, 'Diario_de_um_Banana', 12, 'Comédia', 2022, 2),
	(3, 'Era_uma_vez', 1, 'Romance', 2013, 3);


SELECT * FROM banco_biblioteca.livros;
