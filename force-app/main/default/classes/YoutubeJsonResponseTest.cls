@IsTest
public class YoutubeJsonResponseTest {
	
	// This test method should give 100% coverage
	static testMethod void testParse() {
		String json = '{'+
		'  \"kind\": \"youtube#liveBroadcastListResponse\",'+
		'  \"etag\": \"LeL4vNkocfQaXLgSag4yf_fpk6c\",'+
		'  \"pageInfo\": {'+
		'    \"totalResults\": 4,'+
		'    \"resultsPerPage\": 5'+
		'  },'+
		'  \"items\": ['+
		'    {'+
		'      \"kind\": \"youtube#liveBroadcast\",'+
		'      \"etag\": \"_vhFPLjxFz2Mb1siHrxgfNNDPnU\",'+
		'      \"id\": \"xCQZkCLPgEg\",'+
		'      \"snippet\": {'+
		'        \"publishedAt\": \"2021-07-27T08:12:29Z\",'+
		'        \"channelId\": \"UC3ApyuB7tVNZTIfhRR0Tahg\",'+
		'        \"title\": \"Test1\",'+
		'        \"description\": \"\",'+
		'        \"thumbnails\": {'+
		'          \"default\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/xCQZkCLPgEg/default.jpg\",'+
		'            \"width\": 120,'+
		'            \"height\": 90'+
		'          },'+
		'          \"medium\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/xCQZkCLPgEg/mqdefault.jpg\",'+
		'            \"width\": 320,'+
		'            \"height\": 180'+
		'          },'+
		'          \"high\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/xCQZkCLPgEg/hqdefault.jpg\",'+
		'            \"width\": 480,'+
		'            \"height\": 360'+
		'          },'+
		'          \"standard\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/xCQZkCLPgEg/sddefault.jpg\",'+
		'            \"width\": 640,'+
		'            \"height\": 480'+
		'          },'+
		'          \"maxres\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/xCQZkCLPgEg/maxresdefault.jpg\",'+
		'            \"width\": 1280,'+
		'            \"height\": 720'+
		'          }'+
		'        },'+
		'        \"scheduledStartTime\": \"2021-08-12T16:50:00Z\",'+
		'        \"actualStartTime\": \"2021-07-27T08:17:32Z\",'+
		'        \"actualEndTime\": \"2021-07-27T08:17:57Z\",'+
		'        \"isDefaultBroadcast\": false,'+
		'        \"liveChatId\": \"KicKGFVDM0FweXVCN3RWTlpUSWZoUlIwVGFoZxILeENRWmtDTFBnRWc\"'+
		'      },'+
		'      \"status\": {'+
		'        \"lifeCycleStatus\": \"complete\",'+
		'        \"privacyStatus\": \"unlisted\",'+
		'        \"recordingStatus\": \"recorded\",'+
		'        \"madeForKids\": true,'+
		'        \"selfDeclaredMadeForKids\": true'+
		'      },'+
		'      \"contentDetails\": {'+
		'        \"boundStreamId\": \"3ApyuB7tVNZTIfhRR0Tahg1627373550723410\",'+
		'        \"boundStreamLastUpdateTimeMs\": \"2021-07-27T08:18:07Z\",'+
		'        \"monitorStream\": {'+
		'          \"enableMonitorStream\": false'+
		'        },'+
		'        \"enableEmbed\": true,'+
		'        \"enableDvr\": true,'+
		'        \"enableContentEncryption\": false,'+
		'        \"startWithSlate\": false,'+
		'        \"recordFromStart\": true,'+
		'        \"enableClosedCaptions\": false,'+
		'        \"closedCaptionsType\": \"closedCaptionsDisabled\",'+
		'        \"enableLowLatency\": false,'+
		'        \"latencyPreference\": \"ultraLow\",'+
		'        \"projection\": \"rectangular\",'+
		'        \"enableAutoStart\": false,'+
		'        \"enableAutoStop\": false'+
		'      }'+
		'    },'+
		'    {'+
		'      \"kind\": \"youtube#liveBroadcast\",'+
		'      \"etag\": \"0r_UHAjmBILcLndEzg9O1tBjEYY\",'+
		'      \"id\": \"BRCtGIajFdU\",'+
		'      \"snippet\": {'+
		'        \"publishedAt\": \"2021-07-27T08:29:56Z\",'+
		'        \"channelId\": \"UC3ApyuB7tVNZTIfhRR0Tahg\",'+
		'        \"title\": \"Test3\",'+
		'        \"description\": \"2nd demo webinar\",'+
		'        \"thumbnails\": {'+
		'          \"default\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/BRCtGIajFdU/default.jpg\",'+
		'            \"width\": 120,'+
		'            \"height\": 90'+
		'          },'+
		'          \"medium\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/BRCtGIajFdU/mqdefault.jpg\",'+
		'            \"width\": 320,'+
		'            \"height\": 180'+
		'          },'+
		'          \"high\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/BRCtGIajFdU/hqdefault.jpg\",'+
		'            \"width\": 480,'+
		'            \"height\": 360'+
		'          },'+
		'          \"standard\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/BRCtGIajFdU/sddefault.jpg\",'+
		'            \"width\": 640,'+
		'            \"height\": 480'+
		'          },'+
		'          \"maxres\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/BRCtGIajFdU/maxresdefault.jpg\",'+
		'            \"width\": 1280,'+
		'            \"height\": 720'+
		'          }'+
		'        },'+
		'        \"scheduledStartTime\": \"2021-08-06T16:05:00Z\",'+
		'        \"actualStartTime\": \"2021-07-27T08:31:34Z\",'+
		'        \"actualEndTime\": \"2021-07-27T08:31:57Z\",'+
		'        \"isDefaultBroadcast\": false,'+
		'        \"liveChatId\": \"KicKGFVDM0FweXVCN3RWTlpUSWZoUlIwVGFoZxILQlJDdEdJYWpGZFU\"'+
		'      },'+
		'      \"status\": {'+
		'        \"lifeCycleStatus\": \"complete\",'+
		'        \"privacyStatus\": \"unlisted\",'+
		'        \"recordingStatus\": \"recorded\",'+
		'        \"madeForKids\": true,'+
		'        \"selfDeclaredMadeForKids\": true'+
		'      },'+
		'      \"contentDetails\": {'+
		'        \"boundStreamId\": \"3ApyuB7tVNZTIfhRR0Tahg1627374597803135\",'+
		'        \"boundStreamLastUpdateTimeMs\": \"2021-07-27T08:32:08Z\",'+
		'        \"monitorStream\": {'+
		'          \"enableMonitorStream\": false'+
		'        },'+
		'        \"enableEmbed\": true,'+
		'        \"enableDvr\": true,'+
		'        \"enableContentEncryption\": false,'+
		'        \"startWithSlate\": false,'+
		'        \"recordFromStart\": true,'+
		'        \"enableClosedCaptions\": false,'+
		'        \"closedCaptionsType\": \"closedCaptionsDisabled\",'+
		'        \"enableLowLatency\": false,'+
		'        \"latencyPreference\": \"ultraLow\",'+
		'        \"projection\": \"rectangular\",'+
		'        \"enableAutoStart\": false,'+
		'        \"enableAutoStop\": false'+
		'      }'+
		'    },'+
		'    {'+
		'      \"kind\": \"youtube#liveBroadcast\",'+
		'      \"etag\": \"-xkWnN0UY4xf58shZBN9gkxsRTk\",'+
		'      \"id\": \"tIeJ4q0g8Is\",'+
		'      \"snippet\": {'+
		'        \"publishedAt\": \"2021-07-27T08:28:45Z\",'+
		'        \"channelId\": \"UC3ApyuB7tVNZTIfhRR0Tahg\",'+
		'        \"title\": \"Test2\",'+
		'        \"description\": \"\",'+
		'        \"thumbnails\": {'+
		'          \"default\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/tIeJ4q0g8Is/default_live.jpg\",'+
		'            \"width\": 120,'+
		'            \"height\": 90'+
		'          },'+
		'          \"medium\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/tIeJ4q0g8Is/mqdefault_live.jpg\",'+
		'            \"width\": 320,'+
		'            \"height\": 180'+
		'          },'+
		'          \"high\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/tIeJ4q0g8Is/hqdefault_live.jpg\",'+
		'            \"width\": 480,'+
		'            \"height\": 360'+
		'          },'+
		'          \"standard\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/tIeJ4q0g8Is/sddefault_live.jpg\",'+
		'            \"width\": 640,'+
		'            \"height\": 480'+
		'          },'+
		'          \"maxres\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/tIeJ4q0g8Is/maxresdefault_live.jpg\",'+
		'            \"width\": 1280,'+
		'            \"height\": 720'+
		'          }'+
		'        },'+
		'        \"scheduledStartTime\": \"2021-08-04T15:45:00Z\",'+
		'        \"isDefaultBroadcast\": false,'+
		'        \"liveChatId\": \"KicKGFVDM0FweXVCN3RWTlpUSWZoUlIwVGFoZxILdEllSjRxMGc4SXM\"'+
		'      },'+
		'      \"status\": {'+
		'        \"lifeCycleStatus\": \"ready\",'+
		'        \"privacyStatus\": \"unlisted\",'+
		'        \"recordingStatus\": \"notRecording\",'+
		'        \"madeForKids\": true,'+
		'        \"selfDeclaredMadeForKids\": true'+
		'      },'+
		'      \"contentDetails\": {'+
		'        \"boundStreamId\": \"3ApyuB7tVNZTIfhRR0Tahg1627374525803884\",'+
		'        \"boundStreamLastUpdateTimeMs\": \"2021-07-27T08:28:46Z\",'+
		'        \"monitorStream\": {'+
		'          \"enableMonitorStream\": false'+
		'        },'+
		'        \"enableEmbed\": true,'+
		'        \"enableDvr\": true,'+
		'        \"enableContentEncryption\": false,'+
		'        \"startWithSlate\": false,'+
		'        \"recordFromStart\": true,'+
		'        \"enableClosedCaptions\": false,'+
		'        \"closedCaptionsType\": \"closedCaptionsDisabled\",'+
		'        \"enableLowLatency\": false,'+
		'        \"latencyPreference\": \"ultraLow\",'+
		'        \"projection\": \"rectangular\",'+
		'        \"enableAutoStart\": false,'+
		'        \"enableAutoStop\": false'+
		'      }'+
		'    },'+
		'    {'+
		'      \"kind\": \"youtube#liveBroadcast\",'+
		'      \"etag\": \"S_rXuPfQ-7zZPc1M9P5oTRMGvVg\",'+
		'      \"id\": \"YveE73KVUs8\",'+
		'      \"snippet\": {'+
		'        \"publishedAt\": \"2021-07-27T08:29:18Z\",'+
		'        \"channelId\": \"UC3ApyuB7tVNZTIfhRR0Tahg\",'+
		'        \"title\": \"Aveek Biswas Live Stream\",'+
		'        \"description\": \"\",'+
		'        \"thumbnails\": {'+
		'          \"default\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/YveE73KVUs8/default_live.jpg\",'+
		'            \"width\": 120,'+
		'            \"height\": 90'+
		'          },'+
		'          \"medium\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/YveE73KVUs8/mqdefault_live.jpg\",'+
		'            \"width\": 320,'+
		'            \"height\": 180'+
		'          },'+
		'          \"high\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/YveE73KVUs8/hqdefault_live.jpg\",'+
		'            \"width\": 480,'+
		'            \"height\": 360'+
		'          },'+
		'          \"standard\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/YveE73KVUs8/sddefault_live.jpg\",'+
		'            \"width\": 640,'+
		'            \"height\": 480'+
		'          },'+
		'          \"maxres\": {'+
		'            \"url\": \"https://i.ytimg.com/vi/YveE73KVUs8/maxresdefault_live.jpg\",'+
		'            \"width\": 1280,'+
		'            \"height\": 720'+
		'          }'+
		'        },'+
		'        \"isDefaultBroadcast\": false,'+
		'        \"liveChatId\": \"KicKGFVDM0FweXVCN3RWTlpUSWZoUlIwVGFoZxILWXZlRTczS1ZVczg\"'+
		'      },'+
		'      \"status\": {'+
		'        \"lifeCycleStatus\": \"ready\",'+
		'        \"privacyStatus\": \"public\",'+
		'        \"recordingStatus\": \"notRecording\",'+
		'        \"madeForKids\": false,'+
		'        \"selfDeclaredMadeForKids\": false'+
		'      },'+
		'      \"contentDetails\": {'+
		'        \"boundStreamId\": \"3ApyuB7tVNZTIfhRR0Tahg1627374559323907\",'+
		'        \"boundStreamLastUpdateTimeMs\": \"2021-07-27T08:29:19Z\",'+
		'        \"monitorStream\": {'+
		'          \"enableMonitorStream\": true,'+
		'          \"broadcastStreamDelayMs\": 0,'+
		'          \"embedHtml\": \"\\u003ciframe width=\\\"425\\\" height=\\\"344\\\" src=\\\"https://www.youtube.com/embed/YveE73KVUs8?autoplay=1&livemonitor=1\\\" frameborder=\\\"0\\\" allow=\\\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\\\" allowfullscreen\\u003e\\u003c/iframe\\u003e\"'+
		'        },'+
		'        \"enableEmbed\": true,'+
		'        \"enableDvr\": true,'+
		'        \"enableContentEncryption\": false,'+
		'        \"startWithSlate\": false,'+
		'        \"recordFromStart\": true,'+
		'        \"enableClosedCaptions\": false,'+
		'        \"closedCaptionsType\": \"closedCaptionsDisabled\",'+
		'        \"enableLowLatency\": true,'+
		'        \"latencyPreference\": \"low\",'+
		'        \"projection\": \"rectangular\",'+
		'        \"enableAutoStart\": true,'+
		'        \"enableAutoStop\": true'+
		'      }'+
		'    }'+
		'  ]'+
		'}';
		YoutubeJsonResponse r = YoutubeJsonResponse.parse(json);
		System.assert(r != null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.Status objStatus = new YoutubeJsonResponse.Status(System.JSON.createParser(json));
		System.assert(objStatus != null);
		System.assert(objStatus.lifeCycleStatus == null);
		System.assert(objStatus.privacyStatus == null);
		System.assert(objStatus.recordingStatus == null);
		System.assert(objStatus.madeForKids == null);
		System.assert(objStatus.selfDeclaredMadeForKids == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.Snippet_Z objSnippet_Z = new YoutubeJsonResponse.Snippet_Z(System.JSON.createParser(json));
		System.assert(objSnippet_Z != null);
		System.assert(objSnippet_Z.publishedAt == null);
		System.assert(objSnippet_Z.channelId == null);
		System.assert(objSnippet_Z.title == null);
		System.assert(objSnippet_Z.description == null);
		System.assert(objSnippet_Z.thumbnails == null);
		System.assert(objSnippet_Z.scheduledStartTime == null);
		System.assert(objSnippet_Z.isDefaultBroadcast == null);
		System.assert(objSnippet_Z.liveChatId == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.MonitorStream objMonitorStream = new YoutubeJsonResponse.MonitorStream(System.JSON.createParser(json));
		System.assert(objMonitorStream != null);
		System.assert(objMonitorStream.enableMonitorStream == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse objYoutubeJsonResponse = new YoutubeJsonResponse(System.JSON.createParser(json));
		System.assert(objYoutubeJsonResponse != null);
		System.assert(objYoutubeJsonResponse.kind == null);
		System.assert(objYoutubeJsonResponse.etag == null);
		System.assert(objYoutubeJsonResponse.pageInfo == null);
		System.assert(objYoutubeJsonResponse.items == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.ContentDetails objContentDetails = new YoutubeJsonResponse.ContentDetails(System.JSON.createParser(json));
		System.assert(objContentDetails != null);
		System.assert(objContentDetails.boundStreamId == null);
		System.assert(objContentDetails.boundStreamLastUpdateTimeMs == null);
		System.assert(objContentDetails.monitorStream == null);
		System.assert(objContentDetails.enableEmbed == null);
		System.assert(objContentDetails.enableDvr == null);
		System.assert(objContentDetails.enableContentEncryption == null);
		System.assert(objContentDetails.startWithSlate == null);
		System.assert(objContentDetails.recordFromStart == null);
		System.assert(objContentDetails.enableClosedCaptions == null);
		System.assert(objContentDetails.closedCaptionsType == null);
		System.assert(objContentDetails.enableLowLatency == null);
		System.assert(objContentDetails.latencyPreference == null);
		System.assert(objContentDetails.projection == null);
		System.assert(objContentDetails.enableAutoStart == null);
		System.assert(objContentDetails.enableAutoStop == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.Thumbnails objThumbnails = new YoutubeJsonResponse.Thumbnails(System.JSON.createParser(json));
		System.assert(objThumbnails != null);
		System.assert(objThumbnails.default_Z == null);
		System.assert(objThumbnails.medium == null);
		System.assert(objThumbnails.high == null);
		System.assert(objThumbnails.standard == null);
		System.assert(objThumbnails.maxres == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.MonitorStream_Z objMonitorStream_Z = new YoutubeJsonResponse.MonitorStream_Z(System.JSON.createParser(json));
		System.assert(objMonitorStream_Z != null);
		System.assert(objMonitorStream_Z.enableMonitorStream == null);
		System.assert(objMonitorStream_Z.broadcastStreamDelayMs == null);
		System.assert(objMonitorStream_Z.embedHtml == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.Snippet objSnippet = new YoutubeJsonResponse.Snippet(System.JSON.createParser(json));
		System.assert(objSnippet != null);
		System.assert(objSnippet.publishedAt == null);
		System.assert(objSnippet.channelId == null);
		System.assert(objSnippet.title == null);
		System.assert(objSnippet.description == null);
		System.assert(objSnippet.thumbnails == null);
		System.assert(objSnippet.scheduledStartTime == null);
		System.assert(objSnippet.actualStartTime == null);
		System.assert(objSnippet.actualEndTime == null);
		System.assert(objSnippet.isDefaultBroadcast == null);
		System.assert(objSnippet.liveChatId == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.Snippet_Y objSnippet_Y = new YoutubeJsonResponse.Snippet_Y(System.JSON.createParser(json));
		System.assert(objSnippet_Y != null);
		System.assert(objSnippet_Y.publishedAt == null);
		System.assert(objSnippet_Y.channelId == null);
		System.assert(objSnippet_Y.title == null);
		System.assert(objSnippet_Y.description == null);
		System.assert(objSnippet_Y.thumbnails == null);
		System.assert(objSnippet_Y.isDefaultBroadcast == null);
		System.assert(objSnippet_Y.liveChatId == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.ContentDetails_Z objContentDetails_Z = new YoutubeJsonResponse.ContentDetails_Z(System.JSON.createParser(json));
		System.assert(objContentDetails_Z != null);
		System.assert(objContentDetails_Z.boundStreamId == null);
		System.assert(objContentDetails_Z.boundStreamLastUpdateTimeMs == null);
		System.assert(objContentDetails_Z.monitorStream == null);
		System.assert(objContentDetails_Z.enableEmbed == null);
		System.assert(objContentDetails_Z.enableDvr == null);
		System.assert(objContentDetails_Z.enableContentEncryption == null);
		System.assert(objContentDetails_Z.startWithSlate == null);
		System.assert(objContentDetails_Z.recordFromStart == null);
		System.assert(objContentDetails_Z.enableClosedCaptions == null);
		System.assert(objContentDetails_Z.closedCaptionsType == null);
		System.assert(objContentDetails_Z.enableLowLatency == null);
		System.assert(objContentDetails_Z.latencyPreference == null);
		System.assert(objContentDetails_Z.projection == null);
		System.assert(objContentDetails_Z.enableAutoStart == null);
		System.assert(objContentDetails_Z.enableAutoStop == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.PageInfo objPageInfo = new YoutubeJsonResponse.PageInfo(System.JSON.createParser(json));
		System.assert(objPageInfo != null);
		System.assert(objPageInfo.totalResults == null);
		System.assert(objPageInfo.resultsPerPage == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.Default_Z objDefault_Z = new YoutubeJsonResponse.Default_Z(System.JSON.createParser(json));
		System.assert(objDefault_Z != null);
		System.assert(objDefault_Z.url == null);
		System.assert(objDefault_Z.width == null);
		System.assert(objDefault_Z.height == null);

		json = '{\"TestAMissingObject\": { \"TestAMissingArray\": [ { \"TestAMissingProperty\": \"Some Value\" } ] } }';
		YoutubeJsonResponse.Items objItems = new YoutubeJsonResponse.Items(System.JSON.createParser(json));
		System.assert(objItems != null);
		System.assert(objItems.kind == null);
		System.assert(objItems.etag == null);
		System.assert(objItems.id == null);
		System.assert(objItems.snippet == null);
		System.assert(objItems.status == null);
		System.assert(objItems.contentDetails == null);
	}
}