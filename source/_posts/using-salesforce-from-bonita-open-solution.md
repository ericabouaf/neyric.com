title: Using Salesforce from Bonita Open Solution
tags:
- BPM
- Salesforce
- workflow
id: 182
categories:
- [Software, Java]
date: 2010-12-20 18:08:58
lang: en
---

![BonitaSoft](http://www.bonitasoft.com/images/bonitasoft-logo.png "BonitaSoft")

[Bonita Open Solution](http://www.bonitasoft.com/) is an open-source _Business Process Management_ ( BPM ). It comes with one of the best BPMN editor I have tried (Bonita Studio). The main feature of Bonita, is its **extensibility**, which is achieved by using either :

*   Connectors: java classes which defined the task to run, as well as the interface to configure the connector from within Bonita Studio
*   Scripts: Using [Groovy](http://groovy.codehaus.org/) scripts or Javascript through [the Rhino connector](http://www.bonitasoft.org/exchange/extension_view.php?eid=126)
In this example, I will show how to use a Groovy script to access Salesforce query interface, but the process described here is pretty much the same for all Java librairies you may want to use from Bonita.

First, we need to **generate the JAR file** for your Salesforce organization. We'll use the Force.com Web Service Connector (WSC), which generates the JAR file from your Enterprise WSDL:

*   Download the [latest WSC JAR](http://code.google.com/p/sfdc-wsc/downloads/list)
*   To get your WSDL, log into your organization and go to Your Name -&gt; Setup -&gt; App Setup -&gt; Develop -&gt; API. Generate the enterprise WSDL (unique to your organization) and save it as salesforce-mycompany.wsdl
*   Open a console, and run the WSC tool :
<pre>java -classpath wsc-20.jar com.sforce.ws.tools.wsdlc \
       salesforce-mycompany.wsdl salesforce-mycompany.jar</pre>
Now, open Bonita Studio and **import the two JARs** (Extensions -&gt; Add/remove)

Then, we'll design a simple process. The first task _'Query on Salesforce'_ will perform the SOQL query on Salesforce, and format the results into human-readable HTML. The second task _'View results'_ will just present the results to the user into a form.

[![](http://neyric.com/wp-content/uploads/2010/12/sf_test_workflow.png "sf_test_workflow")](http://neyric.com/wp-content/uploads/2010/12/sf_test_workflow.png)

In the first task, add a Groovy Script Connector and enter the following script :

<script src="https://gist.github.com/748673.js?file=Groovy_salesforce_example"></script>

**Save the result of the script into a new data variable called ${result}.**

Finally, add a form to the second task. Insert a Text field, and sets its default value to the ${result} variable created above.

Run the process and _voilà_ !

I've also been using the same scripting capabilities to post articles to my blog using XML-RPC through the [wordpress-java](http://code.google.com/p/wordpress-java/) library and it worked like a charm !

Which libraries are you gonna use ?