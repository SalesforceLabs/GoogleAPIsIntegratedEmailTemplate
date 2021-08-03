global with sharing class  YoutubeDataPicklist extends VisualEditor.DynamicPickList{

    public VisualEditor.DynamicPickListRows myValues = new VisualEditor.DynamicPickListRows();
    
    public YoutubeDataPicklist() {
        String defaultHtml = '<div style="font-family:Tahoma;font-size:14px;"><h3>Select a Webinar</h3></div>';
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select a Webinar', defaultHtml);
        myValues.addRow(defaultValue);        
    }

    public override Boolean isValid(Object attributeValue){
        return true;
    }


    public override VisualEditor.DataRow getDefaultValue(){
        String defaultHtml = '<div style="font-family:Tahoma;font-size:14px;"><h3>Select a Webinar</h3></div>';
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select a Webinar', defaultHtml);
        return defaultValue;
        // return myValues.get(0);
    }

    public override VisualEditor.DynamicPickListRows getValues() {
        myValues = new VisualEditor.DynamicPickListRows();
        String json = null;
        try{
            HttpRequest req = new HttpRequest();            
            req.setEndpoint('callout:YoutubeDataAPI/liveBroadcasts?part=snippet%2CcontentDetails%2Cstatus&broadcastType=all&maxResults=30&mine=true');
            req.setMethod('GET');
            Http http = new Http();
            HTTPResponse res = http.send(req);
            json = res.getBody();

        }catch(Exception e){
            System.debug('Exception:GoToWebinarController:getWebinarList(): ' + e.getMessage());
        }

        
        
        YoutubeJsonResponse r = YoutubeJsonResponse.parse(json);
        String startDateTime = '';
        String startDate = '';
        String startTime = '';
        DateTime startDateTime1;

        for(YoutubeJsonResponse.Items w: r.items){    
            startDateTime = '';        
            if (w.status != null && w.status.lifeCycleStatus == 'ready') { 
                if (w.snippet != null && w.snippet.scheduledStartTime != null) {
                    startDate = w.snippet.scheduledStartTime;
                    startDate = startDate.substring(0,10);
                    startTime = w.snippet.scheduledStartTime;
                    startTime = startTime.substring(11,19);
                    startDateTime = startDate + ' ' + startTime;
                    startDateTime1 = DateTime.valueOf(startDateTime);
                }
                startDateTime = '<br/>Starts on ' + startDateTime1.format('MMM d, yyyy') + ' at ' + startDateTime1.format('h:mm a') + ' PST';
            }

            String webinarInfo = '<div style="font-family:Tahoma;font-size:14px;">' +
                    '<h3>' + w.snippet.title +'</h3>' + 
                    '<p > <a href="https://youtu.be/' + w.id + '"><img src="' + w.snippet.thumbnails.high.url + '" alt="Thumbnail" width="100%"></a>' +                    
                    'Link: <a href="https://youtu.be/' + w.id + '">https://youtu.be/' + w.id + '</a>' + startDateTime + 
                    '<br/></p></div>';   
            VisualEditor.DataRow value1 = new VisualEditor.DataRow(String.valueOf(w.snippet.title), webinarInfo);
            myValues.addRow(value1);
        }
        return myValues;
    }
}