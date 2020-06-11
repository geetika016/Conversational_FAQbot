Download the following pre-trained BERT and unzip and put the folder in the main directory before the following steps
Link : https://drive.google.com/open?id=1hR-vCoF6kwJmi6HK0MDEWPD-jml6kvNQ


Steps to run in the terminal:

1. pip install requirements.txt
2. pip install rasa-x==0.20.1 --extra-index-url https://pypi.rasa.com/simple
2. in first terminal window: ./run_bert_service.sh
4. in second terminal window :rasa run actions
6. in third terminal window: rasa x
7. Navigate to the url in the third window to use the chatbot in localhost.
