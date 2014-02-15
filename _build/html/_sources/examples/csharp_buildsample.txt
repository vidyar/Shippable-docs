:title: Csharp-buildsampe
:description: A brief description about csharp-buildsample
:keywords: csharp, language, version numbers, build_environment,script,Notification_alerts

.. _csharp_buildsample:

Csharp-buildsample
=====================

A sample repository csharp-buildsample has been created using Nunitand opencover. Keep the test and code coverage outputs in our special folders called Shippable/testresults and Shippable/codecoverage to get the reports parsed.

We need the yml file to analyze the project details . So add the shippable.yml file to the root of your repo by specifying :

**Language :** csharp is used in our project.

**version numbers :** 4.0 is used.

**build_environment :** we are using windows 2012 node.

**script:** Specify the command to run the test and coverage and save the results in their respective shippable folders. If you have not created the folders, then you can create it using the before_script:key.

**Notification alerts:** Email notification are added to get the alerts about the job status.


Create a job by selecting the repo csharp-buildsample and run it using windows 2012 node. Once the build finishes execution, you can check for the console output , test and codecoverage results as well as the build trend graphs.


