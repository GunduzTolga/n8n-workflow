# OpenSEA insights via telegram

This N8N Workflow is designed to query data of the OpenSEA market via Telegram boat.The questions that come through a telegram boat are directed to the relevant auxiliary flows and the results are sent again via telegram.

## Workflow Description

The system consists of four separate agent workflows: analysis tool, marketplace tool, NFT tool and supervisor that manages them.When the user sends a question via Telegram, the supervisor runs the relevant Agent and transmits the answer to the user.

----

## installation instructions

### 1️⃣ Location of Main Supervisor (Telegram Workflow
1. Create a Telegram Boat with [Botfather] (https://t.me/botfather) and save the API switch you have received.
2. Define this key to the N8N ** Telegram Trigger ** node.
3. To get user messages, install ** Chat Message Recaive ** node.
4. Configure the ** Session ID ** node to follow the conversation history.
5. Connect the AI Supervisor Brain ** knot to process messages.
6. Add three different Agent Workflows to this flow via ** Tool Workflow ** nodes.
7. Use the ** Telegram ** knot to send the results to Telegram.

### 2️⃣ structuring Agent Workflows
Each Agent is a separate workflow depending on the telegram flow:

** a.OpenSEA Analytics Agent ** - Bring market trends and transaction history.
** b.OpenSEA Marketplace Agent ** - The best prices in the NFT list and offers.
** c.OpenSEA NFT Agent ** - NFT provides metadata and ownership information.

### 3️⃣ connecting agents to supervisor
Each ** Tool Workflow ** in the Telegram flow sets the query to the correct Agent at the node.

## Usage steps
In the 1. N8N interface, use the ** Import **.
2. Update the required ID information and parameters according to your own environment.
3. Workflow ** Activate ** run the automation.
## Detailed user manual

If you are going to run this Workflow file for the first time, follow the steps below.

1. ** Set up N8n **
- `NPM` Method:` NPX N8N` command can run in the local environment.
-Docker Method: `Docker Run -it -Rm -p 5678: 5678 N8nio/n8n` `run.
- Then access the N8N editor by accessing `http: // localhost: 5678` from your browser.
2. ** Import Workflow **
- In the editor, click `Import from File` from the ** Import ** menu at the top right.
- Select and save the relevant JSON file in this repo.
3. ** Define identity information **
- Every node processing in Workflow needs the API switch to connect to the relevant service.
- Open Node and create a new identity information from the Credendials ** section or select the existing.
4. ** Customize parameters **
- Enter your own values into the required areas (Webhook URL, Keywords, Timer, etc.).
5. ** Run and verify **
- Perform the test by saying ** Execute Workflow ** from the top menu.
- If you get the expected results, take the automation by saying ** Activate **.
6. ** In case of error **
- You can review the logs from the `Executions' tab and try it again by correcting faulty nodes.
7. ** Review the logs and save progress **
- After the test execution, you can see the output of each step on the `Executions` page.
- If necessary, you can keep a detailed log by opening ** Save Execution Progress ** option.
8. ** Personalize Workflow according to your needs **
- You can expand the flow by copying the nodes and changing the parameters.
- After changes, say ** Execute Workflow ** and check the result.

### Special Settings (2004)
Create a boat with [@botfather] (https://t.me/botfhather) via telegram and save the ** boot token **.
2. In the N8N editor, define this bot token in the `Telegram Trigger` node ** Credendials **.
3. Fill the `Chat ID area with the user or group ID to texting the bot ID` in the same node.
4. Don't forget to import other "agent" works used in Workflow to N8N and select the relevant names on the `Tool Workflow` nodes.
5. Check that the system works correctly by sending the test message via telegram.
6. For long -term use, edit the Polling settings in the `Telegram Trigger` node according to your needs.

## frequently asked questions
*** Telegram does not receive a message, why?
** How can I pass the parameter to the agent workflows?
*** How often should Polling be done?