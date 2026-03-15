# Lista das variáveis (sem incluir Precip)
variaveis <- setdiff(names(df_reduzido_discretas), "Rain")

# Criar a blacklist: impedir que Precip seja pai de qualquer variável
blacklist <- data.frame(
  from = rep("Rain", length(variaveis)),
  to = variaveis
)


blacklist_rad <- data.frame(
  from = c("R_1h", "R_1h", 'R_2h'),
  to = c("R_2h", "R_3h",'R_3h')
)

blacklist_umi <- data.frame(
  from = c("H_1h", "H_1h", 'H_2h'),
  to = c("H_2h", "H_3h",'H_3h')
)

blacklist_temp <- data.frame(
  from = c("T_1h", "T_1h", 'T_2h'),
  to = c("T_2h", "T_3h",'T_3h')
)

blacklist_pressao <- data.frame(
  from = c("P_1h", "P_1h", 'P_2h'),
  to = c("P_2h", "P_3h",'P_3h')
)

blacklist_orvalho <- data.frame(
  from = c("DT_1h", "DT_1h", 'DT_2h'),
  to = c("DT_2h", "DT_3h",'DT_3h')
)

blacklist_vento <- data.frame(
  from = c("W_1h", "W_1h", 'W_2h'),
  to = c("W_2h", "W_3h",'W_3h')
)

blacklist_Day_p_estacao <- data.frame(
  from = c("S", "Day_p"),
  to = c("Day_p", "S")
)


blacklist_Day_p_outras <- data.frame(
  from = c("R_1h", "R_2h", 'R_3h','H_1h','H_3h', 'H_3h', 'T_1h', 'T_2h','T_3h','P_1h','P_2h','P_3h', 'DT_1h','DT_2h','DT_3h','W_1h','W_1h','W_1h'),
  
  to = c("Day_p", "Day_p", 'Day_p', 'Day_p','Day_p','Day_p','Day_p','Day_p','Day_p','Day_p','Day_p','Day_p','Day_p','Day_p','Day_p', 'Day_p','Day_p','Day_p')
)

blacklist_S_outras<- data.frame(
  from = c("R_1h", "R_2h", 'R_3h','H_1h','H_3h', 'H_3h', 'T_1h', 'T_2h','T_3h','P_1h','P_2h','P_3h', 'DT_1h','DT_2h','DT_3h','W_1h','W_1h','W_1h'),
  
  to = c("S", "S", 'S', 'S','S','S','S','S','S','S','S','S','S','S','S', 'S','S','S')
)

################# Radiação ####################################################

blacklist_rad_outras_1<- data.frame(
  from = c("R_1h", "R_1h", 'R_1h','R_1h','R_1h', 'R_1h', 'R_1h', 'R_1h','R_1h','R_1h'),
  
  
  to = c("H_3h", "H_3h", 'T_2h', 'T_3h','P_2h','P_3h','DT_2h','DT_3h','W_2h','W_3h')
)

blacklist_rad_outras_2 <- data.frame(
  from = c("R_2h", "R_2h", 'R_2h','R_2h','R_2h'),
  
  
  to = c("H_3h",  'T_3h','P_3h', 'DT_3h', 'W_3h')
)

###############################################################################

################# Umidade ####################################################

blacklist_umidade_outras_1<- data.frame(
  from = c("H_1h", "H_1h", 'H_1h','H_1h','H_1h', 'H_1h', 'H_1h', 'H_1h','H_1h','H_1h'),
  
  
  to = c("R_2h", "R_3h", 'T_2h', 'T_3h','P_2h','P_3h','DT_2h','DT_3h','W_2h','W_3h')
)

blacklist_umidade_outras_2 <- data.frame(
  from = c("H_3h", "H_3h", 'H_3h','H_3h','H_3h'),
  
  
  to = c("R_3h",  'T_3h','P_3h', 'DT_3h', 'W_3h')
)

###############################################################################

################# Temperatura ####################################################


blacklist_temperatura_outras_1<- data.frame(
  from = c("T_1h", "T_1h", 'T_1h','T_1h','T_1h', 'T_1h', 'T_1h', 'T_1h','T_1h','T_1h'),
  
  
  to = c("R_2h", "R_3h", 'H_3h', 'H_3h','P_2h','P_3h','DT_2h','DT_3h','W_2h','W_3h')
)

blacklist_temperatura_outras_2 <- data.frame(
  from = c("T_2h", "T_2h", 'T_2h','T_2h','T_2h'),
  
  
  to = c("R_3h",  'H_3h','P_3h', 'DT_3h', 'W_3h')
)


###############################################################################
################# pressao ####################################################

blacklist_pressao_outras_1<- data.frame(
  from = c("P_1h", "P_1h", 'P_1h','P_1h','P_1h', 'P_1h', 'P_1h', 'P_1h','P_1h','P_1h'),
  
  
  to = c("R_2h", "R_3h", 'H_3h', 'H_3h' ,'T_2h','T_3h','DT_2h','DT_3h','W_2h','W_3h')
)

blacklist_pressao_outras_2 <- data.frame(
  from = c("P_2h", "P_2h", 'P_2h','P_2h','P_2h'),
  
  
  to = c("R_3h",  'H_3h','T_3h', 'DT_3h', 'W_3h')
)



###############################################################################
################# orvalho ####################################################

blacklist_orvalho_outras_1<- data.frame(
  from = c("DT_1h", "DT_1h", 'DT_1h','DT_1h','DT_1h', 'DT_1h', 'DT_1h', 'DT_1h','DT_1h','DT_1h'),
  
  
  to = c("R_2h", "R_3h", 'H_3h', 'H_3h' ,'T_2h','T_3h','P_2h','P_3h','W_2h','W_3h')
)

blacklist_orvalho_outras_2 <- data.frame(
  from = c("DT_2h", "DT_2h", 'DT_2h','DT_2h','DT_2h'),
  
  
  to = c("R_3h",  'H_3h','T_3h', 'P_3h', 'W_3h')
)



###############################################################################

################# vento ####################################################

blacklist_vento_outras_1<- data.frame(
  from = c("W_1h", "W_1h", 'W_1h','W_1h','W_1h', 'W_1h', 'W_1h', 'W_1h','W_1h','W_1h'),
  
  
  to = c("R_2h", "R_3h", 'H_3h', 'H_3h' ,'T_2h','T_3h','P_2h','P_3h','DT_2h','DT_3h')
)

blacklist_vento_outras_2 <- data.frame(
  from = c("W_2h", "W_2h", 'W_2h','W_2h','W_2h'),
  
  
  to = c("R_3h",  'H_3h','T_3h', 'P_3h', 'DT_3h')
)





###############################################################################


# Combinar com a blacklist principal
blacklist <- rbind(blacklist, blacklist_rad,blacklist_umi,blacklist_temp, blacklist_pressao,blacklist_orvalho,blacklist_vento ,blacklist_Day_p_estacao, blacklist_Day_p_outras, blacklist_S_outras,blacklist_rad_outras_1, blacklist_rad_outras_2, blacklist_umidade_outras_1, blacklist_umidade_outras_2, blacklist_temperatura_outras_1, blacklist_temperatura_outras_2, blacklist_pressao_outras_1, blacklist_pressao_outras_2, blacklist_orvalho_outras_1, blacklist_orvalho_outras_2, blacklist_vento_outras_1, blacklist_vento_outras_2 )


bl = blacklist


