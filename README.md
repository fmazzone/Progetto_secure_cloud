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
```
## Files

- pipeline.ipynb :  è Jupyter Notebook utilizzatp per il processo di automatizzazione del download_data. pre_processing, modelling e risultati
- requirements.txt : contiene la lista libreria necessarie per l'esecuzione 
- models/ : contiene i modelli per ogni città
- results/ : contiene i risulati di ogni modello con i divesi iperparametri scelti per ogni città
- scaler_encoder/: contiene lo scaler e l'encoder utilizzati per la fase di pre-processing per ogni città
- data/ : contiene i dati in formato .csv
- best_models/ : contiene i migliori modelli per ogni città

## Getting Started

Per visualizzare l'applicazione tramite streamlit sul proprio browser:

```bash
streamlit run streamlit_app.py
```

## Run on Docker

In alternativa è possibile utilizzare un Docker container e seguire uno dei link mostrati sulla shell dopo aver lanciato i comandi seguenti, l'applicazione sarà visualizzata sul proprio browser localhost:8501.

```bash
docker build --tag meteo .
docker run --publish 8501:8501 -it meteo
```

## Run on Kubernetes

É possibile fare il deploy anche su Kubernetes tramite i comandi seguenti, i file dashboard-adminuser.yaml e Prediction.yaml sono già configurati opportunamente.

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.1/aio/deploy/recommended.yaml
kubectl apply -f dashboard-adminuser.yaml
kubectl -n kubernetes-dashboard create token admin-user
kubectl proxy
```
Al link seguente è possibile accedere alla dashboard kubernetes: 
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

```bash
kubectl apply -f Prediction.yaml
kubectl get deployments
kubectl get services
```
L'applicazione potrà essere visualizzata sul browser localhost:30001




