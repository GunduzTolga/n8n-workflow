# Travel Assistantagent

This N8N Workflow file is a JSON file that includes automation steps.
The purpose and basic usage of this workflow is explained below.

## Workflow Description
## AI Traveling Agent Powered by Mongodb Atlas for Memory and Vector Search.

** Atlas Mongodb Memory Node **

- The Memory Node Allows The Agent to Persian and Retrieve Conversation Based on Threads in the Database.It USES Mongodb Felxible Store Capabilities to Allow Different Type of Threads and Message (Image, Audio, Video Etc.)


** Atlas Mongodb Vecor Store Node **

- Atlas Vertor Store Tool Allows the Agent to Date Points of Interest from the Vertor Store Database Populated and Embeddded with OpenAI EMBEDDNGS.


### you will need to:
1. Setup Your Google API Credendials for the Gemini llm
2.
3. [Mongodb Atlas Project and Cluster]Get a Hold of the Connection String and Make Sure to Have Your IP Access List Enabled.
4.
5.

`` `
// index name: "vector_index"
// IF You Change An Embeding Provider Make Sure The Numensions Correspond to the Model.
{
"Fields": [
{
"Type": "Vector",
"Path": "Embedding",
"Numdimensions": 1536,
"Similarity": "cosine"
}
]
}
`` `

All of that of that is configured you will need to the loading webhook with the road data points (See Example).

This Should Create Vectorized Data in `Points_of_interest` Collection.

Once you have points to the love of the world.EG."Who Should I go for a romantic getaway?"

** Additional Resources **
-[MONGODB ATLAS VERSASTOR SEARCH]
-[N8N Atlas Vecor Search Docs]

## Usage steps
In the 1. N8N interface, use the ** Import **.
2. Update the required ID information and parameters according to your own environment.
3. Workflow ** Activate ** run the automation.
## Detailed user manual

If you work for the first time this workflow file, follow the steps below.

1. ** Set up N8n **
- `NPM`s method: You can work in the local environment with the command of` NPX N8N`.
-Docker cointem: `Docker run -it -Rm -p -p 5678: 5678 n8nio/n8n` `work.
- After your browser, you will reach the n8n editor by reaching the address `http: // Localhost: 5678`.
2. ** Transfer Workflow ICE **
- Add the `Import from File` secenegi from the Editor -on -right ** Import ** menu.
- Select and save the relevant JSON file in this repo.
3. ** Define identity information **
- Every node processing in Workflow needs the API switch to connect to the relevant service.
- Create a new identity information from the section ** Credendials ** Create Node.
4. ** Prepare the parameters **
- Enter your own values into the required areas (Webhook URL, Keywords, Timer, etc.).
5.
- Ust Menuden ** Execute Workflow ** by saying the test.
- If you get the expected results ** Activate ** activate automation.
6. ** In case of error **
- You can review the logs from the `Executions' tab and try the wrong nodes again.
7. ** Review the logs and save progress **
- After the test execution, you can see the output of each step on the `Executions` page.
- If necessary, you can keep a detailed log by opening ** Save Execution Progress ** option.
8. ** Personalize Workflow according to your needs **
- You can expand the flow by copying the nodes and changing the parameters.
- After changes, say ** Execute Workflow ** and check the result.



### Special Settings
First, add the required API switches from the Credendials ** section of each node before using Workflow.
2. Edit the Webhook or other parameter areas according to your environmental information.
3. If you have `Webhook` node, do not forget to copy the test url and use it in other services.

## frequently asked questions
*** Workflow does not work, what can I do?
** Where do I buy Webhook URL?