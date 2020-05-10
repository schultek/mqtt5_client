/*
 * Package : mqtt5_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 10/05/2020
 * Copyright :  S.Hamblett
 */

part of mqtt5_client;

/// Implementation of an MQTT ping Request Message.
class MqttPingResponseMessage extends MqttMessage {
  /// Initializes a new instance of the MqttPingResponseMessage class.
  MqttPingResponseMessage() {
    header = MqttHeader().asType(MqttMessageType.pingResponse);
  }

  /// Initializes a new instance of the MqttPingResponseMessage class.
  MqttPingResponseMessage.fromHeader(MqttHeader header) {
    this.header = header;
  }

  @override
  String toString() {
    final sb = StringBuffer();
    sb.write(super.toString());
    return sb.toString();
  }
}