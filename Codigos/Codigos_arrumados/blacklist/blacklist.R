# Lista das variáveis (sem incluir Precip)
variaveis <- setdiff(names(df_reduzido_discretas), "chuva")

# Criar a blacklist: impedir que Precip seja pai de qualquer variável
blacklist <- data.frame(
  from = rep("chuva", length(variaveis)),
  to = variaveis
)


blacklist_rad <- data.frame(
  from = c("radiacao_atraso1h", "radiacao_atraso1h", 'radiacao_atraso2h'),
  to = c("radiacao_atraso2h", "radiacao_atraso3h",'radiacao_atraso3h')
)

blacklist_umi <- data.frame(
  from = c("umidade_atraso1h", "umidade_atraso1h", 'umidade_atraso2h'),
  to = c("umidade_atraso3h", "umidade_atraso3h",'umidade_atraso3h')
)

blacklist_temp <- data.frame(
  from = c("temperatura_atraso1h", "temperatura_atraso1h", 'temperatura_atraso2h'),
  to = c("temperatura_atraso2h", "temperatura_atraso3h",'temperatura_atraso3h')
)

blacklist_pressao <- data.frame(
  from = c("pressao_atraso1h", "pressao_atraso1h", 'pressao_atraso2h'),
  to = c("pressao_atraso2h", "pressao_atraso3h",'pressao_atraso3h')
)

blacklist_orvalho <- data.frame(
  from = c("temp_orvalho_atraso1h", "temp_orvalho_atraso1h", 'temp_orvalho_atraso2h'),
  to = c("temp_orvalho_atraso2h", "temp_orvalho_atraso3h",'temp_orvalho_atraso3h')
)

blacklist_vento <- data.frame(
  from = c("vento_atraso1h", "vento_atraso1h", 'vento_atraso2h'),
  to = c("vento_atraso2h", "vento_atraso3h",'vento_atraso3h')
)

blacklist_turno_estacao <- data.frame(
  from = c("estacao_do_ano", "turno"),
  to = c("turno", "estacao_do_ano")
)


blacklist_turno_outras <- data.frame(
  from = c("radiacao_atraso1h", "radiacao_atraso2h", 'radiacao_atraso3h','umidade_atraso1h','umidade_atraso3h', 'umidade_atraso3h', 'temperatura_atraso1h', 'temperatura_atraso2h','temperatura_atraso3h','pressao_atraso1h','pressao_atraso2h','pressao_atraso3h', 'temp_orvalho_atraso1h','temp_orvalho_atraso2h','temp_orvalho_atraso3h','vento_atraso1h','vento_atraso1h','vento_atraso1h'),
  
  to = c("turno", "turno", 'turno', 'turno','turno','turno','turno','turno','turno','turno','turno','turno','turno','turno','turno', 'turno','turno','turno')
)

blacklist_estacao_do_ano_outras<- data.frame(
  from = c("radiacao_atraso1h", "radiacao_atraso2h", 'radiacao_atraso3h','umidade_atraso1h','umidade_atraso3h', 'umidade_atraso3h', 'temperatura_atraso1h', 'temperatura_atraso2h','temperatura_atraso3h','pressao_atraso1h','pressao_atraso2h','pressao_atraso3h', 'temp_orvalho_atraso1h','temp_orvalho_atraso2h','temp_orvalho_atraso3h','vento_atraso1h','vento_atraso1h','vento_atraso1h'),
  
  to = c("estacao_do_ano", "estacao_do_ano", 'estacao_do_ano', 'estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano','estacao_do_ano', 'estacao_do_ano','estacao_do_ano','estacao_do_ano')
)

################# Radiação ####################################################

blacklist_rad_outras_1<- data.frame(
  from = c("radiacao_atraso1h", "radiacao_atraso1h", 'radiacao_atraso1h','radiacao_atraso1h','radiacao_atraso1h', 'radiacao_atraso1h', 'radiacao_atraso1h', 'radiacao_atraso1h','radiacao_atraso1h','radiacao_atraso1h'),
  
  
  to = c("umidade_atraso3h", "umidade_atraso3h", 'temperatura_atraso2h', 'temperatura_atraso3h','pressao_atraso2h','pressao_atraso3h','temp_orvalho_atraso2h','temp_orvalho_atraso3h','vento_atraso2h','vento_atraso3h')
)

blacklist_rad_outras_2 <- data.frame(
  from = c("radiacao_atraso2h", "radiacao_atraso2h", 'radiacao_atraso2h','radiacao_atraso2h','radiacao_atraso2h'),
  
  
  to = c("umidade_atraso3h",  'temperatura_atraso3h','pressao_atraso3h', 'temp_orvalho_atraso3h', 'vento_atraso3h')
)

###############################################################################

################# Umidade ####################################################

blacklist_umidade_outras_1<- data.frame(
  from = c("umidade_atraso1h", "umidade_atraso1h", 'umidade_atraso1h','umidade_atraso1h','umidade_atraso1h', 'umidade_atraso1h', 'umidade_atraso1h', 'umidade_atraso1h','umidade_atraso1h','umidade_atraso1h'),
  
  
  to = c("radiacao_atraso2h", "radiacao_atraso3h", 'temperatura_atraso2h', 'temperatura_atraso3h','pressao_atraso2h','pressao_atraso3h','temp_orvalho_atraso2h','temp_orvalho_atraso3h','vento_atraso2h','vento_atraso3h')
)

blacklist_umidade_outras_2 <- data.frame(
  from = c("umidade_atraso3h", "umidade_atraso3h", 'umidade_atraso3h','umidade_atraso3h','umidade_atraso3h'),
  
  
  to = c("radiacao_atraso3h",  'temperatura_atraso3h','pressao_atraso3h', 'temp_orvalho_atraso3h', 'vento_atraso3h')
)

###############################################################################

################# Temperatura ####################################################


blacklist_temperatura_outras_1<- data.frame(
  from = c("temperatura_atraso1h", "temperatura_atraso1h", 'temperatura_atraso1h','temperatura_atraso1h','temperatura_atraso1h', 'temperatura_atraso1h', 'temperatura_atraso1h', 'temperatura_atraso1h','temperatura_atraso1h','temperatura_atraso1h'),
  
  
  to = c("radiacao_atraso2h", "radiacao_atraso3h", 'umidade_atraso3h', 'umidade_atraso3h','pressao_atraso2h','pressao_atraso3h','temp_orvalho_atraso2h','temp_orvalho_atraso3h','vento_atraso2h','vento_atraso3h')
)

blacklist_temperatura_outras_2 <- data.frame(
  from = c("temperatura_atraso2h", "temperatura_atraso2h", 'temperatura_atraso2h','temperatura_atraso2h','temperatura_atraso2h'),
  
  
  to = c("radiacao_atraso3h",  'umidade_atraso3h','pressao_atraso3h', 'temp_orvalho_atraso3h', 'vento_atraso3h')
)


###############################################################################
################# pressao ####################################################

blacklist_pressao_outras_1<- data.frame(
  from = c("pressao_atraso1h", "pressao_atraso1h", 'pressao_atraso1h','pressao_atraso1h','pressao_atraso1h', 'pressao_atraso1h', 'pressao_atraso1h', 'pressao_atraso1h','pressao_atraso1h','pressao_atraso1h'),
  
  
  to = c("radiacao_atraso2h", "radiacao_atraso3h", 'umidade_atraso3h', 'umidade_atraso3h' ,'temperatura_atraso2h','temperatura_atraso3h','temp_orvalho_atraso2h','temp_orvalho_atraso3h','vento_atraso2h','vento_atraso3h')
)

blacklist_pressao_outras_2 <- data.frame(
  from = c("pressao_atraso2h", "pressao_atraso2h", 'pressao_atraso2h','pressao_atraso2h','pressao_atraso2h'),
  
  
  to = c("radiacao_atraso3h",  'umidade_atraso3h','temperatura_atraso3h', 'temp_orvalho_atraso3h', 'vento_atraso3h')
)



###############################################################################
################# orvalho ####################################################

blacklist_orvalho_outras_1<- data.frame(
  from = c("temp_orvalho_atraso1h", "temp_orvalho_atraso1h", 'temp_orvalho_atraso1h','temp_orvalho_atraso1h','temp_orvalho_atraso1h', 'temp_orvalho_atraso1h', 'temp_orvalho_atraso1h', 'temp_orvalho_atraso1h','temp_orvalho_atraso1h','temp_orvalho_atraso1h'),
  
  
  to = c("radiacao_atraso2h", "radiacao_atraso3h", 'umidade_atraso3h', 'umidade_atraso3h' ,'temperatura_atraso2h','temperatura_atraso3h','pressao_atraso2h','pressao_atraso3h','vento_atraso2h','vento_atraso3h')
)

blacklist_orvalho_outras_2 <- data.frame(
  from = c("temp_orvalho_atraso2h", "temp_orvalho_atraso2h", 'temp_orvalho_atraso2h','temp_orvalho_atraso2h','temp_orvalho_atraso2h'),
  
  
  to = c("radiacao_atraso3h",  'umidade_atraso3h','temperatura_atraso3h', 'pressao_atraso3h', 'vento_atraso3h')
)



###############################################################################

################# vento ####################################################

blacklist_vento_outras_1<- data.frame(
  from = c("vento_atraso1h", "vento_atraso1h", 'vento_atraso1h','vento_atraso1h','vento_atraso1h', 'vento_atraso1h', 'vento_atraso1h', 'vento_atraso1h','vento_atraso1h','vento_atraso1h'),
  
  
  to = c("radiacao_atraso2h", "radiacao_atraso3h", 'umidade_atraso3h', 'umidade_atraso3h' ,'temperatura_atraso2h','temperatura_atraso3h','pressao_atraso2h','pressao_atraso3h','temp_orvalho_atraso2h','temp_orvalho_atraso3h')
)

blacklist_vento_outras_2 <- data.frame(
  from = c("vento_atraso2h", "vento_atraso2h", 'vento_atraso2h','vento_atraso2h','vento_atraso2h'),
  
  
  to = c("radiacao_atraso3h",  'umidade_atraso3h','temperatura_atraso3h', 'pressao_atraso3h', 'temp_orvalho_atraso3h')
)





###############################################################################


# Combinar com a blacklist principal
blacklist <- rbind(blacklist, blacklist_rad,blacklist_umi,blacklist_temp, blacklist_pressao,blacklist_orvalho,blacklist_vento ,blacklist_turno_estacao, blacklist_turno_outras, blacklist_estacao_do_ano_outras,blacklist_rad_outras_1, blacklist_rad_outras_2, blacklist_umidade_outras_1, blacklist_umidade_outras_2, blacklist_temperatura_outras_1, blacklist_temperatura_outras_2, blacklist_pressao_outras_1, blacklist_pressao_outras_2, blacklist_orvalho_outras_1, blacklist_orvalho_outras_2, blacklist_vento_outras_1, blacklist_vento_outras_2 )


bl = blacklist