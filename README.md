```
        ...                                                                s
    .x888888hx    :                          ..                           :8
   d88888888888hxx               .u    .    @L           .d``            .88       .u    .
  8" ... `"*8888%`        .    .d88B :@8c  9888i   .dL   @8Ne.   .u     :888ooo  .d88B :@8c
 !  "   ` .xnxx.     .udR88N  ="8888f8888r `Y888k:*888.  %8888:u@88N  -*8888888 ="8888f8888r
 X X   .H8888888%:  <888'888k   4888>'88"    888E  888I   `888I  888.   8888      4888>'88"
 X 'hn8888888*"   > 9888 'Y"    4888> '      888E  888I    888I  888I   8888      4888> '
 X: `*88888%`     ! 9888        4888>        888E  888I    888I  888I   8888      4888>
 '8h.. ``     ..x8> 9888       .d888L .+     888E  888I  uW888L  888'  .8888Lu=  .d888L .+
  `88888888888888f  ?8888u../  ^"8888*"     x888N><888' '*88888Nu88P   ^%888*    ^"8888*"
   '%8888888888*"    "8888P'      "Y"        "88"  888  ~ '88888F`       'Y"        "Y"
      ^"****""`        "P'                         88F     888 ^
                                                  98"      *8E
                                                ./"        '8>
                                               ~`           "
 version: 1.1.0
```
--------------------------------------------------------------------------------------------------
## What is scryptr?

 Scryptr is a bash script wrapper around openssl and tar.
 When you create a vault with Scryptr, its actually a copy
 of Scryptr with a tarball appended to it. Scryptr

### Possible Uses

 - Securely store pentest loot
 - A toolbox that can be uploaded and expanded on remote server
 - A password manager

### Usage Examples:
```
 scryptr create -d path/to/vault -n ops
 scryptr cat -p storytime/short_story
 scryptr cat -c -p loot/evilcorp.com/root_passwd
 scryptr execute -p bin/start-vpn
```
--------------------------------------------------------------------------------------------------
## Actions
### add
  add a new secret. you will be prompted for what you want stored

  - `-p path/to/secret` *required*

### cat
  cat out secret

  - `-p path/to/secret` *required*

### create

  Creates a new vault
  - `-n vault-name` *required*
  - `-d path/to/dir`

### execute

  execute descrypted pathload with bash, only do this to things you create or trust
  can be used to access all your secrets

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

  upgrade existing scryptr vault

--------------------------------------------------------------------------------------------------
## Options
### -c | --copy

  copy output to clipboard
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
