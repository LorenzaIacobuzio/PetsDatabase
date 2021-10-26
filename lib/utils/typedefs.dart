import 'package:dartz/dartz.dart';

// IDs
typedef OwnerId = String;
typedef PetId = String;
typedef ProcessId = String;
typedef SiteId = String;
typedef DataEventId = String;
typedef FormId = String;
typedef QuestionId = String;
typedef AnswerId = String;
typedef QuestionnaireId = String;
typedef PossibilityId = String;
typedef TrialFileId = String;
typedef ImageId = String;
typedef OptionId = String;

typedef JsonMap = Map<String, dynamic>;
typedef Language = String;
typedef StringMap = Map<Language, String>;

// Aliases for common Option types
typedef StringOption = Option<String>;
typedef DateTimeOption = Option<DateTime>;
typedef IntOption = Option<int>;
typedef BoolOption = Option<bool>;
