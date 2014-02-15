:title: Configuring notification alerts
:description: setting up notification alerts in shippable.yml file
:keywords: Email, Campfire, notification, build

.. _Configuring notification alerts:

Configuring notification alerts
=================================


1.Email

2.Campfire

We will notify you about your build status to the mentioned recipients in the yml file.So you should give us information like mode of notification you need and your preferences like when do you wanted to get alert messages.

If you haven't set any notifications, then by default it will send status of your build like success, failure to the commiter and the repository owner .

It will notify you on the given branch, when

* a build was broken

* a broken build was just fixed


If you are triggering the build manually, then by default

You will get email notifications, even if you have turned off the notifications.

Build admin will also get email notification along with the the owner.

Email notification
----------------------

You can configure the email notification by specifying the recipients id in the yml file.

.. code-block:: bash

	notifications:
  	  email:
    	    - exampleone@org.com
          - exampletwo@org.com


You can also specify when you want to get notified using change|always|never . Always and never means you should be notified always or never.
change means you want to notify only when the build status changes on the given branch.


.. code-block:: bash
 
	notifications:
  	   email:
    	     recipients:
               - exampleone@org.com
               - exampletwo@org.com
             on_success: change
             on_failure: always


If you do not want to get notified, then you can configure the email notification to false.

.. code-block:: bash

	notifications:
	   email: false


Campfire notification
---------------------------

You can also configure the campfire notifications so that we will send you the alerts to the campfire chat rooms.

The general format is given below

.. code-block:: bash
       
         notifications:
            campfire: [subdomain]:[api token]@[room id]

* **subdomain** is your campfire subdomain (i.e. 'org1' if you visit 'https://org1.campfirenow.com')

* **api token** is the code where you can post the notifications.Go to My info tab in Campfire. 


.. image:: images/Campfire_api.png


Copy the API authentication token generated for you and put it in the Yml file.

* **room id**  this is the room id, not the name.Go to the room where you want to get notified and copy the room id from the URL.https://org1.campfirenow.com/room/673551

An example is given below
 
.. code-block:: bash
	
	notifications:
  	  campfire: org1:99b2E15783a6adf698e143927e65d11045o47804@673551


You can also customise the notifications using template :

.. code-block:: bash

        notifications:
          campfire:
            rooms:
              - [subdomain]:[api token]@[room id]
            template:
              - "%{repository} (%{commit}) : %{message}"
              - "Build details: %{build_url}"


The following variables can also be added :

* repository: your GitHub repo URL

* build_number: build number

* branch: branch build name

* commit: shortened commit SHA

* author: commit author name

* message:Shippable message to the build

* compare_url: commit change view URL

* build_url: URL of the build detail


You can also specify other flags, like on_success and on_failure in the notifications.


