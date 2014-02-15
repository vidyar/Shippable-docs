:title:  Node.js-buildsample
:description:   A brief description about Nodejs-buildsample 
:keywords: Node.js, Language, version numbers, script, Notification alerts


.. _Nodejs_buildsample :

Node.js-buildsample
======================

A sample repository Node.js-buildsample has been created using the coverage tool istanbul and the testing tool mocha.

Keep the test and code coverage outputs in our special folders called Shippable/testresults and Shippable/codecoverage to get the reports parsed.

We need the yml file to analyze the project details . So add the shippable.yml file to the root of your repo by specifying :

**Language :** node_js is used in our project.

**version numbers :** 0.10 is used.

**after_script:** Specify the command to run the test and coverage and save the results in their respective shippable folders. If you have not created the folders, then you can create it using the before_script key.

**Notification alerts:**  Email notifications are added to get the alerts about the build status.


Create a job by selecting the repo Node.js-buildsample and run it using Ubuntu 12.04LTS node. Once the build finishes execution, you can check for the console output, test and codecoverage results as well as the build trend graphs.
