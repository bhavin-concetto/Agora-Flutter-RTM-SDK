class AgoraRtmMessage {
  String text;
  int ts;
  bool offline;

  AgoraRtmMessage(this.text, this.ts, this.offline);

  AgoraRtmMessage.fromText(String text, {this.ts = 0, this.offline = false})
      : text = text;

  AgoraRtmMessage.fromJson(Map<dynamic, dynamic> json)
      : text = json['text'],
        ts = json['ts'],
        offline = json['offline'];

  Map<String, dynamic> toJson() => {'text': text, 'ts': ts, 'offline': offline};

  @override
  String toString() => "{text: $text, ts: $ts, offline: $offline}";
}

class AgoraRtmMember {
  String userId;
  String channelId;

  AgoraRtmMember(this.userId, this.channelId);

  AgoraRtmMember.fromJson(Map<dynamic, dynamic> json)
      : userId = json['userId'],
        channelId = json['channelId'];

  Map<String, dynamic> toJson() => {
        'userId': userId,
        'channelId': channelId,
      };

  @override
  String toString() => "{uid: $userId, cid: $channelId}";
}

class AgoraRtmChannelAttribute {
  String key;
  String value;
  String userId;
  int updateTs;

  AgoraRtmChannelAttribute(this.key, this.value,
      {this.userId = "", this.updateTs = 0});

  AgoraRtmChannelAttribute.fromJson(Map<dynamic, dynamic> json)
      : key = json['key'],
        value = json['value'],
        userId = json['userId'],
        updateTs = json['updateTs'];

  Map<String, dynamic> toJson() => {
        'key': key,
        'value': value,
        'userId': userId,
        'updateTs': updateTs,
      };

  @override
  String toString() =>
      "{key: $key, value: $value, userId: $userId, updateTs: $updateTs}";
}

class AgoraRtmLocalInvitation {
  String calleeId;
  String? content;
  String? response;
  String? channelId;
  int state;

  AgoraRtmLocalInvitation(this.calleeId,
      {this.content, this.response, this.channelId, this.state = 0});

  AgoraRtmLocalInvitation.fromJson(Map<dynamic, dynamic> json)
      : calleeId = json['calleeId'],
        content = json['content'],
        response = json['response'],
        channelId = json['channelId'],
        state = json['state'];

  Map<String, dynamic> toJson() => {
        'calleeId': calleeId,
        'content': content,
        'response': response,
        'channelId': channelId,
        'state': state,
      };

  @override
  String toString() =>
      "{calleeId: $calleeId, content: $content, response: $response, channelId: $channelId, state: $state}";
}

class AgoraRtmRemoteInvitation {
  String callerId;
  String? content;
  String? response;
  String? channelId;
  int state;

  AgoraRtmRemoteInvitation(this.callerId,
      {this.content, this.response, this.channelId, this.state = 0});

  AgoraRtmRemoteInvitation.fromJson(Map<dynamic, dynamic> json)
      : callerId = json['callerId'],
        content = json['content'],
        response = json['response'],
        channelId = json['channelId'],
        state = json['state'];

  Map<String, dynamic> toJson() => {
        'callerId': callerId,
        'content': content,
        'response': response,
        'channelId': channelId,
        'state': state,
      };

  @override
  String toString() =>
      "{callerId: $callerId, content: $content, response: $response, channelId: $channelId, state: $state}";
}

class AgoraRtmChannelCount {
  String? channelID;
  int? memberCount;

  AgoraRtmChannelCount({this.channelID, this.memberCount});

  AgoraRtmChannelCount.fromJson(Map<dynamic, dynamic> json) {
    channelID = json['channelID'];
    memberCount = json['memberCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['channelID'] = channelID;
    data['memberCount'] = memberCount;
    return data;
  }

  @override
  String toString() =>
      'AgoraRtmChannelCount{channelID: $channelID, memberCount: $memberCount}';
}
