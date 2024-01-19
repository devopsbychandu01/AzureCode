# all events
SecurityEvent
| count

# get 50 events
SecurityEvent
| take 50

# with time generated
SecurityEvent
| where TimeGenerated >= ago(1d)

# with time generated 1 min
SecurityEvent
| where TimeGenerated >= ago(1m)

# with time generated last 15 min
SecurityEvent
| where TimeGenerated >= now(-15m)

# events with projected values
SecurityEvent
| where TimeGenerated >= now(-15m)
| project TimeGenerated, Account, computer, EventID, Activity, IpAddress

## specific to a event
SecurityEvent
| where TimeGenerated >= now(-15m)
| where EventID == 1234
| project TimeGenerated, Account, computer, EventID, Activity, IpAddress