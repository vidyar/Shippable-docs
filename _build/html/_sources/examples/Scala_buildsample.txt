:title: Scala_buildsample
:description: A brief description about scala-buildsample
:keywords: Scala, Language, version number, Notification alerts

.. _Scala_buildsample:

Scala-buildsample
===================
  
A sample repository Scala-buildsample has been created using the testing framework ScalaTest. 
Keep the test and code coverage outputs in our special folders called Shippable/testresults and Shippable/codecoverage to get the reports parsed and also the test results must be in code> Junit format.

We need the yml file to analyze your project details . So add the shippable.yml file to the root of your repo by specifying :

**Language :** Scala is used

**version number :** 2.10.2 is used. .

**Notification alerts:**  Email notifications are added to get the alerts about the build status.


Create a job by selecting the repo Scala-buildsample and run it using Ubuntu 12.04LTS node. Once the build finishes execution, you can check for the console output, test and codecoverage results as well as the build trend graphs.


