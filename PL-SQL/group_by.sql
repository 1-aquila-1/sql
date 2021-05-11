/*
Mas eu quero saber o seguinte, qual � o total de limite de cr�dito que eu tenho para o Rio de Janeiro e qual � o total de 
limite de cr�dito que eu tenho para S�o Paulo.
*/
select estado, sum(limite_de_credito) as total_de_credito from tabela_de_clientes group by estado;

/*
 Os pre�os de lista por embalagem. Qual � o maior pre�o por embalagem
*/
select embalagem, max(preco_de_lista) as maior_preco from tabela_de_produtos group by embalagem;

/*
Quantos produtos, no meu cat�logo, tem embalagem em lata, tem embalagem pet, tem embalagem de garrafa?
*/
select embalagem, count(*) as numero_produto from tabela_de_produtos group by embalagem;

/*
Soma dos limites de cr�dito por bairro
*/
select bairro, sum(limite_de_credito) as total_credito from tabela_de_clientes group by bairro;
-- Rio de Janeiro
select bairro, sum(limite_de_credito) as total_credito from tabela_de_clientes where cidade = 'Rio de Janeiro' group by bairro;
-- Agrupamento por bairro, cidade
select estado, bairro, sum(limite_de_credito) as total_credito from tabela_de_clientes group by  estado, bairro order by estado, bairro;

/*
Aproveitando o exerc�cio do v�deo anterior, quantos itens existem com a maior quantidade de venda para o produto '1101035'?
*/
select max(quantidade) as quantidade from itens_notas_fiscais where codigo_do_produto = '1101035';
select count(*) as total_de_itens from itens_notas_fiscais where codigo_do_produto = '1101035' and quantidade = 99;

