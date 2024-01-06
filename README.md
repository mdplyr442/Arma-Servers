# Arma-Servers
Contains all Arma 3 servers the 16AA regularly uses.  
**main** - Main server that's used to run sunday OPs.  
**training** - Training server used for HRs and training during the week.  
**testing** - Testing of scripts and missions in a dedicated server environment, not for mod testing.  
**special** - Different than usual modpack, e.g. Christmas specials or Joint OPs.  

# What to change
`!scripts\secrets.txt.sample` - rename to `secrets.txt` and change accordingly.  
`configs\passwords.hpp.sample` - rename to `passwords.hpp` and change accordingly. `password` needs to match `ARMA_CONNECT_PASSWORD` in `!scripts\secrets.txt`!  
`configs\passwords_training.hpp.sample` - rename to `passwords_training.hpp` and change accordingly. `password` needs to match `ARMA_CONNECT_PASSWORD` in `!scripts\secrets.txt`!  
`configs\passwords_testing.hpp.sample` - rename to `passwords.hpp` and change accordingly.  
`server_main\userconfig\mypass.hpp.sample` - rename to `mypass.hpp`, needs to match the `serverCommandPassword` in `passwords.hpp`!  
`server_training\userconfig\mypass.hpp.sample` - rename to `mypass.hpp`, needs to match the `serverCommandPassword` in `passwords.hpp`!  
`server_testing\userconfig\mypass.hpp.sample` - rename to `mypass.hpp`, needs to match the `serverCommandPassword` in `passwords_testing.hpp`!  
`server_special\userconfig\mypass.hpp.sample` - rename to `mypass.hpp`, needs to match the `serverCommandPassword` in `passwords.hpp`!  

# Server settings
### Shared settings
`configs\common.hpp` - contains common server settings  
`configs\admins.hpp` - list of admins that can login without admin password  
`configs\network.cfg` - network settings  
### Server Specific settings
`configs\main.cfg` - server settings specific for **main** server, only contains hostname and message of the day  
`configs\training.cfg` - server settings specific for **training** server, only contains hostname and message of the day  
`configs\testing.cfg` - server settings specific for **testing** server, only contains hostname and message of the day  
`configs\specials.cfg` - server settings specific for **special** server, only contains hostname and message of the day  
### Difficulty Settings
`logs_main\Users\16AA\16aa.Arma3Profile` contains the `CustomDifficulty` settings for **main** server.  
`logs_training\Users\16AA\16aa.Arma3Profile` contains the `CustomDifficulty` settings for the **training** server.  
`logs_testing\Users\16AA\16aa.Arma3Profile` contains the `CustomDifficulty` settings for the **testing** server.  
`logs_special\Users\16AA\16aa.Arma3Profile` contains the `CustomDifficulty` settings for the **special** server.  
### CBA Settings
These are configured in the servers respective `cba_settings.sqf` file and can't be changed without a server restart.
`server_main\userconfig\cba_settings.sqf` - contains the CBA settings for **main** server.
`server_training\userconfig\cba_settings.sqf` - contains the CBA settings for the **training** server.  
`server_testing\userconfig\cba_settings.sqf` - contains the CBA settings for the **testing** server.  
`server_special\userconfig\cba_settings.sqf` - contains the CBA settings for the **special** server.  