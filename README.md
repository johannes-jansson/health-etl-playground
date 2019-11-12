# Health ETL playground

A small ETL pipeline for brushing up on my SQL and pandas skills. 

`Extract` extracts mood, sleep and workout data from a postres database on localhost and a csv file. `Transform` combines and massages the data. `Load` dumps the data in another postres database. The `create_source` function initiates mocked source databases from sql files in `sql/`. 

Create a venv, install dependencies from requirements.txt and run `python etl.py`. Modify main if you need to create target or source databases.

Inspired by/stolen from https://medium.com/datadriveninvestor/complete-data-analytics-solution-using-etl-pipeline-in-python-edd6580de24b
