# Workshop 1: Full-stack introduction to Data Science application development

## Setting up 

1. Install python 3 using the guide for your platform (should work with 2 as well)

2. Install requirements

```
pip3 install -r requirements.txt
```

3. Download data

We will use the Product Backorder dataset, more details:   
https://www.kaggle.com/tiredgeek/predict-bo-trial 

Direct download link:   
https://drive.google.com/file/d/0Bw4VaTA4yvi3RWh0NnoxWFl2a3c/view?usp=sharing 

## Preprocessing & model definition

1. Create a new jupyter notebook and load the provided data file. Explore it and think about how you're going to model the problem. 

2. Get data ready into format consumable by your chosen model (fill missing values, get rid of unnecessary features, normalize, split into bins, one-hot-encode...). 

3. Store a copy of the processed data on disk.

4. Train a classifier.
 
5. Store classifier as a pickle file.

## Deployment

1. Load your pickle file into memory in the provided `server.py` script

2. Repeat the same preprocessing steps in the classify method, and make a prediction

3. Start the server with 

```
gunicorn -w 3 -b localhost:5000 server:app
```

or for debug mode simply

```
python3 server.py
```

4. From another terminal, test the functionality with

```
curl -X POST -H 'Content-Type: application/json' -d '{"data": [1, 2, 3]}' localhost:5000/classify
```


