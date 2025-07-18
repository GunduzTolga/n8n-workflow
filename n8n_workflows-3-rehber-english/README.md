# N8N Workflows 3 Guide

Each Markdown file in this folder includes the usage guide of the Json Workflow file of the same name.The aim of the guides is to guide users who want to operate these workflows on N8N.

You can install automations by importing the JSON files in the `` n8n_workflows-3` folder with the same names to the N8N editor.The ** Detailed user manual at the end of each guide offers common steps for all workflows.

## General Way to Watched
1. Install N8N on your computer or run it with a docker.
2. Inward the relevant JSON file to the N8N editor.
3. Edit the necessary identity information and parameters for each node.
4. Test Workflow, activate it if it works smoothly.

Since each workflow may have its own special requirements, you can find additional information in Markdown files under the title ** Special Settings **.For beginners, first of all, it is enough to examine these Readme and then relevant guides and to successfully operate automations.

## sample installation scenario

1. `Docker Run -it -Rm -p 5678: 5678 N8nio/N8n` run N8N.
2. When you turn on `http: // Localhost: 5678 in your browser, you will see an empty editor.
3. Download a JSON file from this repo and add to the editor with the ** Import ** menu.
4.Add your API switches by saying "Add New".
5. Test by clicking the ** Execute Workflow ** button at the top left.
6. If the procedures are progressing as expected, take the automation from the top right to ** Active **.

If you encounter error during the installation, you can review error records from the `Executes` menu or take a look at the additional notes in the guide files.

### tips and error solutions
* Before running Workflow for the first time, make sure that it is not missing in the `credenieals' section.
* If you are using Docker, add the parameter `-V ~/.N8N:/home/node/.N8N` to make the data permanent.
*Remember to press the URL in WebHooks before copying URL and sending a test request ** Execute Workflow **.