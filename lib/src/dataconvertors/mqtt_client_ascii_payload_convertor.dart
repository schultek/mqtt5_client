/*
 * Package : mqtt5_client
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 10/05/2020
 * Copyright :  S.Hamblett
 */

part of mqtt5_client;

/// Converts string data to and from the MQTT wire format
class AsciiPayloadConverter implements PayloadConverter<String> {
  /// Processes received data and returns it as a string.
  @override
  String convertFromBytes(typed.Uint8Buffer messageData) {
    const decoder = Utf8Decoder();
    return decoder.convert(messageData.toList());
  }

  /// Converts sent data from a string to a byte array.
  @override
  typed.Uint8Buffer convertToBytes(String data) {
    const encoder = Utf8Encoder();
    final buff = typed.Uint8Buffer();
    buff.addAll(encoder.convert(data));
    return buff;
  }
}