:title: Java buildsample
:description: A brief description about java buildsample
:keywords: Java, Language,jdk,script,Notification alerts


.. _Java_buidsample :

Java-buildsample
===================

A sample repository Java-buildsample has been created using cobertura and Junit. Keep the test and code coverage outputs in our special folders called Shippable/testresults and Shippable/codecoverage to get the reports parsed and the test results must be in Junit format.

We need the yml file to analyze the project details . So add the shippable.yml file to the root of your repo by specifying :

**Language :** Java is used in our project.


**jdk :** Specify the jdk againts which your build needs to run.


**script :** Specify the command to run the test and coverage using script key. We are mentioning the path of output file shippable/testresults and shippable/codecoverage in "build.properties" file for this project.


**Notification alerts:** Email notifications are added to get the alerts about the build status.



Create a job by selecting the repo java-buildsample and run it using Ubuntu 12.04LTS node. Once the build finishes execution, you can check for the console output, test and codecoverage results as well as the build trend graphs.
