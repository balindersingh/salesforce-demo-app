# Demo to delpoy/retrieve a Salesforce packaged asset using ant
* Retrieve your package components from your salesforce org
* i.e. bash retrieve.sh -u '<username>' -p '<password>' -iu '<your salesforce instance url>'
* ```bash retrieve.sh -u '<username>' -p '<password>' -iu 'https://test.salesforce.com'```
* Validate if package components are valid
* ```bash deploy.sh -u '<username>' -p '<password>' -iu 'https://test.salesforce.com'```
* Deploy the components in your package (important : **-c** flag to *false*)
* ```bash deploy.sh -u '<username>' -p '<password>' -iu 'https://test.salesforce.com' -c false```