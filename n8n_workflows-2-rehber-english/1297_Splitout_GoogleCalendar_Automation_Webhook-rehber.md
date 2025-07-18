# OpenAI Chat Model1
This N8N Workflow file is a JSON file that includes automation steps.
The purpose and basic usage of this workflow is explained below.

## Workflow Description
There is no explanatory note in this workflow file.

## Usage Steps
1. In the n8n interface, use the **Import** option to load this JSON file.
2. Update the required credentials and parameters for your environment.
3. Activate the workflow to run the automation.

## Detailed Usage Guide
If you are running this workflow for the first time, follow these steps.

1. **Install n8n**
   - npm method: run `npx n8n` locally.
   - Docker method: `docker run -it --rm -p 5678:5678 n8nio/n8n`.
   - Then open `http://localhost:5678` in your browser to reach the n8n editor.
2. **Import the workflow**
   - From the **Import** menu at the top right, choose `Import from File`.
   - Select the relevant JSON file from this repo and save it.
3. **Set credentials**
   - Each node needs API credentials to connect to its service.
   - Create or select credentials from the **Credentials** section of the node.
4. **Customize parameters**
   - Enter your own values (Webhook URL, keywords, schedules, etc.).
5. **Run and verify**
   - Click **Execute Workflow** from the top menu to test.
   - If you get the expected results, **Activate** the automation.
6. **If errors occur**
   - Review logs in the `Executions` tab and fix any failing nodes, then try again.
7. **Check logs and save progress**
   - After the test run, you can see each step's output on the `Executions` page.
   - Enable **Save Execution Progress** for detailed logging if needed.
8. **Customize as needed**
   - Copy nodes and change parameters to expand the flow.
   - After changes, run **Execute Workflow** again and check the result.

### Special Settings
1. Before using the workflow, add the required API keys from each node's **Credentials** section.
2. Adjust Webhook or other parameter fields according to your environment.
3. If there is a `Webhook` node, remember to copy the test URL and use it in other services.

## Frequently Asked Questions
* **The workflow doesn't run, what can I do?** Review the error messages on the `Executions` page and complete any missing credential settings.
* **Where do I get the Webhook URL?** When editing the `Webhook` node, copy the URL shown in the top right and paste it in the relevant platform.
