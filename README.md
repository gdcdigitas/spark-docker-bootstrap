# Spark Cluster & Docker Bootstrap

Have your own Spark cluster for development and testing

## Shortcuts FTW

```[bash]
alias dc='docker-compose'
```

## Build a new cluster image

```[bash]
export MYNAME='mycluster'
dc build spark-master
```

##  Start the cluster 

```[bash]
dc up --scale spark-worker=3
```

## Access to the cluster

```[bash]
docker run --rm -it --network spark_spark-network -v  `pwd`/jars:/examples $MYNAME/spark:latest /bin/sh
```

## Test : Java SparkPi

```[bash]
/spark/bin/spark-submit --master spark://spark-master:7077 --class  org.apache.spark.examples.SparkPi  /spark/examples/jars/spark-examples_2.11-2.4.3.jar 1000
```

## Test : Python SparkPi

```[bash]
/spark/bin/spark-submit --master spark://spark-master:7077 examples/src/main/python/pi.py 1000
```
## Submit your stuff (example.HelloSpark)

```[bash]
/spark/bin/spark-submit --master spark://spark-master:7077 --class example.HelloSpark /examples/hello-spark_2.11-1.0.jar /output.json
```
# Credits

https://towardsdatascience.com/a-journey-into-big-data-with-apache-spark-part-1-5dfcc2bccdd2


