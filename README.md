# E-Commerce_FullStackDataProject
Projet data end-to-end couvrant l’ensemble du cycle de vie des données : PostgreSQL → Cassandra → PySpark → Elasticsearch → Kibana.

<img width="1104" height="141" alt="image" src="https://github.com/user-attachments/assets/15f19dda-2d8e-4fdd-9b1d-683f9261ddf6" />

Départ d'une BDD PostGreSQL représentant l'activité d'un site d'e-commerce :
-> Dénormalisation et conversion des tables dans un fichier JSON
-> Insertion des données du fichier JSON dans la BDD Cassandra (NoSQL)
-> Script PySpark pour convertir les données de la BDD Cassandra en fichiers Parquet
-> Index dans ElasticSearch
-> Création d'un dashboard Kibana

