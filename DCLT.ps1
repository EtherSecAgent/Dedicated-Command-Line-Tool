#var
$prefs = Get-Content .\dewrito_prefs.cfg
$server = Invoke-WebRequest -Uri 127.0.0.1:11775
$date = Get-Date -Format G





 #submenus 
 function areyousure {$areyousure = read-host "Are you sure you want to exit? (y/n)"  
           if ($areyousure -eq "y"){exit}  
           if ($areyousure -eq "n"){mainmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 areyousure  
                }  
                }
  function exitormain { 
  $areyousure = read-host "1 Repeat 2 Main Menu"  
           if ($areyousure -eq "1"){Invoke-History}  
           if ($areyousure -eq "2"){mainmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }
  function chatorlog { 
  $areyousure = read-host "1.Back 2.Log Menu"  
           if ($areyousure -eq "1"){chatmenu}  
           if ($areyousure -eq "2"){logmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }
  function debugorlog { 
  $areyousure = read-host "1.Back 2.Log Menu"  
           if ($areyousure -eq "1"){debugmenu}  
           if ($areyousure -eq "2"){logmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }
  function dedicatedserverorlog { 
  $areyousure = read-host "1.Back 2.Log Menu"  
           if ($areyousure -eq "1"){dedicatedservermenu}  
           if ($areyousure -eq "2"){logmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }

  function doritoorlog { 
  $areyousure = read-host "1.Back 2.Log Menu"  
           if ($areyousure -eq "1"){doritomenu}  
           if ($areyousure -eq "2"){logmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }

  function gameeventsorlog { 
  $areyousure = read-host "1.Back 2.Log Menu"  
           if ($areyousure -eq "1"){gameeventsmenu}  
           if ($areyousure -eq "2"){logmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }

  function listplayersorlog { 
  $areyousure = read-host "1.Back 2.Log Menu"  
           if ($areyousure -eq "1"){listplayersmenu}  
           if ($areyousure -eq "2"){logmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }

  function serverormain { 
  $areyousure = read-host "1.Back 2.Main Menu"  
           if ($areyousure -eq "1"){servermenu}  
           if ($areyousure -eq "2"){mainmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }
  function dataormain { 
  $areyousure = read-host "1.Back 2.Main Menu"  
           if ($areyousure -eq "1"){serverreport}  
           if ($areyousure -eq "2"){mainmenu}  
           else {write-host -foregroundcolor red "Invalid Selection"   
                 exitormain  
                }  
                }   
  function confvoip { 
  cls
  echo "---------------------------------------------------------"  
  echo "Enable or Disable VoIP"
  echo ""
  echo "   1. Enable"
  echo "   2. Disable"
  echo "   3. Check VoIP"
  echo "   4. Back"
  echo ""  
  echo ""  
  echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection" 
           if ($answer -eq 1){$prefs |  ForEach-Object { if ($_ -match 'VoIP\.Enabled') { $_ -replace '0', '1' } else { $_ } } | Set-Content .\dewrito_prefs.cfg}  
           if ($answer -eq 2){$prefs | ForEach-Object { if ($_ -match 'VoIP\.Enabled') { $_ -replace '1', '0' } else { $_ } } | Set-Content .\dewrito_prefs.cfg}
           if ($answer -eq 3){$prefs | Select-String "VoIP.Enabled"}
           if ($answer -eq 4){subservermenu}  
           
           else {write-host -foregroundcolor red "Invalid Selection"   
                 sleep 5
                 confvoip  
                } 
                sleep 5
                confvoip 
                }                                                                                
 #Mainmenu function. Contains the screen output for the menu and waits for and handles user input.  
 function mainmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Dedicated Command Line Tool"                
 echo "    1. Log Menu"  
 echo "    2. Server Menu"
 echo "    3. Server Info"
 echo "    4. Guardian Mode"
 echo "    5. Ban Hammer"
 echo "    6. Firewall" 
 echo "    7. Exit"        
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection" 
 if ($answer -eq 1){logmenu}   
 if ($answer -eq 2){servermenu}
 if ($answer -eq 3){serverreport}
 if ($answer -eq 4){guardian}         
 if ($answer -eq 5){banhammer}
 if ($answer -eq 6){firewallmenu}
 if ($answer -eq 7){exit}       
 else {write-host -ForegroundColor green "Command Sent, looping back to menu in 10"  
       sleep 10  
       mainmenu  
      }  
                }
 #logmenu function. Contains the screen output for the menu and waits for and handles user input.  
 function logmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "     Log Menu           "  
 echo "    1. View Chat Log"  
 echo "    2. View Debug Log"
 echo "    3. View Dedicated Server Log"
 echo "    4. View Dorito Log"
 echo "    5. View GameEvents Log"
 echo "    6. View Player Log"
 echo "    7. Main Menu"
 echo "    8. Exit"     
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){chatmenu}  
 if ($answer -eq 2){debugmenu}
 if ($answer -eq 3){dedicatedservermenu} 
 if ($answer -eq 4){doritomenu} 
 if ($answer -eq 5){gameeventsmenu}
 if ($answer -eq 6){listplayersmenu}
 if ($answer -eq 7){mainmenu}
 if ($answer -eq 10){exit} 
        
 else {write-host -ForegroundColor green "Command Sent, looping back to menu in 10"  
       sleep 10  
       logmenu  
      }  
      }
  #chatmenu function. Contains the screen output for the menu and waits for and handles user input.  
 function chatmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Chat Log Options"      
 echo "    1. Pick a Number of lines to View"  
 echo "    2. Search Chat Log"
 echo "    3. View Chat Live - WARNING HAVE TO CLOSE SCRIPT WHEN DONE"
 echo "    4. View Whole Chat log - WARNING BIG FILES = LONG TEXT"
 echo "    5. Log Menu"
 echo "    6. Main Menu"
 echo "    7. Exit"     
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){$SearchQ = Read-Host -Prompt 'Pick a number of lines' ; Get-Content .\chat.log -Tail "$SearchQ"}
 if ($answer -eq 1){chatorlog}  
 if ($answer -eq 2){$Search = Read-Host -Prompt 'Input your search' ; Get-Content .\chat.log | Select-String "$Search"}
 if ($answer -eq 2){chatorlog} 
 if ($answer -eq 3){Get-Content .\chat.log -Wait -Tail 2}
 if ($answer -eq 3){chatorlog}
 if ($answer -eq 4){Get-Content .\chat.log}
 if ($answer -eq 4){chatorlog} 
 if ($answer -eq 5){logmenu}
 if ($answer -eq 6){mainmenu}
 if ($answer -eq 7){exit} 
        
 else {write-host -ForegroundColor green "Sent"  
       sleep 10  
       logmenu  
      }  
      }

  #debugmenu function. Contains the screen output for the menu and waits for and handles user input.  
 function debugmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Debug Log Options"      
 echo "    1. Pick A Number Of Lines To View"  
 echo "    2. Search Debug Log"
 echo "    3. View Debug Live - WARNING HAVE TO CLOSE SCRIPT WHEN DONE"
 echo "    4. View Whole Debug log - WARNING BIG FILES = LONG TEXT"
 echo "    5. Log Menu"
 echo "    6. Main Menu"
 echo "    7. Exit"     
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){$SearchQ = Read-Host -Prompt 'Pick a number of lines' ; Get-Content .\debug.log -Tail "$SearchQ"}
 if ($answer -eq 1){debugorlog}  
 if ($answer -eq 2){$Search = Read-Host -Prompt 'Input your search' ; Get-Content .\debug.log | Select-String "$Search"}
 if ($answer -eq 2){debugorlog} 
 if ($answer -eq 3){Get-Content .\debug.log -Wait -Tail 2}
 if ($answer -eq 3){debugorlog}
 if ($answer -eq 4){Get-Content .\debug.log}
 if ($answer -eq 4){debugorlog} 
 if ($answer -eq 5){logmenu}
 if ($answer -eq 6){mainmenu}
 if ($answer -eq 7){exit} 
        
 else {write-host -ForegroundColor green "Sent"  
       sleep 10  
       logmenu  
      }  
      }

  #dedictedservermenu function. Contains the screen output for the menu and waits for and handles user input.  
 function dedicatedservermenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Dedicated Server Log Options"      
 echo "    1. Pick A Number Of Lines To View"  
 echo "    2. Search Dedicated Server Log"
 echo "    3. View Dedicated Server Live - WARNING HAVE TO CLOSE SCRIPT WHEN DONE"
 echo "    4. View Whole Dedicated Server Log - WARNING BIG FILES = LONG TEXT"
 echo "    5. Log Menu"
 echo "    6. Main Menu"
 echo "    7. Exit"     
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){$SearchQ = Read-Host -Prompt 'Pick a number of lines' ; Get-Content .\dedicatedserver.log -Tail "$SearchQ"}
 if ($answer -eq 1){dedicatedserverorlog}  
 if ($answer -eq 2){$Search = Read-Host -Prompt 'Input your search' ; Get-Content .\dedicatedserver.log | Select-String "$Search"}
 if ($answer -eq 2){dedicatedserverorlog} 
 if ($answer -eq 3){Get-Content .\dedicatedserver.log -Wait -Tail 2}
 if ($answer -eq 3){dedicatedserverorlog}
 if ($answer -eq 4){Get-Content .\dedicatedserver.log}
 if ($answer -eq 4){dedicatedserverorlog} 
 if ($answer -eq 5){logmenu}
 if ($answer -eq 6){mainmenu}
 if ($answer -eq 7){exit} 
        
 else {write-host -ForegroundColor green "Sent"  
       sleep 10  
       logmenu  
      }  
      }

  #gameEventsmenu function. Contains the screen output for the menu and waits for and handles user input.  
 function gameeventsmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Game Events Log Options"      
 echo "    1. Pick A Number Of Lines To View"  
 echo "    2. Search Game Events Log"
 echo "    3. View Game Events Live - WARNING HAVE TO CLOSE SCRIPT WHEN DONE"
 echo "    4. View Whole Game Events Log - WARNING BIG FILES = LONG TEXT"
 echo "    5. Log Menu"
 echo "    6. Main Menu"
 echo "    7. Exit"     
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){$SearchQ = Read-Host -Prompt 'Pick a number of lines' ; Get-Content .\gameEvents.log -Tail "$SearchQ"}
 if ($answer -eq 1){gameeventsorlog}  
 if ($answer -eq 2){$Search = Read-Host -Prompt 'Input your search' ; Get-Content .\gameEvents.log | Select-String "$Search"}
 if ($answer -eq 2){gameeventsorlog} 
 if ($answer -eq 3){Get-Content .\gameEvents.log -Wait -Tail 2}
 if ($answer -eq 3){gameEventsorlog}
 if ($answer -eq 4){Get-Content .\gameEvents.log}
 if ($answer -eq 4){gameeventsorlog} 
 if ($answer -eq 5){logmenu}
 if ($answer -eq 6){mainmenu}
 if ($answer -eq 7){exit} 
        
 else {write-host -ForegroundColor green "Sent"  
       sleep 10  
       logmenu  
      }  
      }

  #doritomenu function. Contains the screen output for the menu and waits for and handles user input.  
 function doritomenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Dorito Log Options"      
 echo "    1. Pick A Number Of Lines To View"  
 echo "    2. Search Dorito Log"
 echo "    3. View Dorito Live - WARNING HAVE TO CLOSE SCRIPT WHEN DONE"
 echo "    4. View Whole Dorito Log - WARNING BIG FILES = LONG TEXT"
 echo "    5. Log Menu"
 echo "    6. Main Menu"
 echo "    7. Exit"     
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){$SearchQ = Read-Host -Prompt 'Pick a number of lines' ; Get-Content .\dorito.log -Tail "$SearchQ"}
 if ($answer -eq 1){doritoorlog}  
 if ($answer -eq 2){$Search = Read-Host -Prompt 'Input your search' ; Get-Content .\dorito.log | Select-String "$Search"}
 if ($answer -eq 2){doritoorlog} 
 if ($answer -eq 3){Get-Content .\dorito.log -Wait -Tail 2}
 if ($answer -eq 3){doritoorlog}
 if ($answer -eq 4){Get-Content .\dorito.log}
 if ($answer -eq 4){doritoorlog} 
 if ($answer -eq 5){logmenu}
 if ($answer -eq 6){mainmenu}
 if ($answer -eq 7){exit} 
        
 else {write-host -ForegroundColor green "Sent"  
       sleep 10  
       logmenu  
      }  
      }

  #listplayersmenu function. Contains the screen output for the menu and waits for and handles user input.  
 function listplayersmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Players Log Options"      
 echo "    1. Pick A Number Of Lines To View"  
 echo "    2. Search Player Log"
 echo "    3. View Players Live - WARNING HAVE TO CLOSE SCRIPT WHEN DONE"
 echo "    4. View Whole Player log - WARNING BIG FILES = LONG TEXT"
 echo "    5. Log Menu"
 echo "    6. Main Menu"
 echo "    7. Firewall Menu"     
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){$SearchQ = Read-Host -Prompt 'Pick a number of lines' ; Get-Content .\listplayers.log -Tail "$SearchQ"}
 if ($answer -eq 1){listplayersorlog}  
 if ($answer -eq 2){$Search = Read-Host -Prompt 'Input your search' ; Get-Content .\listplayers.log | Select-String "$Search"}
 if ($answer -eq 2){listplayersorlog} 
 if ($answer -eq 3){Get-Content .\listplayers.log -Wait -Tail 2}
 if ($answer -eq 3){listplayersorlog}
 if ($answer -eq 4){Get-Content .\listplayers.log}
 if ($answer -eq 4){listplayersorlog} 
 if ($answer -eq 5){logmenu}
 if ($answer -eq 6){mainmenu}
 if ($answer -eq 7){firewallmenu} 
        
 else {write-host -ForegroundColor green "Sent"  
       sleep 10  
       logmenu  
      }  
      }

  #servermenu function. Contains the screen output for the menu and waits for and handles user input.  
 function servermenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "     Server Menu "
 echo ""
 echo "    1. Main Menu"
 echo ""
 echo "    2. Start Dedicated Server"
 echo ""                    
 echo "    3. Start Headless Server"
 echo ""
 echo "    6. Stop Server"
 echo ""
 echo "    8. Check Server Process"
 echo ""
 echo "    9. Options"
 echo "" 
 echo "    10. Exit"        
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){mainmenu}
 if ($answer -eq 2){.\eldorado.exe -launcher -dedicated}
 if ($answer -eq 2){echo "DCLT Started Dedicated Eldorito Server $($date)" | Add-Content .\dedicatedServer.log}
 if ($answer -eq 2){serverormain}   
 if ($answer -eq 3){.\eldorado.exe -launcher -dedicated -headless -window -height 300 -width 300}
 if ($answer -eq 3){echo "DCLT Started Headless Eldorito Server $($date)" | Add-Content .\dedicatedServer.log}
 if ($answer -eq 3){serverormain} 
 if ($answer -eq 6){Stop-Process -processname eldorado}
 if ($answer -eq 6){echo "DCLT Stopped Eldorito Server $($date)" | Add-Content .\dedicatedServer.log}
 if ($answer -eq 6){serverormain} 
 if ($answer -eq 8){tasklist /fi "IMAGENAME eq eldorado.exe"}
 if ($answer -eq 9){subservermenu}           
 if ($answer -eq 10){exit}       
 else {write-host -ForegroundColor green "          Command Sent, looping back to main menu"
       sleep 10   
       servermenu  
      }  
      }
      #subservermenu advanced server options / config
       function subservermenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Server Options (RESTART MAY BE REQUIRED)"                
 echo "    1. Configure Voip"
 echo "    2. Configure Sprint"
 echo "    3. Configure Assassination"
 echo "    4. Back"        
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"
 if ($answer -eq 1){confvoip}  
 if ($answer -eq 2){servermenu}
 if ($answer -eq 3){servermenu}
 if ($answer -eq 4){servermenu}        
 else {write-host -ForegroundColor green "Command Sent" 
     sleep 10  
     subservermenu 
      }  
      } 

 #datamenu function. Contains the screen output for the menu and waits for and handles user input.  
 function serverreport{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "     Server Info       "
 echo "    1. Main Menu"
 echo "    2. Server Report"    
 echo "    3. Players Status"
 echo "    4. Exit"       
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"  
 if ($answer -eq 1){mainmenu}
 if ($answer -eq 2){ Write-Host -ForegroundColor green "Server Report $date" |
  echo "---------------------------------------"
  Write-Host -ForegroundColor cyan "Name" ; $data = convertfrom-json $server.Content ; $data.Name
  Write-Host -ForegroundColor cyan "Player Count" ; $data = convertfrom-json $server.Content ; $data.numPlayers
  Write-Host -ForegroundColor cyan "Variant" ; $data = convertfrom-json $server.Content ; $data.variant
  Write-Host -ForegroundColor cyan "Map" ; $data = convertfrom-json $server.Content ; $data.map
  Write-Host -ForegroundColor cyan "Gametype" ; $data = convertfrom-json $server.Content ; $data.variantType
  Write-Host -ForegroundColor cyan "Status" ; $data = convertfrom-json $server.Content ; $data.status  
  Write-Host -ForegroundColor cyan "Sprint" ;$data = convertfrom-json $server.Content ; $data.sprintEnabled
  Write-Host -ForegroundColor cyan "Sprint Unlimated" ; $data = convertfrom-json $server.Content ; $data.sprintUnlimitedEnabled
  Write-Host -ForegroundColor cyan "VoIP" ; $data = convertfrom-json $server.Content ; $data.VoIP
  Write-Host -ForegroundColor cyan "Assassinations" ; $data = convertfrom-json $server.Content ; $data.assAssAssAssAssassinationEnabled	
  Write-Host -ForegroundColor cyan "Dedicated" ; $data = convertfrom-json $server.Content ; $data.isDedicated	
  Write-Host -ForegroundColor cyan "Running Since" ; Get-Content .\dedicatedServer.log -Tail 1}
 if ($answer -eq 2){dataormain}
 if ($answer -eq 3){$data = convertfrom-json $server.Content ; $data.players}
 if ($answer -eq 3){dataormain} 
 if ($answer -eq 4){exit} 
        
 else {write-host -ForegroundColor green "Command Sent"
 sleep 5 }
  
       sleep 30  
       datamenu  
        
      } 

 # Guardian Mode, keeps halo online running 
 Function guardian {
while ($true) {
    cls
    if ((Get-Process -Name eldorado -ErrorAction SilentlyContinue) -eq $null) 
    {

        Write-Host -ForegroundColor Red "Server Is Not Running" ;

        .\eldorado.exe -launcher -dedicated -headless -window -height 300 -width 300  ;

        "Guardian Started Headless Eldorito Server $($date)" | Add-Content .\dedicatedServer.log 

    }
    else {write-host -ForegroundColor Green "Guardian Mode is Activated, Server Is Running (Checking 15s)" 
             
             Write-Host -ForegroundColor cyan "Name" ;  (Invoke-WebRequest -Uri 127.0.0.1:11775 | ConvertFrom-Json).Name
             Write-Host -ForegroundColor cyan "Player Count:" ; (Invoke-WebRequest -Uri 127.0.0.1:11775 | ConvertFrom-Json).numPlayers
             Write-Host -ForegroundColor cyan "Variant" ; (Invoke-WebRequest -Uri 127.0.0.1:11775 | ConvertFrom-Json).variant
             Write-Host -ForegroundColor cyan "Map" ; (Invoke-WebRequest -Uri 127.0.0.1:11775 | ConvertFrom-Json).map
             Write-Host -ForegroundColor cyan "GameType" ; (Invoke-WebRequest -Uri 127.0.0.1:11775 | ConvertFrom-Json).variantType
             Write-Host -ForegroundColor cyan "Status" ; (Invoke-WebRequest -Uri 127.0.0.1:11775 | ConvertFrom-Json).status 
            Get-Content .\chat.log -Tail 5
             Write-Host -ForegroundColor cyan "Running Since" ; Get-Content .\dedicatedServer.log -Tail 1
         }
    
    Start-Sleep -Seconds 15

    } 
    }


 #firewallmenu Displays firewall banning options
 function firewallmenu{  
 cls  
 echo "---------------------------------------------------------"  
 echo ""  
 echo "    Firewall Menu"                
 echo "    1. Main Menu"
 echo "    2. Perma Ban"
 echo "    3. Voip Ban"
 echo "    4. Player Log Menu"      
 echo ""  
 echo ""  
 echo "---------------------------------------------------------"  
 $answer = read-host "Please Make a Selection"
 if ($answer -eq 1){mainmenu}  
 if ($answer -eq 2){firewall}
 if ($answer -eq 3){voipban}
 if ($answer -eq 4){listplayersmenu}        
 else {write-host -ForegroundColor red "Invalid Selection" 
     sleep 4  
     firewallmenu 
      }  
      } 

 
#banhammer adds ip to halo online banlist and logs ban in ban hammer log
Function banhammer {
$localbanip = Read-Host -Prompt 'IP to ban' ; Add-Content .\banlist.txt "ip $localbanip"
$name = Read-Host -Prompt "Name"
$reason = Read-Host -Prompt "Reason USE _ for spaces" 
Add-Content .\BanHammer.log "$name banned for $reason ip:$localbanip $date"
Write-Host -ForegroundColor Green "$name has been swung by the ban hammer"
PAUSE
}    



#    Block all IP addresses listed in a text file using the Windows Firewall.
Function voipban {
   
param ($InputFile = 'Voipban.txt', $RuleName, $ProfileType = "any", $InterfaceType = "any", [Switch] $DeleteOnly)

$ipban = Read-Host -Prompt 'Enter IP to ban'; Add-Content .\Voipban.txt "$ipban"
$name = Read-Host -Prompt "Name"
$reason = Read-Host -Prompt "Reason USE _ for spaces" 
Add-Content .\BanHammer.log "$name VoIP Banned for $reason ip:$ipban $date"



# Look for some help arguments, show help, then quit.
if ($InputFile -match '/[?h]') { "`nPlease run 'get-help .\import-firewall-blocklist.ps1 -full' for help on PowerShell 2.0 and later, or just read the script's header in a text editor.`n" ; exit }  

# Get input file and set the name of the firewall rule.
$file = get-item $InputFile -ErrorAction SilentlyContinue # Sometimes rules will be deleted by name and there is no file.
if (-not $? -and -not $DeleteOnly) { "`nCannot find $InputFile, quitting...`n" ; exit } 
if (-not $rulename) { $rulename = $file.basename }  # The '-#1' will be appended later.

# Description will be seen in the properties of the firewall rules.
$description = "Rule created by script on $(get-date). Do not edit rule by hand, it will be overwritten when the script is run again. By default, the name of the rule is named after the input file."

# Any existing firewall rules which match the name are deleted every time the script runs.
"`nDeleting any inbound or outbound firewall rules named like '$rulename-#*'`n"
$currentrules = netsh.exe advfirewall firewall show rule name=all | select-string '^[Rule Name|Regelname]+:\s+(.+$)' | foreach { $_.matches[0].groups[1].value } 
if ($currentrules.count -lt 3) {"`nProblem getting a list of current firewall rules, quitting...`n" ; exit } 
# Note: If you are getting the above error, try editing the regex pattern two lines above to include the 'Rule Name' in your local language.
$currentrules | foreach { if ($_ -like "$rulename-#*"){ netsh.exe advfirewall firewall delete rule name="$_" | out-null } } 

# Don't create the firewall rules again if the -DeleteOnly switch was used.
if ($deleteonly -and $rulename) { "`nReminder: when deleting by name, leave off the '-#1' at the end of the rulename.`n" } 
if ($deleteonly) { exit } 

# Create array of IP ranges; any line that doesn't start like an IPv4/IPv6 address is ignored.
$ranges = get-content $file | where {($_.trim().length -ne 0) -and ($_ -match '^[0-9a-f]{1,4}[\.\:]')} 
if (-not $?) { "`nCould not parse $file, quitting...`n" ; exit } 
$linecount = $ranges.count
if ($linecount -eq 0) { "`nZero IP addresses to block, quitting...`n" ; exit } 

# Now start creating rules with hundreds of IP address ranges per rule.  Testing shows
# that netsh.exe errors begin to occur with more than 400 IPv4 ranges per rule, and 
# this number might still be too large when using IPv6 or the Start-to-End format, so 
# default to only 100 ranges per rule, but feel free to edit the following variable:
$MaxRangesPerRule = 100

$i = 1                     # Rule number counter, when more than one rule must be created, e.g., BlockList-#001.
$start = 1                 # For array slicing out of IP $ranges.
$end = $maxrangesperrule   # For array slicing out of IP $ranges.
do {
    $icount = $i.tostring().padleft(3,"0")  # Used in name of rule, e.g., BlockList-#042.
    
    if ($end -gt $linecount) {$end = $linecount} 
    $textranges = [System.String]::Join(",",$($ranges[$($start - 1)..$($end - 1)])) 

    "`nCreating an  inbound firewall rule named '$rulename-#$icount' for IP ranges $start - $end" 
    netsh.exe advfirewall firewall add rule name="$rulename-#$icount" dir=in action=block protocol=any localport=9987 localip=any remoteip="$textranges" description="$description" profile="$profiletype" interfacetype="$interfacetype"
    if (-not $?) { "`nFailed to create '$rulename-#$icount' inbound rule for some reason, continuing anyway..."}
    
    "`nCreating an outbound firewall rule named '$rulename-#$icount' for IP ranges $start - $end" 
    netsh.exe advfirewall firewall add rule name="$rulename-#$icount" dir=out action=block protocol=any localport=9987 localip=any remoteip="$textranges" description="$description" profile="$profiletype" interfacetype="$interfacetype"
    if (-not $?) { "`nFailed to create '$rulename-#$icount' outbound rule for some reason, continuing anyway..."}
    
    $i++
    $start += $maxrangesperrule
    $end += $maxrangesperrule
} while ($start -le $linecount)
   Write-Host -ForegroundColor Green "$name has been Muted"
   sleep 5
   mainmenu
}



 #firewall ban 
 function firewall {
 
####################################################################################
#.Synopsis 
#    Block all IP addresses listed in a text file using the Windows Firewall.



   
param ($InputFile = 'BlockList.txt', $RuleName, $ProfileType = "any", $InterfaceType = "any", [Switch] $DeleteOnly)

$ipban = Read-Host -Prompt 'Enter IP to ban'; Add-Content .\Blocklist.txt "$ipban"
$name = Read-Host -Prompt "Name"
$reason = Read-Host -Prompt "Reason USE _ for spaces" 
Add-Content .\BanHammer.log "$name banned via firewall for $reason ip:$ipban $date"




# Look for some help arguments, show help, then quit.
if ($InputFile -match '/[?h]') { "`nPlease run 'get-help .\import-firewall-blocklist.ps1 -full' for help on PowerShell 2.0 and later, or just read the script's header in a text editor.`n" ; exit }  

# Get input file and set the name of the firewall rule.
$file = get-item $InputFile -ErrorAction SilentlyContinue # Sometimes rules will be deleted by name and there is no file.
if (-not $? -and -not $DeleteOnly) { "`nCannot find $InputFile, quitting...`n" ; exit } 
if (-not $rulename) { $rulename = $file.basename }  # The '-#1' will be appended later.

# Description will be seen in the properties of the firewall rules.
$description = "Rule created by script on $(get-date). Do not edit rule by hand, it will be overwritten when the script is run again. By default, the name of the rule is named after the input file."

# Any existing firewall rules which match the name are deleted every time the script runs.
"`nDeleting any inbound or outbound firewall rules named like '$rulename-#*'`n"
$currentrules = netsh.exe advfirewall firewall show rule name=all | select-string '^[Rule Name|Regelname]+:\s+(.+$)' | foreach { $_.matches[0].groups[1].value } 
if ($currentrules.count -lt 3) {"`nProblem getting a list of current firewall rules, quitting...`n" ; exit } 
# Note: If you are getting the above error, try editing the regex pattern two lines above to include the 'Rule Name' in your local language.
$currentrules | foreach { if ($_ -like "$rulename-#*"){ netsh.exe advfirewall firewall delete rule name="$_" | out-null } } 

# Don't create the firewall rules again if the -DeleteOnly switch was used.
if ($deleteonly -and $rulename) { "`nReminder: when deleting by name, leave off the '-#1' at the end of the rulename.`n" } 
if ($deleteonly) { exit } 

# Create array of IP ranges; any line that doesn't start like an IPv4/IPv6 address is ignored.
$ranges = get-content $file | where {($_.trim().length -ne 0) -and ($_ -match '^[0-9a-f]{1,4}[\.\:]')} 
if (-not $?) { "`nCould not parse $file, quitting...`n" ; exit } 
$linecount = $ranges.count
if ($linecount -eq 0) { "`nZero IP addresses to block, quitting...`n" ; exit } 

# Now start creating rules with hundreds of IP address ranges per rule.  Testing shows
# that netsh.exe errors begin to occur with more than 400 IPv4 ranges per rule, and 
# this number might still be too large when using IPv6 or the Start-to-End format, so 
# default to only 100 ranges per rule, but feel free to edit the following variable:
$MaxRangesPerRule = 100

$i = 1                     # Rule number counter, when more than one rule must be created, e.g., BlockList-#001.
$start = 1                 # For array slicing out of IP $ranges.
$end = $maxrangesperrule   # For array slicing out of IP $ranges.
do {
    $icount = $i.tostring().padleft(3,"0")  # Used in name of rule, e.g., BlockList-#042.
    
    if ($end -gt $linecount) { $end = $linecount } 
    $textranges = [System.String]::Join(",",$($ranges[$($start - 1)..$($end - 1)])) 

    "`nCreating an  inbound firewall rule named '$rulename-#$icount' for IP ranges $start - $end" 
    netsh.exe advfirewall firewall add rule name="$rulename-#$icount" dir=in action=block localip=any remoteip="$textranges" description="$description" profile="$profiletype" interfacetype="$interfacetype"
    if (-not $?) { "`nFailed to create '$rulename-#$icount' inbound rule for some reason, continuing anyway..."}
    
    "`nCreating an outbound firewall rule named '$rulename-#$icount' for IP ranges $start - $end" 
    netsh.exe advfirewall firewall add rule name="$rulename-#$icount" dir=out action=block localip=any remoteip="$textranges" description="$description" profile="$profiletype" interfacetype="$interfacetype"
    if (-not $?) { "`nFailed to create '$rulename-#$icount' outbound rule for some reason, continuing anyway..."}
    
    $i++
    $start += $maxrangesperrule
    $end += $maxrangesperrule
} while ($start -le $linecount)
 Write-Host -ForegroundColor Green "$name has been swung by the ban hammer"
 sleep 5
 mainmenu
}
   
    sleep 2
                                                
 mainmenu 