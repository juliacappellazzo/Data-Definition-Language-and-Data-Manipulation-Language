-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2022-02-15 19:37:36 BRST
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g

--Letra A, parte 1


ALTER TABLE T_MC_CLIENTE DROP CONSTRAINT uk_mc_cliente_nome_cliente;


--Letra B, parte 1

ALTER TABLE T_MC_CLIENTE MODIFY (qt_estrelas NOT NULL);
ALTER TABLE T_MC_CLIENTE MODIFY (st_cliente NOT NULL);
ALTER TABLE T_MC_CLIENTE MODIFY (ds_email NOT NULL);

--Letra C, parte 1

ALTER TABLE T_MC_CLIENTE ADD CONSTRAINT uk_mc_cliente_nome_login UNIQUE (nm_login);

--Letra D, parte 1 

ALTER TABLE T_MC_CLI_JURIDICA MODIFY (dt_fundacao NOT NULL);
ALTER TABLE T_MC_CLI_JURIDICA MODIFY (nr_cnpj NOT NULL);

--Letra E, parte 1

ALTER TABLE t_mc_sgv_visualizacao_video MODIFY (nr_minuto_video NOT NULL);
ALTER TABLE t_mc_sgv_visualizacao_video MODIFY (nr_segundo_video NOT NULL);

--Letra F, parte 1

ALTER TABLE t_mc_produto ADD CONSTRAINT ck_st_produto CHECK (st_produto = 'A' or st_produto = 'I');
ALTER TABLE t_mc_sgv_produto_video ADD CONSTRAINT ck_st_video_prod CHECK (st_video_prod = 'A' or st_video_prod = 'I');
ALTER TABLE t_mc_end_cli ADD CONSTRAINT ck_st_end CHECK (st_end = 'A' or st_end = 'I');
ALTER TABLE t_mc_funcionario ADD CONSTRAINT ck_st_func CHECK (st_func = 'A' or st_func = 'I');
ALTER TABLE t_mc_categoria_prod ADD CONSTRAINT ck_st_categoria CHECK (st_categoria = 'A' or st_categoria = 'I');