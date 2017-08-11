```

       ██╗   ██╗ █████╗ ██████╗ ██╗   ██╗███████╗
       ██║   ██║██╔══██╗██╔══██╗╚██╗ ██╔╝██╔════╝
       ██║   ██║███████║██████╔╝ ╚████╔╝ ███████╗
       ╚██╗ ██╔╝██╔══██║██╔══██╗  ╚██╔╝  ╚════██║
        ╚████╔╝ ██║  ██║██║  ██║   ██║   ███████║
         ╚═══╝  ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝
                                     - Master of secrets
```
-----------------------------------------------------------
## What is varys?

 Varys is a bash script wrapper around openssl and tar.
 When you create a vault with Varys, its actually a copy
 of Varys with an encrypted tarball appended to it.

### Possible Uses

 - Securely store pentest loot
 - A toolbox that can be uploaded and expanded on remote server
 - A password manager

### Usage Examples:
```
 varys create -d path/to/vault -n ops
 varys cat -p evilcorp.com/ssh/root
 varys cat -p storytime/short_story
 varys cat -p loot/evilcorp.com/shadow
```
---------------------------------------------------------
## Actions
### cat
  cat out secret

  - `-p path/to/secret` *required*

### create

  Creates a new vault
  - `-n vault-name` *required*
  - `-d path/to/dir`

### execute

  execute descrypted pathload with bash

### extract

  extract vault out to make changes

### list
   List out the contents of the vault

   *This is the default action*

### passwd

  Change password

### raw_cat

  print out the raw ciphertext, not useful unless you
  pipe to `openssl`

### upgrade

  upgrade existing varys vault

---------------------------------------------------------
## Options
### -d | --dir

  directory to use as vault during creation
### -h | --help

  Display this help message
### -n | --name

  name of vault to be created or updated
### -m | --markdown

  generate markdown (only used on the help action)
### -p | --path

  Service Name to filter by
### -R | --remove

  remove directory after creating the vault
