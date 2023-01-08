# WeatherApp

Questo notebook classifica il modello migliore tra Decision Tree, Random Forest e Logistic Regression per la predizione del meteo per 7 città : Milano, Torino, Firenze, Bologna, Roma, Napoli, Palermo

## Data

I dati sono stati scaricati dal sito https://www.worldweatheronline.com/. E vengono scaricati nella cartella /data. Questo dataset contiene le informazioni del meteo per ogni città ed è stato scelto di prendere i dati dal 2016-01-01 al 2023-01-01.

Il progetto è stato sviluppato usando python 2.7.17 con i seguenti pacchetti: 

- WorldWeatherPy
- seaborn
- joblib
- numpy
- pandas
- scikit-learn

Installazione con pip: 

```bash
pip install -r requirements.txt

## Files
- pipeline.ipynb :  è Jupyter Notebook utilizzatp per il processo di automatizzazione del download_data. pre_processing, modelling e risultati
- requirements.txt : contiene la lista libreria necessarie per l'esecuzione 
- models/ : contiene i modelli per ogni città
- results/ : contiene i risulati di ogni modello con i divesi iperparametri scelti per ogni città
- scaler_encoder/: contiene lo scaler e l'encoder utilizzati per la fase di pre-processing per ogni città
- data/ : contiene i dati in formato .csv
- best_models/ : contiene i migliori modelli per ogni città
