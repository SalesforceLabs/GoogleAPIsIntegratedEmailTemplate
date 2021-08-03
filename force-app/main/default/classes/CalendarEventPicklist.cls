global with sharing class  CalendarEventPicklist extends VisualEditor.DynamicPickList{
    
    global VisualEditor.DynamicPickListRows myValues = new VisualEditor.DynamicPickListRows();
    global override Boolean isValid(Object attributeValue){
        return true;
    }

    global override VisualEditor.DataRow getDefaultValue(){
        String defaultHtml = '<div style="font-family:Tahoma;font-size:14px;"><h3>Select a Calendar event</h3></div>';
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select a calendar event', defaultHtml);
        return defaultValue;
    }

    global override VisualEditor.DynamicPickListRows getValues() {
        String CALENDAR_PREFIX = '[PUBLIC_CALENDAR]';
        String calendarListString = null;
        String json = null;        
        try{
            HttpRequest req = new HttpRequest();
            req.setEndpoint('callout:GoogleCalendarAPI/users/me/calendarList');
            req.setMethod('GET');
            Http http = new Http();
            HTTPResponse res = http.send(req);
            calendarListString = res.getBody();
            CalendarJsonResponse calendarListJson = CalendarJsonResponse.parse(calendarListString);
            String calendarName = '';
            for(CalendarJsonResponse.Items item: calendarListJson.items){
                calendarName = item.summary;
                if(calendarName.startsWithIgnoreCase(CALENDAR_PREFIX)) {
                    req.setEndpoint('callout:GoogleCalendarAPI/calendars/' + item.id + '/events');
                    req.setMethod('GET');
                    http = new Http();
                    res = http.send(req);
                    json = res.getBody();
                    break;
                }                
            }
        } catch(Exception e){
            System.debug('Exception:GoToWebinarController:getWebinarList(): ' + e.getMessage());
        }
        
        
        CalendarEventsJsonResponse r = CalendarEventsJsonResponse.parse(json);
        String startDateTimeStr = '';
        DateTime startDateTime;
        String endDateTimeStr = '';
        DateTime endDateTime;
        String eventTimeInfo = '';
        
        CalendarEventsJsonResponse.Start temp;
        for(CalendarEventsJsonResponse.Items w: r.items){ 
            startDateTimeStr = w.start.datetime_Z;
            startDateTime = DateTime.valueOf(startDateTimeStr.substring(0,10) + ' ' + startDateTimeStr.substring(11,19));
            endDateTimeStr = w.end_Z.datetime_Z;
            endDateTime = DateTime.valueOf(endDateTimeStr.substring(0,10) + ' ' + endDateTimeStr.substring(11,19));
            
            eventTimeInfo = 'Start: ' + startDateTime.format('MMM d, yyyy') + '   ' + startDateTime.format('h:mm a') + ' PST';
            eventTimeInfo += '<br/>End: ' + endDateTime.format('MMM d, yyyy') + '  ' + endDateTime.format('h:mm a') + ' PST';

            String eventInfo = '<div style="font-family:Tahoma;font-size:14px;">' +
                    '<h4>' + w.summary +'</h4>' + 
                    '<p >' + eventTimeInfo +
                    '<br/><a href="' + w.htmlLink + '">Add this event to your Google calendar</a>' + 
                    '<br/></p></div>';   

            VisualEditor.DataRow value1 = new VisualEditor.DataRow(String.valueOf(w.summary), eventInfo);
            myValues.addRow(value1);
        }                    
        return myValues;
    }
}