# etl-project

Project Title: Using ETL to determine the most popular artist and songs of 2018
 
Team Members:

        	Addison Brown
        	Ashley Cleveland
        	Jessica Jordan
         
 
Project Description/Outline:
This project is to explore one of the most popular music streaming platforms, Spotify. We will be extracting, transforming, and loading data around artist popularity, song popularity, and most popular genres among Spotify users. 
 
 
Sources of Data: 

        Kaggle: Spotify Track DB
        Kaggle: Top Spotify Tracks of 2018


Data Cleanup & Analysis: 
1. Extract data files into a Dataframe using Python. 

2. Transform the dataframes

        a. Create a copy of the file
        b. Select the desired columns
        c. Rename the columns
        d. Clean up the data (remove any duplicates)
        
3. Load the Data: 

        a. Using Postgres, create the database (spotify_db) and raw tables for data to be loaded into.
        b. Run the python file to create the connection, confirm the tables and load the dataframes into the database.
        
4. Create a final technical report with the above information and steps required to reproduce your ETL process. 

        Extract
        Read the data from the SpotifyFeatures.csv and top2018.csv files

        Transform
        We removed all of the columns from the SpotifyFeatures.csv except artist_name, track_name, track_id, and popularity, danceability, valence. We then cleaned and aggregated the data placing them in the following order: id, song, artist, popularity, danceability, and valence

        We removed all of the columns from the top2018.csv except artist_name, track_name, track_id, danceability, and valence. We then cleaned and aggregated the data placing them in the following order: id, song, artist, danceability, and valence

        Load
        Using psycopg and sqlalchemy we loaded the data into our tables using the “to_sql” function. Our database schema includes the following tables:

                features 
                primary key - id
                song, artist 
                popularity
                danceability
                valence

                top2018 
                primary key - id
                song
                artist
                danceability
                valence

