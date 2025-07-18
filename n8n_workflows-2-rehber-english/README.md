# n8n Workflows 2 Guide

Each Markdown file in this folder contains the usage guide for the JSON workflow with the same name. The guides aim to walk users through running these workflows on n8n step by step.

You can set up automations by importing the JSON files in `../n8n_workflows-2` into the n8n editor. The **Detailed Usage Guide** section at the end of each guide lists common steps for all workflows.

## General Steps
1. Install n8n on your computer or run it via Docker.
2. Import the relevant JSON file into the n8n editor.
3. Configure the required credentials and parameters for each node.
4. Test the workflow and activate it if it works correctly.

Each workflow may have specific requirements, so you can find additional notes under the **Special Settings** heading in the Markdown files. Beginners can follow this README and the guides to successfully run the automations.

## Sample Setup Scenario
1. Start n8n with `docker run -it --rm -p 5678:5678 n8nio/n8n`.
2. When `http://localhost:5678` opens in your browser you'll see an empty editor.
3. Download a JSON file from this repo and add it via the **Import** menu.
4. If you see yellow warnings on a node, the necessary **Credentials** haven't been selected. Click "Add New" to add your API keys.
5. Click the **Execute Workflow** button in the top left to test.
6. If everything works as expected, switch to **Active** in the top right to enable the automation.

If you encounter an error during setup, check the logs under the `Executions` menu or review the additional notes in the guide files.

### Tips and Troubleshooting
* Before running the workflow for the first time, make sure there are no missing settings under **Credentials**.
* If using Docker, add `-v ~/.n8n:/home/node/.n8n` to persist data.
* For examples with Webhooks, remember to click **Execute Workflow** before sending a test request after copying the URL.
