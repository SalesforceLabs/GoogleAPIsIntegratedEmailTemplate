@isTest
private class YoutubeDataPicklistTest {
    @isTest 
    static void testGetValues() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetYoutubeLiveWebinarsList');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);

        YoutubeDataPicklist youtubeDataPicklist = new YoutubeDataPicklist();

        VisualEditor.DynamicPickListRows testValues = new VisualEditor.DynamicPickListRows();
        String defaultHtml = '<div style="font-family:Tahoma;font-size:14px;"><h3>Select a Webinar</h3></div>';
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select a Webinar', defaultHtml);
        testValues.addRow(defaultValue); 
        youtubeDataPicklist.myValues = testValues;

        VisualEditor.DynamicPickListRows result = youtubeDataPicklist.getValues();

        System.assertNotEquals(null, result, 'The callout returned a null response.');
    }    

    @isTest 
    static void testGetDefaultValue() {
        YoutubeDataPicklist youtubeDataPicklist = new YoutubeDataPicklist();
        
        VisualEditor.DynamicPickListRows testValues = new VisualEditor.DynamicPickListRows();
        String defaultHtml = '<div style="font-family:Tahoma;font-size:14px;"><h3>Select a Webinar</h3></div>';
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select a Webinar', defaultHtml);
        testValues.addRow(defaultValue); 
        youtubeDataPicklist.myValues = testValues;

        VisualEditor.DataRow result = youtubeDataPicklist.getDefaultValue();

        System.assertNotEquals(null, result, 'The callout returned a null response.');
    } 
}