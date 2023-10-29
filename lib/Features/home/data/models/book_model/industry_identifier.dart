import 'package:equatable/equatable.dart';

class IndustryIdentifier extends Equatable {
  final String type;
  final String identifier;

  const IndustryIdentifier({required this.type, required this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return IndustryIdentifier(
      type: json['type'] as String,
      identifier: json['identifier'] as String,
    );
  }

  Map<String, dynamic> toJson() => {
        'type': type,
        'identifier': identifier,
      };

  @override
  List<Object?> get props => [type, identifier];
}
