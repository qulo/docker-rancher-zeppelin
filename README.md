# zeppelin

A `debian:jessie` based Spark and [Zeppelin](http://zeppelin.apache.org) Docker container.

This image is large and opinionated. It contains:

- [Spark 2.1.0](http://spark.apache.org/docs/2.1.0) and [Hadoop 2.8.0](http://hadoop.apache.org/docs/r2.8.0)
- [PySpark](http://spark.apache.org/docs/2.0.1/api/python) support with [Python 3.4](https://docs.python.org/3.4), [NumPy](http://www.numpy.org), [PandaSQL](https://github.com/yhat/pandasql), and [SciPy](https://www.scipy.org/scipylib/index.html), but no matplotlib.
- A partial list of interpreters out-of-the-box. If your favorite interpreter isn't included, consider [adding it with the api](http://zeppelin.apache.org/docs/0.7.0/manual/dynamicinterpreterload.html).
  - spark
  - shell
  - angular
  - markdown
  - postgresql
  - jdbc
  - python
  - hbase
  - elasticsearch
