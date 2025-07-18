# 2045_schedule_http_create_scheduled.json

This N8N Workflow file is a JSON file that includes automation steps.
The purpose and basic usage of this workflow is explained below.

## Workflow Description
# Financial News Recap Workflow

This Workflow Automates the Daily Email Delivery of Curated Financial News to a Designated Recipient at 7:00 am.It Extracts Relevant Financial News Articles, Structures the Content, and Sends it in a Concise Summary Format Via Microsoft Outlook.

### Workflow Steps
1. ** Schedule Trigger **
Sets the Workflow to Activate Daily At 7:00 am.
2. ** Fetch Financial News **
Retrieves Financial News Content from [ft.com] (https://www.ft.com/) Using an Http Request Node.
3. ** Extract News Headlines and Secions **
Using CSS selectors, this node parses specificating sections of the html page to gather key headlines and sections:
- Headline #1, headline #2
- Editor's Picks
- Etc.
4. ** Aggregate News Content **
Combines All Extracted News Secions into a Single Data Set, Organizing Content Under Relevant Categories.
5. ** AI Agent for Summarization **
A Google Gemini Chat Model Gelerates A Structure Summary in HTML Format, Optimized to Provide Investors with a Clear Market Overview.
6. ** Email Dispatch **
Sends The Summarized Content Via Microsoft Outlook with a subject "Financial News from Today," Formatted in HTML for Clarity and Readability.

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