from pyspark import SparkConf,SparkContext
from pyspark.streaming import StreamingContext
from pyspark.sql import Row,SQLContext
import sys
import requests

def tagcount(new_values, total_sum):
    return sum(new_values) + (total_sum or 0)

def sqlcontext(spark_context):
    if ('sqlContextSingletonInstance' not in globals()):
            globals()['sqlContextSingletonInstance'] = SQLContext(spark_context)
    return globals()['sqlContextSingletonInstance']

def process_rdd(time, rdd):
    print("-- %s ---" % str(time))
    try:
        sql_context = sqlcontext(rdd.context)
        print("Get spark sql singleton context from the curr context --- %s ---" % str(time))
        print(rdd.collect())
        row_rdd = rdd.map(lambda w: Row(word=w[0], word_count=w[1]))
        print(rdd.collect())
        hashtags_df = sql_context.createDataFrame(row_rdd)
        hashtags_df.registerTempTable("hashtags")
        hashtag_counts_df = sql_context.sql("select word , word_count from hashtags where word like '#%'order by word_count desc limit 10")
        hashtag_counts_df.show()
        print(rdd.collect())
    except:
        pass

conf = SparkConf()
conf.setAppName("spark")
sc = SparkContext(conf=conf)
sc.setLogLevel("ERROR")
ssc = StreamingContext(sc, 2)
ssc.checkpoint("checkpoint_TwitterApp")
dataStream = ssc.socketTextStream('localhost',6000)
dataStream.pprint()
words = dataStream.flatMap(lambda line: line.split(" "))
tag= words.map(lambda x: (x, 1)) 
totaltag = tag.updateStateByKey(tagcount)
totaltag.foreachRDD(process_rdd)
ssc.start()
ssc.awaitTermination()
