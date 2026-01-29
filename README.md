# rio-rainfall-bayesian-networks-dataset
Repository containing the dataset used in the structural learning and probabilistic inference experiments with Bayesian Networks for precipitation modeling in the municipality of Rio de Janeiro.

# Data dictionary

| Column              | Description                                                                       |
| ------------------- | --------------------------------------------------------------------------------- |
| `radiation_1h`      | Discretized global solar radiation measured 1 hour before the target time (t−1).  |
| `radiation_2h`      | Discretized global solar radiation measured 2 hours before the target time (t−2). |
| `radiation_3h`      | Discretized global solar radiation measured 3 hours before the target time (t−3). |
| `humidity_1h`       | Discretized relative humidity measured 1 hour before the target time (t−1).       |
| `humidity_2h`       | Discretized relative humidity measured 2 hours before the target time (t−2).      |
| `humidity_3h`       | Discretized relative humidity measured 3 hours before the target time (t−3).      |
| `temperature_1h`    | Discretized air temperature measured 1 hour before the target time (t−1).         |
| `temperature_2h`    | Discretized air temperature measured 2 hours before the target time (t−2).        |
| `temperature_3h`    | Discretized air temperature measured 3 hours before the target time (t−3).        |
| `pressure_1h`       | Discretized atmospheric pressure measured 1 hour before the target time (t−1).    |
| `pressure_2h`       | Discretized atmospheric pressure measured 2 hours before the target time (t−2).   |
| `pressure_3h`       | Discretized atmospheric pressure measured 3 hours before the target time (t−3).   |
| `dp_temperature_1h` | Discretized dew point temperature measured 1 hour before the target time (t−1).   |
| `dp_temperature_2h` | Discretized dew point temperature measured 2 hours before the target time (t−2).  |
| `dp_temperature_3h` | Discretized dew point temperature measured 3 hours before the target time (t−3).  |
| `WindSpeed_1h`      | Discretized wind speed measured 1 hour before the target time (t−1).              |
| `WindSpeed_2h`      | Discretized wind speed measured 2 hours before the target time (t−2).             |
| `WindSpeed_3h`      | Discretized wind speed measured 3 hours before the target time (t−3).             |
| `precipitation`     | Target variable: discretized precipitation class at the target time.              |
| `season`            | Season of the year (summer, autumn, winter, or spring).                           |
| `dayperiod`         | Day-period category representing the time of day at the target time.              |
