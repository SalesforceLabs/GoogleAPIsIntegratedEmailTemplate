public with sharing class YoutubeJsonResponse {

	public class Status {
		public String lifeCycleStatus {get;set;} 
		public String privacyStatus {get;set;} 
		public String recordingStatus {get;set;} 
		public Boolean madeForKids {get;set;} 
		public Boolean selfDeclaredMadeForKids {get;set;} 

		public Status(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'lifeCycleStatus') {
							lifeCycleStatus = parser.getText();
						} else if (text == 'privacyStatus') {
							privacyStatus = parser.getText();
						} else if (text == 'recordingStatus') {
							recordingStatus = parser.getText();
						} else if (text == 'madeForKids') {
							madeForKids = parser.getBooleanValue();
						} else if (text == 'selfDeclaredMadeForKids') {
							selfDeclaredMadeForKids = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Status consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Snippet_Z {
		public String publishedAt {get;set;} 
		public String channelId {get;set;} 
		public String title {get;set;} 
		public String description {get;set;} 
		public Thumbnails thumbnails {get;set;} 
		public String scheduledStartTime {get;set;} 
		public Boolean isDefaultBroadcast {get;set;} 
		public String liveChatId {get;set;} 

		public Snippet_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'publishedAt') {
							publishedAt = parser.getText();
						} else if (text == 'channelId') {
							channelId = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'description') {
							description = parser.getText();
						} else if (text == 'thumbnails') {
							thumbnails = new Thumbnails(parser);
						} else if (text == 'scheduledStartTime') {
							scheduledStartTime = parser.getText();
						} else if (text == 'isDefaultBroadcast') {
							isDefaultBroadcast = parser.getBooleanValue();
						} else if (text == 'liveChatId') {
							liveChatId = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Snippet_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class MonitorStream {
		public Boolean enableMonitorStream {get;set;} 

		public MonitorStream(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'enableMonitorStream') {
							enableMonitorStream = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'MonitorStream consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public String kind {get;set;} 
	public String etag {get;set;} 
	public PageInfo pageInfo {get;set;} 
	public List<Items> items {get;set;} 

	public YoutubeJsonResponse(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'kind') {
						kind = parser.getText();
					} else if (text == 'etag') {
						etag = parser.getText();
					} else if (text == 'pageInfo') {
						pageInfo = new PageInfo(parser);
					} else if (text == 'items') {
						items = arrayOfItems(parser);
					} else {
						System.debug(LoggingLevel.WARN, 'YoutubeJsonResponse consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class ContentDetails {
		public String boundStreamId {get;set;} 
		public String boundStreamLastUpdateTimeMs {get;set;} 
		public MonitorStream monitorStream {get;set;} 
		public Boolean enableEmbed {get;set;} 
		public Boolean enableDvr {get;set;} 
		public Boolean enableContentEncryption {get;set;} 
		public Boolean startWithSlate {get;set;} 
		public Boolean recordFromStart {get;set;} 
		public Boolean enableClosedCaptions {get;set;} 
		public String closedCaptionsType {get;set;} 
		public Boolean enableLowLatency {get;set;} 
		public String latencyPreference {get;set;} 
		public String projection {get;set;} 
		public Boolean enableAutoStart {get;set;} 
		public Boolean enableAutoStop {get;set;} 

		public ContentDetails(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'boundStreamId') {
							boundStreamId = parser.getText();
						} else if (text == 'boundStreamLastUpdateTimeMs') {
							boundStreamLastUpdateTimeMs = parser.getText();
						} else if (text == 'monitorStream') {
							monitorStream = new MonitorStream(parser);
						} else if (text == 'enableEmbed') {
							enableEmbed = parser.getBooleanValue();
						} else if (text == 'enableDvr') {
							enableDvr = parser.getBooleanValue();
						} else if (text == 'enableContentEncryption') {
							enableContentEncryption = parser.getBooleanValue();
						} else if (text == 'startWithSlate') {
							startWithSlate = parser.getBooleanValue();
						} else if (text == 'recordFromStart') {
							recordFromStart = parser.getBooleanValue();
						} else if (text == 'enableClosedCaptions') {
							enableClosedCaptions = parser.getBooleanValue();
						} else if (text == 'closedCaptionsType') {
							closedCaptionsType = parser.getText();
						} else if (text == 'enableLowLatency') {
							enableLowLatency = parser.getBooleanValue();
						} else if (text == 'latencyPreference') {
							latencyPreference = parser.getText();
						} else if (text == 'projection') {
							projection = parser.getText();
						} else if (text == 'enableAutoStart') {
							enableAutoStart = parser.getBooleanValue();
						} else if (text == 'enableAutoStop') {
							enableAutoStop = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'ContentDetails consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Thumbnails {
		public Default_Z default_Z {get;set;} // in json: default
		public Default_Z medium {get;set;} 
		public Default_Z high {get;set;} 
		public Default_Z standard {get;set;} 
		public Default_Z maxres {get;set;} 

		public Thumbnails(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'default') {
							default_Z = new Default_Z(parser);
						} else if (text == 'medium') {
							medium = new Default_Z(parser);
						} else if (text == 'high') {
							high = new Default_Z(parser);
						} else if (text == 'standard') {
							standard = new Default_Z(parser);
						} else if (text == 'maxres') {
							maxres = new Default_Z(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Thumbnails consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class MonitorStream_Z {
		public Boolean enableMonitorStream {get;set;} 
		public Integer broadcastStreamDelayMs {get;set;} 
		public String embedHtml {get;set;} 

		public MonitorStream_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'enableMonitorStream') {
							enableMonitorStream = parser.getBooleanValue();
						} else if (text == 'broadcastStreamDelayMs') {
							broadcastStreamDelayMs = parser.getIntegerValue();
						} else if (text == 'embedHtml') {
							embedHtml = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'MonitorStream_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Snippet {
		public String publishedAt {get;set;} 
		public String channelId {get;set;} 
		public String title {get;set;} 
		public String description {get;set;} 
		public Thumbnails thumbnails {get;set;} 
		public String scheduledStartTime {get;set;} 
		public String actualStartTime {get;set;} 
		public String actualEndTime {get;set;} 
		public Boolean isDefaultBroadcast {get;set;} 
		public String liveChatId {get;set;} 

		public Snippet(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'publishedAt') {
							publishedAt = parser.getText();
						} else if (text == 'channelId') {
							channelId = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'description') {
							description = parser.getText();
						} else if (text == 'thumbnails') {
							thumbnails = new Thumbnails(parser);
						} else if (text == 'scheduledStartTime') {
							scheduledStartTime = parser.getText();
						} else if (text == 'actualStartTime') {
							actualStartTime = parser.getText();
						} else if (text == 'actualEndTime') {
							actualEndTime = parser.getText();
						} else if (text == 'isDefaultBroadcast') {
							isDefaultBroadcast = parser.getBooleanValue();
						} else if (text == 'liveChatId') {
							liveChatId = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Snippet consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Snippet_Y {
		public String publishedAt {get;set;} 
		public String channelId {get;set;} 
		public String title {get;set;} 
		public String description {get;set;} 
		public Thumbnails thumbnails {get;set;} 
		public Boolean isDefaultBroadcast {get;set;} 
		public String liveChatId {get;set;} 

		public Snippet_Y(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'publishedAt') {
							publishedAt = parser.getText();
						} else if (text == 'channelId') {
							channelId = parser.getText();
						} else if (text == 'title') {
							title = parser.getText();
						} else if (text == 'description') {
							description = parser.getText();
						} else if (text == 'thumbnails') {
							thumbnails = new Thumbnails(parser);
						} else if (text == 'isDefaultBroadcast') {
							isDefaultBroadcast = parser.getBooleanValue();
						} else if (text == 'liveChatId') {
							liveChatId = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Snippet_Y consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class ContentDetails_Z {
		public String boundStreamId {get;set;} 
		public String boundStreamLastUpdateTimeMs {get;set;} 
		public MonitorStream_Z monitorStream {get;set;} 
		public Boolean enableEmbed {get;set;} 
		public Boolean enableDvr {get;set;} 
		public Boolean enableContentEncryption {get;set;} 
		public Boolean startWithSlate {get;set;} 
		public Boolean recordFromStart {get;set;} 
		public Boolean enableClosedCaptions {get;set;} 
		public String closedCaptionsType {get;set;} 
		public Boolean enableLowLatency {get;set;} 
		public String latencyPreference {get;set;} 
		public String projection {get;set;} 
		public Boolean enableAutoStart {get;set;} 
		public Boolean enableAutoStop {get;set;} 

		public ContentDetails_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'boundStreamId') {
							boundStreamId = parser.getText();
						} else if (text == 'boundStreamLastUpdateTimeMs') {
							boundStreamLastUpdateTimeMs = parser.getText();
						} else if (text == 'monitorStream') {
							monitorStream = new MonitorStream_Z(parser);
						} else if (text == 'enableEmbed') {
							enableEmbed = parser.getBooleanValue();
						} else if (text == 'enableDvr') {
							enableDvr = parser.getBooleanValue();
						} else if (text == 'enableContentEncryption') {
							enableContentEncryption = parser.getBooleanValue();
						} else if (text == 'startWithSlate') {
							startWithSlate = parser.getBooleanValue();
						} else if (text == 'recordFromStart') {
							recordFromStart = parser.getBooleanValue();
						} else if (text == 'enableClosedCaptions') {
							enableClosedCaptions = parser.getBooleanValue();
						} else if (text == 'closedCaptionsType') {
							closedCaptionsType = parser.getText();
						} else if (text == 'enableLowLatency') {
							enableLowLatency = parser.getBooleanValue();
						} else if (text == 'latencyPreference') {
							latencyPreference = parser.getText();
						} else if (text == 'projection') {
							projection = parser.getText();
						} else if (text == 'enableAutoStart') {
							enableAutoStart = parser.getBooleanValue();
						} else if (text == 'enableAutoStop') {
							enableAutoStop = parser.getBooleanValue();
						} else {
							System.debug(LoggingLevel.WARN, 'ContentDetails_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class PageInfo {
		public Integer totalResults {get;set;} 
		public Integer resultsPerPage {get;set;} 

		public PageInfo(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'totalResults') {
							totalResults = parser.getIntegerValue();
						} else if (text == 'resultsPerPage') {
							resultsPerPage = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'PageInfo consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Default_Z {
		public String url {get;set;} 
		public Integer width {get;set;} 
		public Integer height {get;set;} 

		public Default_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'url') {
							url = parser.getText();
						} else if (text == 'width') {
							width = parser.getIntegerValue();
						} else if (text == 'height') {
							height = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Default_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Items {
		public String kind {get;set;} 
		public String etag {get;set;} 
		public String id {get;set;} 
		public Snippet snippet {get;set;} 
		public Status status {get;set;} 
		public ContentDetails contentDetails {get;set;} 

		public Items(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'kind') {
							kind = parser.getText();
						} else if (text == 'etag') {
							etag = parser.getText();
						} else if (text == 'id') {
							id = parser.getText();
						} else if (text == 'snippet') {
							snippet = new Snippet(parser);
						} else if (text == 'status') {
							status = new Status(parser);
						} else if (text == 'contentDetails') {
							contentDetails = new ContentDetails(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Items consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public static YoutubeJsonResponse parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new YoutubeJsonResponse(parser);
	}
	
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}
	
    private static List<Items> arrayOfItems(System.JSONParser p) {
        List<Items> res = new List<Items>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Items(p));
        }
        return res;
    }
}