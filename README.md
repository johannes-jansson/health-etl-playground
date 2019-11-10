# Health ETL playground

A small ETL pipeline for brushing up on my SQL and pandas skills. 

`Extract` extracts data from a postres database on localhost containing mood, sleep and workout information in separate tables, and puts them in a pandas dataframe. `Transform` massages the data. `Load` dumps the data in another postres database. The `create_source` function initiates mocked source databases from sql files in `sql/`. 
