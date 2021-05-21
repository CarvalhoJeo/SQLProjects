-------------------------------------------------------
--- CRIA플O DA TABELA CLIENTES ---

Create table t_clientes19 (id_cliente number NOT NULL
                          ,nome_cliente varchar2(100) 
                          );       
                          
--- Cria a primary key da tabela clientes ---   
                      
Alter table t_clientes19 
add constraint t_clientes19_id_pk
primary key (id_cliente);      

-------------------------------------------------------

--- CRIA플O DA TABELA CONTRATOS ---

Create table t_contratos19 (id_contrat number NOT NULL
                            ,id_pedCli number NOT NULL 
                           ); 
                           
--- Cria a primary key da tabela contratos ---
    
Alter table t_contratos19 
add constraint t_contratos19_id_pk
primary key (id_contrat)

/*
Cria a foreign key da tabela contratos baseando-se 
no id do cliente na table clientes
*/  
 
add constraint t_contratos19_id_pedCli_fk
foreign key (id_pedCli)
references t_clientes19 (id_cliente);
-------------------------------------------------------

--- CRIA플O DA TABELA PAGAMENTOS ---

Create table t_pagamentos19 (id_pag number NOT NULL
                             ,id_Contrat number NOT NULL 
                            );  
                            
--- Cria a primary key da tabela pagamentos ---    
Alter table t_pagamentos19 
add constraint t_pagamentos19_id_pk
primary key (id_pag) 

/*
Cria a foreign key da tabela pagamentos baseando-se 
no id do contrato na table contratos
*/  

add constraint t_pagamentos19_id_Contrat_fk
foreign key (id_Contrat)
references t_contratos19 (id_contrat);
-------------------------------------------------------  

--- CRIA플O DA TABELA CURSOS --- 

Create table t_cursos19 (id_curs number NOT NULL
                         ,nome_curso varchar2(100) 
                        );
                                                    
--- Cria a primary key da tabela cursos ---    
Alter table t_cursos19 
add constraint t_cursos19_id_pk
primary key (id_curs)
-------------------------------------------------------  

--- CRIA플O DA TABELA ITENS --- 

Create table t_itens19 (id_itens number NOT NULL
                        ,id_Contrat number NOT NULL 
                        ,id_Curs number NOT NULL
                       );
                                                                            
--- Cria a primary key da tabela itens ---    
Alter table t_itens19 
add constraint t_itens19_id_pk
primary key (id_itens) 

/*
Cria a foreign key da tabela pagamentos baseando-se 
no id do contrato na table contratos
*/  

add constraint t_itens19_id_Contrat_fk
foreign key (id_Contrat)
references t_contratos19 (id_contrat)

add constraint t_itens19_id_Curs_fk
foreign key (id_Curs)
references t_cursos19 (id_curs);
------------------------------------------------------- 
   

 


