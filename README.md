# Change Branch Batch

Change the Git branch that deploy to Azure App Service.
This call the REST API on the Kudu service.

[Documentation](https://github.com/projectkudu/kudu/wiki/Deployment-branch)

## Installation

Copy [chbranch.bat](./src/chbranch.bat).

Set up the parameters.

```bat
set app=### application name ###
set user=### user ###
set password=### password ###
```

## Usage

```sh
chbranch <branch>
```

Deploy when the batch is complete.
