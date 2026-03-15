# Lista das variáveis (sem incluir Precip)
variaveis <- setdiff(names(df_reduzido_discretas), "Rain")

# Criar a blacklist: impedir que Precip seja pai de qualquer variável
blacklist <- data.frame(
  from = rep("Rain", length(variaveis)),
  to = variaveis
)


blacklist_rad <- data.frame(
  from = c("Radiation_lag1h", "Radiation_lag1h", 'Radiation_lag2h'),
  to = c("Radiation_lag2h", "Radiation_lag3h",'Radiation_lag3h')
)

blacklist_umi <- data.frame(
  from = c("Humidity_lag1h", "Humidity_lag1h", 'Humidity_lag2h'),
  to = c("Humidity_lag2h", "Humidity_lag3h",'Humidity_lag3h')
)

blacklist_temp <- data.frame(
  from = c("Temperature_lag1h", "Temperature_lag1h", 'Temperature_lag2h'),
  to = c("Temperature_lag2h", "Temperature_lag3h",'Temperature_lag3h')
)

blacklist_pressao <- data.frame(
  from = c("Pressure_lag1h", "Pressure_lag1h", 'Pressure_lag2h'),
  to = c("Pressure_lag2h", "Pressure_lag3h",'Pressure_lag3h')
)

blacklist_orvalho <- data.frame(
  from = c("Dew_point_lag1h", "Dew_point_lag1h", 'Dew_point_lag2h'),
  to = c("Dew_point_lag2h", "Dew_point_lag3h",'Dew_point_lag3h')
)

blacklist_vento <- data.frame(
  from = c("Wind_speed_lag1h", "Wind_speed_lag1h", 'Wind_speed_lag2h'),
  to = c("Wind_speed_lag2h", "Wind_speed_lag3h",'Wind_speed_lag3h')
)

blacklist_Day_period_estacao <- data.frame(
  from = c("Season", "Day_period"),
  to = c("Day_period", "Season")
)


blacklist_Day_period_outras <- data.frame(
  from = c("Radiation_lag1h", "Radiation_lag2h", 'Radiation_lag3h','Humidity_lag1h','Humidity_lag3h', 'Humidity_lag3h', 'Temperature_lag1h', 'Temperature_lag2h','Temperature_lag3h','Pressure_lag1h','Pressure_lag2h','Pressure_lag3h', 'Dew_point_lag1h','Dew_point_lag2h','Dew_point_lag3h','Wind_speed_lag1h','Wind_speed_lag1h','Wind_speed_lag1h'),
  
  to = c("Day_period", "Day_period", 'Day_period', 'Day_period','Day_period','Day_period','Day_period','Day_period','Day_period','Day_period','Day_period','Day_period','Day_period','Day_period','Day_period', 'Day_period','Day_period','Day_period')
)

blacklist_Season_outras<- data.frame(
  from = c("Radiation_lag1h", "Radiation_lag2h", 'Radiation_lag3h','Humidity_lag1h','Humidity_lag3h', 'Humidity_lag3h', 'Temperature_lag1h', 'Temperature_lag2h','Temperature_lag3h','Pressure_lag1h','Pressure_lag2h','Pressure_lag3h', 'Dew_point_lag1h','Dew_point_lag2h','Dew_point_lag3h','Wind_speed_lag1h','Wind_speed_lag1h','Wind_speed_lag1h'),
  
  to = c("Season", "Season", 'Season', 'Season','Season','Season','Season','Season','Season','Season','Season','Season','Season','Season','Season', 'Season','Season','Season')
)

################# Radiação ####################################################

blacklist_rad_outras_1<- data.frame(
  from = c("Radiation_lag1h", "Radiation_lag1h", 'Radiation_lag1h','Radiation_lag1h','Radiation_lag1h', 'Radiation_lag1h', 'Radiation_lag1h', 'Radiation_lag1h','Radiation_lag1h','Radiation_lag1h'),
  
  
  to = c("Humidity_lag3h", "Humidity_lag3h", 'Temperature_lag2h', 'Temperature_lag3h','Pressure_lag2h','Pressure_lag3h','Dew_point_lag2h','Dew_point_lag3h','Wind_speed_lag2h','Wind_speed_lag3h')
)

blacklist_rad_outras_2 <- data.frame(
  from = c("Radiation_lag2h", "Radiation_lag2h", 'Radiation_lag2h','Radiation_lag2h','Radiation_lag2h'),
  
  
  to = c("Humidity_lag3h",  'Temperature_lag3h','Pressure_lag3h', 'Dew_point_lag3h', 'Wind_speed_lag3h')
)

###############################################################################

################# Umidade ####################################################

blacklist_umidade_outras_1<- data.frame(
  from = c("Humidity_lag1h", "Humidity_lag1h", 'Humidity_lag1h','Humidity_lag1h','Humidity_lag1h', 'Humidity_lag1h', 'Humidity_lag1h', 'Humidity_lag1h','Humidity_lag1h','Humidity_lag1h'),
  
  
  to = c("Radiation_lag2h", "Radiation_lag3h", 'Temperature_lag2h', 'Temperature_lag3h','Pressure_lag2h','Pressure_lag3h','Dew_point_lag2h','Dew_point_lag3h','Wind_speed_lag2h','Wind_speed_lag3h')
)

blacklist_umidade_outras_2 <- data.frame(
  from = c("Humidity_lag3h", "Humidity_lag3h", 'Humidity_lag3h','Humidity_lag3h','Humidity_lag3h'),
  
  
  to = c("Radiation_lag3h",  'Temperature_lag3h','Pressure_lag3h', 'Dew_point_lag3h', 'Wind_speed_lag3h')
)

###############################################################################

################# Temperatura ####################################################


blacklist_temperatura_outras_1<- data.frame(
  from = c("Temperature_lag1h", "Temperature_lag1h", 'Temperature_lag1h','Temperature_lag1h','Temperature_lag1h', 'Temperature_lag1h', 'Temperature_lag1h', 'Temperature_lag1h','Temperature_lag1h','Temperature_lag1h'),
  
  
  to = c("Radiation_lag2h", "Radiation_lag3h", 'Humidity_lag3h', 'Humidity_lag3h','Pressure_lag2h','Pressure_lag3h','Dew_point_lag2h','Dew_point_lag3h','Wind_speed_lag2h','Wind_speed_lag3h')
)

blacklist_temperatura_outras_2 <- data.frame(
  from = c("Temperature_lag2h", "Temperature_lag2h", 'Temperature_lag2h','Temperature_lag2h','Temperature_lag2h'),
  
  
  to = c("Radiation_lag3h",  'Humidity_lag3h','Pressure_lag3h', 'Dew_point_lag3h', 'Wind_speed_lag3h')
)


###############################################################################
################# pressao ####################################################

blacklist_pressao_outras_1<- data.frame(
  from = c("Pressure_lag1h", "Pressure_lag1h", 'Pressure_lag1h','Pressure_lag1h','Pressure_lag1h', 'Pressure_lag1h', 'Pressure_lag1h', 'Pressure_lag1h','Pressure_lag1h','Pressure_lag1h'),
  
  
  to = c("Radiation_lag2h", "Radiation_lag3h", 'Humidity_lag3h', 'Humidity_lag3h' ,'Temperature_lag2h','Temperature_lag3h','Dew_point_lag2h','Dew_point_lag3h','Wind_speed_lag2h','Wind_speed_lag3h')
)

blacklist_pressao_outras_2 <- data.frame(
  from = c("Pressure_lag2h", "Pressure_lag2h", 'Pressure_lag2h','Pressure_lag2h','Pressure_lag2h'),
  
  
  to = c("Radiation_lag3h",  'Humidity_lag3h','Temperature_lag3h', 'Dew_point_lag3h', 'Wind_speed_lag3h')
)



###############################################################################
################# orvalho ####################################################

blacklist_orvalho_outras_1<- data.frame(
  from = c("Dew_point_lag1h", "Dew_point_lag1h", 'Dew_point_lag1h','Dew_point_lag1h','Dew_point_lag1h', 'Dew_point_lag1h', 'Dew_point_lag1h', 'Dew_point_lag1h','Dew_point_lag1h','Dew_point_lag1h'),
  
  
  to = c("Radiation_lag2h", "Radiation_lag3h", 'Humidity_lag3h', 'Humidity_lag3h' ,'Temperature_lag2h','Temperature_lag3h','Pressure_lag2h','Pressure_lag3h','Wind_speed_lag2h','Wind_speed_lag3h')
)

blacklist_orvalho_outras_2 <- data.frame(
  from = c("Dew_point_lag2h", "Dew_point_lag2h", 'Dew_point_lag2h','Dew_point_lag2h','Dew_point_lag2h'),
  
  
  to = c("Radiation_lag3h",  'Humidity_lag3h','Temperature_lag3h', 'Pressure_lag3h', 'Wind_speed_lag3h')
)



###############################################################################

################# vento ####################################################

blacklist_vento_outras_1<- data.frame(
  from = c("Wind_speed_lag1h", "Wind_speed_lag1h", 'Wind_speed_lag1h','Wind_speed_lag1h','Wind_speed_lag1h', 'Wind_speed_lag1h', 'Wind_speed_lag1h', 'Wind_speed_lag1h','Wind_speed_lag1h','Wind_speed_lag1h'),
  
  
  to = c("Radiation_lag2h", "Radiation_lag3h", 'Humidity_lag3h', 'Humidity_lag3h' ,'Temperature_lag2h','Temperature_lag3h','Pressure_lag2h','Pressure_lag3h','Dew_point_lag2h','Dew_point_lag3h')
)

blacklist_vento_outras_2 <- data.frame(
  from = c("Wind_speed_lag2h", "Wind_speed_lag2h", 'Wind_speed_lag2h','Wind_speed_lag2h','Wind_speed_lag2h'),
  
  
  to = c("Radiation_lag3h",  'Humidity_lag3h','Temperature_lag3h', 'Pressure_lag3h', 'Dew_point_lag3h')
)





###############################################################################


# Combinar com a blacklist principal
blacklist <- rbind(blacklist, blacklist_rad,blacklist_umi,blacklist_temp, blacklist_pressao,blacklist_orvalho,blacklist_vento ,blacklist_Day_period_estacao, blacklist_Day_period_outras, blacklist_Season_outras,blacklist_rad_outras_1, blacklist_rad_outras_2, blacklist_umidade_outras_1, blacklist_umidade_outras_2, blacklist_temperatura_outras_1, blacklist_temperatura_outras_2, blacklist_pressao_outras_1, blacklist_pressao_outras_2, blacklist_orvalho_outras_1, blacklist_orvalho_outras_2, blacklist_vento_outras_1, blacklist_vento_outras_2 )


bl = blacklist

