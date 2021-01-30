# Active-Directory
Active Directory is one of the most common uses for PowerShell. I have personally been building Active Directory scripts using VBScript and PowerShell for over a decade. Here’s a big sample of Active Directory PowerShell scripts to do all kinds of stuff!

All of the Active Directory scripts I’ll be listing here are in various stages of functionality. The point of this post isn’t to give you 100% tested, pristine scripts but rather give you a jumpstart on creating some of your own.

All of the scripts listed here are Active Directory PowerShell scripts. You can script things in Active Directory but if you’ve noticed, PowerShell is sorta my thing. Enjoy!

Table of Contents

Active Directory SPNs
User Accounts
Active Directory Groups
GPOs
DNS
Active Directory Troubleshooting
Organizational Units
Computer Accounts
Summary
Active Directory SPNs
ActiveDirectorySPN PowerShell script
This is a PowerShell module that allows you to create, change, and remove Active Directory SPNs using commands like Get-AdUserSpn, Remove-AdComputerSpn and so on. This module is handy so you don’t have to remember how to use Set-AdUser to change SPNs.
User Accounts
Bulk-AD-User-Creation.ps1
Here’s an example of how to create Active Directory users in bulk by reading from a text file.
Copy-AD-User-Account.ps1
Do you use template user accounts that you need to build other accounts from? Look no further! This script copies attributes from a user account and also all group memberships to create a new AD user.
FindUnusedUserAccounts.ps1
Use this script to find Active Directory user accounts that aren’t used anymore and remove them. This script also create a CSV log file.
Get-ActiveDirectoryUserActivity.ps1
This script finds all logon and logoff times of all users on all computers in an Active Directory organizational unit. The appropriate audit policies must be enabled first because the appropriate event IDs will show up.
Get-AdUserMatches.ps1
You’ve got a CSV file full of employee names and need to find their AD user accounts, however, nothing ever matches up 100%. Use this script to find AD user accounts from a CSV file and also get an example of using “fuzzy” searching.
Get-All-Docs-Password-Age.ps1
Here’s a great example of how to pull the user account password age from lots of AD users at once.
Get-Inactive-Ad-Users.ps1
Another example of how to pull employee information from a CSV and find their AD user accounts. This script was used to find inactive accounts.
Get-LoggedOnUser.ps1
Although not technically AD-related, the function in this script queries CIM on the local or a remote computer and returns the user (local or Active Directory) that is currently logged on.
GetAdUsersWithPasswordLastSetOlderThan.ps1
Here’s another older script I built to find AD users that set their password a certain time ago.
GetPasswordResetCountXDaysOld.ps1
Use the code in this script to find all AD users that have set their password. There’s some overlap between this one and GetAdUserWithPasswordLastSetOlderThan.ps1.
JEA-PSWA-ActiveDirectory-User-Admin.ps1
I remember this one! This was a script that took forever that allows you to delegate AD change responsibilities to other users. This was used to delegate HR access to create and change AD users.
New-AdUserProvision.ps1
This an example of a script that covers all the bases. This script does everything from create the user account, assign groups, add to the appropriate OU and even creates a home folder!
Get-UserLogonSessionHistory.ps1
This script finds all logon, logoff and total active session times of all users on all computers specified. For this script to function as expected, the advanced AD policies; Audit Logon, Audit Logoff and Audit Other Logon/Logoff Events must be enabled and targeted to the appropriate computers via GPO.
Active Directory Groups
Get-AdGroupMembershipChange.ps1
This script queries multiple Active Directory groups for new members in a domain. It records group membership in a CSV file in the same location as the script is located. On the script’s initial run it will simply record all members of all groups into this CSV file. On subsequent runs it will query each group’s member list and compare that list to what’s in the CSV file. If any differences are found (added or removed) the script will update the CSV file to reflect current memberships and notify an administrator of which members were either added or removed.
Get-EmptyGroup.ps1
This function queries the Active Directory domain the initiating computer is in for all groups that have no members. This is common when attempting to find groups that can be removed. This does not include default AD groups like Domain Computers, Domain Users, etc.
New-AdGroupMembershipMonitor.ps1
I liked writing this script because it was a foray into security. This script actively monitors an Active Directory group for any membership changes. If any members are added or removed, it can notify you.
