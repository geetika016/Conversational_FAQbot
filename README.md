# PROJECT DESCRIPTION

## What is in this Repository?
This repository contains code for a conversational FAQ chatbot that I built using [RASA](https://rasa.com ) and [pre-trained Google BERT](https://arxiv.org/abs/1810.04805). The code has been structured to facilitate deployment to [Azure](https://azure.microsoft.com/en-ca/) can also be used to maintain a CI/CD pipeline for [Azure DevOps] (https://azure.microsoft.com/en-ca/services/devops/)

## What are the features of this Conversational FAQbot?
As the name suggests the chatbot can do two things :
	a. Have converations with the user
	b. Answer FAQ's that are used to train the chatbot.
	
The RASA model allows us to easily incorporate newer training data, train newer models and also improve the chatbot over with each use using the [RASA X](https://rasa.com/docs/rasa-x/ ), which can be accessed by the user.

I have also used a pre-trained BERT model to generate embeddings, this allows the model to be more respond far more accurately, when the questions are not word-for-word from the original FAQ data it has been trained on.

## Prerequisites 
Python : 3.6 or above
Download the pre-trained [12/768 BERT-bas] (https://github.com/google-research/bert),  unzip and put the folder in the main directory before the following steps
		

## Steps to run this :
1. I have not included the faq.json file (i.e. the FAQ data for the chatbot) ,therefore, the first step would be to have an faq.json file of the format :
	[
		{
			q : "This is the question",
			a : "This is my answer"
		}
	]
	
2. After the creation of this file, it needs to be placed in data/nlu folder.

3. Run:

		pip install -r requirements.txt
		pip install rasa-x==0.20.1 --extra-index-url https://pypi.rasa.com/simple

4. Then move to the data/nlu folder and run:

		python process.py

5. Open a terminal window and run:

		./run_bert_service.sh

6. Open another terminal window once BERT is ready to serve requests and run:

		rasa train

7. This will train the model for the data provided, and now we need to start the action server by running:

		rasa run actions
			
8. Once the action server is up and running, open another terminal window and run:

		rasa x

9. The rasa x UI will be running in the localhost on port 5055, and the address in terminal will also specify the username and password to access the admin backend.

10. You can talk to your bot, or share the bot with others, improve it with time etc.

11. The chatbot server can be hosted on Azure, and can be deployed to Teams, Slack or Messenger.
