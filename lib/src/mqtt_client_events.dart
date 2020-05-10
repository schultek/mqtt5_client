/*
 * Package : mqtt5_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 10/05/2020
 * Copyright :  S.Hamblett
 */

part of mqtt5_client;

/// The message available event raised by the Connection class
class MessageAvailable {
  /// Constructor
  MessageAvailable(this._message);

  /// The message associated with the event
  final MqttMessage _message;

  /// Message
  MqttMessage get message => _message;
}

/// Message recieved class for publishing
class MessageReceived {
  /// Constructor
  MessageReceived(this._topic, this._message);

  /// The message associated with the event
  final MqttMessage _message;

  /// Message
  MqttMessage get message => _message;

  /// The topic
  final PublicationTopic _topic;

  /// Topic
  PublicationTopic get topic => _topic;
}

/// Auto reconnect event
class AutoReconnect {
  /// Constructor
  AutoReconnect({userReconnect = false}) {
    userRequested = userReconnect;
  }

  /// If set auto reconnect has been invoked through the client
  /// [doAutoReconnect] method, i.e. a user request.
  var userRequested;
}