ee-datasets
===========

Datasets for <a href="http://exploringelasticsearch.com">exploringelasticsearch.com</a>

To load these datasets into ElasticSearch, simply <a href="https://github.com/andrewvc/ee-datasets/archive/master.zip">download them as a zip archive</a>, extract to a local folder, and execute the following command from the shell or command prompt:

    java -jar elastic-loader.jar http://{elasticsearch-host}:{elasticsearch-port} {dataset-file}

So for example, to load the dataset named movie-db.eloader (from the datasets subfolder) to an ElasticSearch instance that 
is running at the default host and port, run:

    java -jar elastic-loader.jar http://localhost:9200 datasets/movie_db.eloader
    
Once the dataset is loaded into ElasticSearch you will be able to execute the example code from <a href="http://exploringelasticsearch.com">exploringelasticsearch.com</a>
