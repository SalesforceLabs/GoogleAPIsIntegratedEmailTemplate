@isTest
private class CalendarEventPicklistTest {
    @isTest 
    static void testGetValues() {
        StaticResourceCalloutMock mock = new StaticResourceCalloutMock();
        mock.setStaticResource('GetMockCalendarEventsList');
        mock.setStatusCode(200);
        mock.setHeader('Content-Type', 'application/json;charset=UTF-8');
        Test.setMock(HttpCalloutMock.class, mock);
        
        CalendarEventPicklist calendarEventPicklist = new CalendarEventPicklist();

        VisualEditor.DynamicPickListRows testValues = new VisualEditor.DynamicPickListRows();
        String defaultHtml = '<div style="font-family:Tahoma;font-size:14px;"><h3>Select a meeting</h3></div>';
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow('Select a meeting', defaultHtml);
        testValues.addRow(defaultValue); 
        calendarEventPicklist.myValues = testValues;
        
        VisualEditor.DynamicPickListRows result = calendarEventPicklist.getValues();
        System.assertNotEquals(null, result, 'The callout returned a null response.');
    }   

    @isTest 
    static void testGetDefaultValue() {
        CalendarEventPicklist calendarEventPicklist = new CalendarEventPicklist();
        VisualEditor.DataRow defaultValue = calendarEventPicklist.getDefaultValue();
        System.assertNotEquals(null, defaultValue, 'The callout returned a null response.');
    } 
}