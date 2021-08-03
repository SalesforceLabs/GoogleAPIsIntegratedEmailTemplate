@IsTest
public class CalendarJsonResponseTest {
	
	static testMethod void testParse() {
		String json = '{'+
		' \"kind\": \"calendar#calendarList\",'+
		' \"etag\": \"\\\"p33odhu7fs26f40g\\\"\",'+
		' \"nextSyncToken\": \"CPDY-O_gjPICEhViaXN3YXNhdmVla0BnbWFpbC5jb20=\",'+
		' \"items\": ['+
		'  {'+
		'   \"kind\": \"calendar#calendarListEntry\",'+
		'   \"etag\": \"\\\"1573422113224000\\\"\",'+
		'   \"id\": \"biswasaveek@gmail.com\",'+
		'   \"summary\": \"biswasaveek@gmail.com\",'+
		'   \"timeZone\": \"America/Los_Angeles\",'+
		'   \"colorId\": \"17\",'+
		'   \"backgroundColor\": \"#9a9cff\",'+
		'   \"foregroundColor\": \"#000000\",'+
		'   \"selected\": true,'+
		'   \"accessRole\": \"owner\",'+
		'   \"defaultReminders\": ['+
		'    {'+
		'     \"method\": \"popup\",'+
		'     \"minutes\": 30'+
		'    },'+
		'    {'+
		'     \"method\": \"email\",'+
		'     \"minutes\": 30'+
		'    }'+
		'   ],'+
		'   \"notificationSettings\": {'+
		'    \"notifications\": ['+
		'     {'+
		'      \"type\": \"eventCreation\",'+
		'      \"method\": \"email\"'+
		'     },'+
		'     {'+
		'      \"type\": \"eventChange\",'+
		'      \"method\": \"email\"'+
		'     },'+
		'     {'+
		'      \"type\": \"eventCancellation\",'+
		'      \"method\": \"email\"'+
		'     },'+
		'     {'+
		'      \"type\": \"eventResponse\",'+
		'      \"method\": \"email\"'+
		'     }'+
		'    ]'+
		'   },'+
		'   \"primary\": true,'+
		'   \"conferenceProperties\": {'+
		'    \"allowedConferenceSolutionTypes\": ['+
		'     \"hangoutsMeet\"'+
		'    ]'+
		'   }'+
		'  },'+
		'  {'+
		'   \"kind\": \"calendar#calendarListEntry\",'+
		'   \"etag\": \"\\\"1627715530534000\\\"\",'+
		'   \"id\": \"cvfu5m0h7o2cg2gopkir3m4bpc@group.calendar.google.com\",'+
		'   \"summary\": \"Contest calendar\",'+
		'   \"timeZone\": \"America/Los_Angeles\",'+
		'   \"colorId\": \"18\",'+
		'   \"backgroundColor\": \"#b99aff\",'+
		'   \"foregroundColor\": \"#000000\",'+
		'   \"selected\": true,'+
		'   \"accessRole\": \"owner\",'+
		'   \"defaultReminders\": [],'+
		'   \"conferenceProperties\": {'+
		'    \"allowedConferenceSolutionTypes\": ['+
		'     \"hangoutsMeet\"'+
		'    ]'+
		'   }'+
		'  }'+
		' ]'+
		'}';
		CalendarJsonResponse obj = CalendarJsonResponse.parse(json);
		System.assert(obj != null);
	}
}