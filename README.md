# E-Commerce_FullStackDataProject
Projet data end-to-end couvrant l’ensemble du cycle de vie des données : PostgreSQL → Cassandra → PySpark → Elasticsearch → Kibana.

Départ d'une BDD PostGreSQL représentant l'activité d'un site d'e-commerce :
-> Dénormalisation et conversion des tables dans un fichier JSON.
-> Insertion des données du fichier JSON dans la BDD Cassandra (NoSQL).
-> Script PySpark pour convertir les données de la BDD Cassandra en fichiers Parquet.
-> Index dans ElasticSearch
-> Création d'un dashboard Kibana
