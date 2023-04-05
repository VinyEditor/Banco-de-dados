Aula 7 Nosso Sistema

create table cliente (codigo_do_cliente number(4) constraint pk_cod_clie primary key,
nome_do_cliente varchar(20)constraint nn_nome_clie not null,
endereco varchar(30) constraint nn_end_clie not null,
cidade varchar(15) constraint nn_cid_clie not null,
cep char(8) constraint nn_cep_clie not null,
uf char(2) constraint nn_uf_clie not null,
cnpj char(16) constraint nn_cnpj_clie not null,
ie char(12) constraint nn_ie_clie not null);

desc cliente

create table vendedor (codigo_do_vendedor number(4) constraint pk_cod_ven primary key,
nome_do_vendedor varchar(20) constraint nn_nom_ven not null,
salario_fixo number(12,2) constraint nn_sal_fix not null,
comissao char(1) constraint nn_com_ven not null);

desc vendedor

create table produto(codigo_do_produto number(4) constraint pk_cod_prod primary key,
unidade varchar(3) constraint nn_uni_prod not null,
descricao varchar(20) constraint nn_desc_prod not null,
valor_unitario number(8,2) constraint nn_val_unit not null);

desc produto

create table pedido(numero_do_pedido number(4) constraint pk_num_ped primary key,
prazo_entrega number(3) constraint nn_pr_entrega not null,
codigo_do_cliente constraint fk_cod_clie references cliente,
codigo_do_vendedor constraint fk_cod_ven references vendedor);

desc pedido

create table item_pedido(numero_do_pedido constraint fk_num_ped references pedido,
codigo_do_produto constraint fk_cod_prod references produto,
quantidade number(8,2) constraint nn_quan_prod not null);

desc item_pedido

insert into cliente values('720','Ana','Rua 17 n. 19','Niterói','24358310','RJ','12113231/0001-34','2134');
insert into cliente values('870','Flávio','Av Pres. Vargas, 10','São Paulo','22763931','SP','22534126/9387-9','4631');
insert into cliente values('110','Jorge','Rua Caiapó, 13','Curitiba','30078500','PR','4512764/9834-9',null);
insert into cliente values('222','Lúcia','Rua Itabira, 12','Belo Horizonte','22124391','MG','283152123/9348-8','2985');
insert into cliente values('830','Mauricio','Av. Paulista, 1236 ','São Paulo','3012683','SP','32816985/7465-6','9343');
insert into cliente values('130','Edmar','Rua da Praia, s/n','Salvador','30079300','BA','23463284/234-9','7121');
insert into cliente values('410','Rodolfo','Largo da Lapa, 27','Rio de Janeiro','30078900','RJ','2835128/2346-9','7431');
insert into cliente values('20','Beth','Av. Climério, 45','São Paulo','25679300','SP','32485126/7326-8','9280');
insert into cliente values('157','Paulo','Trav. Moraes, casa 3','Londrina','null','PR','32848223/324-2','1923');
insert into cliente values('180','Lívio','Av. Beira Mar, 1256','Florianópolis','30077500 ','SC','12736571/2347-4','1111');
insert into cliente values('260','Susana','Rua Lopes Mandes, 12','Niterói','30046500','RJ','21763571/232-9','2530');
insert into cliente values('290','Renato','Rua Meireles, 123','São Paulo ','30225900','SP','13276571/1231-4','1820');
insert into cliente values('390','Sebastião','Rua da Igreja, 10','Uberaba','30438700','MG','32176547/213-3','9071');
insert into cliente values('234','José','Quadra 3, Bl. 3, sl. 1003','Brasília','22841650','DF','21763576/1232-3 ','2931');

insert into vendedor values('209','José','1800','C');
insert into vendedor values('209','José','1800','C');
insert into vendedor values('209','José','1800','C');
insert into vendedor values('209','José','1800','C');
insert into vendedor values('209','José','1800','C');
insert into vendedor values('209','José','1800','C');
insert into vendedor values('209','José','1800','C');
insert into vendedor values('209','José','1800','C');
insert into vendedor values('209','José','1800','C');
