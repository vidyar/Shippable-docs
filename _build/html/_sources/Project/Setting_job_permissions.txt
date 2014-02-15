:title: Setting job permission
:description: adding github collaborators to the job and setting job permissions
:keywords: collaborator, permission, member, owner, build admin

.. _Setting Job Permissions:


Setting Job Permissions
==========================

You can also add your github repository collaborators and allow them to run the build by setting the permissions using Permisssion button which is located at right side of window.


.. image:: images/Permissionbtn.png

There are three types of users.


**Owner :** Owner is the one who creates a job. He has all the rights to create, run and to delete a job. Owner can add the collaborators as Owner ,Build admin or member based on the requirements . Click on Add button , pick the collaborator from the list if you have already added it in github else you can also add directly by giving their github login id.


**Build admin :** If the owner adds the collaborator as a Build admin, then the build admin can run or rename a build which is already created by the owner and he can view the console output and reports.Build admin will also get email notifications.But he cannot delete a job. 


.. image:: images/Add_User.png


**Member :** If the owner adds the collaborator as a Member, then the member can view the Jobs, console output and the reports . But neither he can run a build nor he will get email notifications.

