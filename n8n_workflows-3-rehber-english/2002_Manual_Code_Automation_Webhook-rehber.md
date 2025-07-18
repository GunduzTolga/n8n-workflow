# Summarizing and analyzing youtube videos Workflow

This N8N Workflow file is automatically used to get a summary and transcript from Youtube videos.Below is the main purpose and way of use of Workflow.

## Workflow Description

By giving youtube video link to this workflow, you can get a brief summary of the content, transcript, and analysis of visual details.You can run a manual as well as through a Webhook.The results can be sent to different platforms such as Notion or Google Docs.

Workflow N8N is created with version 1.82.3.

## requirements
* [Google API switch] (https://console.developers.google.com/)

## Test Information
* Workflow has been tested on videos with a length from a few minutes to one hour.

## notes for the future
* Workflow is currently prepared for Gemini-1.5-Flash model.In the future, the `set` nodes can be updated to use different models or API endpoints.

## documentation
* [Gemini API Visual Ability] (https://ai.google.dev/gemini-api/docs/vision?lang=python)
* [Pricing] (https://ai.google.dev/gemini-api/docs/pricing)

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

### Special Settings (2002)
Create a new ** API switch ** from your Google Cloud account [API Keys] (https://coud.google.com/apis/crendentials).
2. In the N8N editor, `Set: Open the Define Initial Variables' node and type this key in the` Apikey` field.
3. Enter the full connection of the youtube video you want to analyze in the `youtubeurl area.
4. When you test Workflow, you can get both the video summary and the transcript file as a output.
5. For large videos, set the `Maxresults' value appropriately to avoid exceeding API limits.

## frequently asked questions
*** Video link does not work, what should I do? ** Make sure the video is open to everyone and check that URL is copied correctly.
** Where will I see the outputs?If you wish, you can connect to other services such as Notion, Google Docs.
*** Is my API key wrong?