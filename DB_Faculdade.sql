#Mostra todos os databases existentes
show databases;

#cria um novo database
create database DB_Faculdade

#Apaga um database existente
drop database 

#Ativa o database a ser utilizado
use DB_Faculdade

#Permite visualizar todas as tabelas existentes no database
show tables;

create table Alunos (ID_Aluno int primary Key, 
                     nome varchar(100),
                     Matricula varchar(50),
                     Data_Nascimento date,
                     Endereco varchar(200),
                     Telefone varchar(20),
                     Email varchar(100)
                     );
                     
create table Cursos ( ID_Cursos int primary key,
						Nome_Curso varchar(100),
                        Codigo_Curso varchar(50),
                        Duracao int,
                        Descricao Text
                        );
     
   create table Professores ( id_professor int primary key,
                              Nome varchar (100),
                              Matricula varchar (50),
                              Especializacao varchar (100),
                              Telefone varchar (20),
                              Email varchar (100)
                              );
   
   
create table Materias (ID_Materia int primary key,
                       Nome_Materia Varchar(100),
                       Codigo_Materia Varchar(50),
                       Carga_Horaria int,
                       ID_professor int,
                       foreign key (ID_Professor) references Professores(ID_professor)
);

create table Notas (ID_Nota int primary key,
                    ID_Aluno int,
                    ID_Materia int,
                    Nota decimal(5,2),
                    foreign key (ID_Aluno) references Alunos(id_Aluno),
                    foreign key (ID_Materia)references Materias(ID_Materia)
                        
              );       
                        
                        