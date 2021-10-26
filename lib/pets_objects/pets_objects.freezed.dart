// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pets_objects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OwnerTearOff {
  const _$OwnerTearOff();

  _Owner call(String id, String name, int age) {
    return _Owner(
      id,
      name,
      age,
    );
  }
}

/// @nodoc
const $Owner = _$OwnerTearOff();

/// @nodoc
mixin _$Owner {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res>;
  $Res call({String id, String name, int age});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res> implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  final Owner _value;
  // ignore: unused_field
  final $Res Function(Owner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$OwnerCopyWith(_Owner value, $Res Function(_Owner) then) =
      __$OwnerCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, int age});
}

/// @nodoc
class __$OwnerCopyWithImpl<$Res> extends _$OwnerCopyWithImpl<$Res>
    implements _$OwnerCopyWith<$Res> {
  __$OwnerCopyWithImpl(_Owner _value, $Res Function(_Owner) _then)
      : super(_value, (v) => _then(v as _Owner));

  @override
  _Owner get _value => super._value as _Owner;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_Owner(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Owner extends _Owner {
  const _$_Owner(this.id, this.name, this.age) : super._();

  @override
  final String id;
  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'Owner(id: $id, name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Owner &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age);

  @JsonKey(ignore: true)
  @override
  _$OwnerCopyWith<_Owner> get copyWith =>
      __$OwnerCopyWithImpl<_Owner>(this, _$identity);
}

abstract class _Owner extends Owner {
  const factory _Owner(String id, String name, int age) = _$_Owner;
  const _Owner._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OwnerCopyWith<_Owner> get copyWith => throw _privateConstructorUsedError;
}

InnerPet _$InnerPetFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String?) {
    case 'cat':
      return Cat.fromJson(json);
    case 'dog':
      return Dog.fromJson(json);
    case 'snake':
      return Snake.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'InnerPet',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$InnerPetTearOff {
  const _$InnerPetTearOff();

  Cat cat() {
    return const Cat();
  }

  Dog dog() {
    return const Dog();
  }

  Snake snake(bool isVenomous) {
    return Snake(
      isVenomous,
    );
  }

  InnerPet fromJson(Map<String, Object?> json) {
    return InnerPet.fromJson(json);
  }
}

/// @nodoc
const $InnerPet = _$InnerPetTearOff();

/// @nodoc
mixin _$InnerPet {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cat,
    required TResult Function() dog,
    required TResult Function(bool isVenomous) snake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cat,
    TResult Function()? dog,
    TResult Function(bool isVenomous)? snake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cat,
    TResult Function()? dog,
    TResult Function(bool isVenomous)? snake,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cat value) cat,
    required TResult Function(Dog value) dog,
    required TResult Function(Snake value) snake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Snake value)? snake,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Snake value)? snake,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerPetCopyWith<$Res> {
  factory $InnerPetCopyWith(InnerPet value, $Res Function(InnerPet) then) =
      _$InnerPetCopyWithImpl<$Res>;
}

/// @nodoc
class _$InnerPetCopyWithImpl<$Res> implements $InnerPetCopyWith<$Res> {
  _$InnerPetCopyWithImpl(this._value, this._then);

  final InnerPet _value;
  // ignore: unused_field
  final $Res Function(InnerPet) _then;
}

/// @nodoc
abstract class $CatCopyWith<$Res> {
  factory $CatCopyWith(Cat value, $Res Function(Cat) then) =
      _$CatCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatCopyWithImpl<$Res> extends _$InnerPetCopyWithImpl<$Res>
    implements $CatCopyWith<$Res> {
  _$CatCopyWithImpl(Cat _value, $Res Function(Cat) _then)
      : super(_value, (v) => _then(v as Cat));

  @override
  Cat get _value => super._value as Cat;
}

/// @nodoc
@JsonSerializable()
class _$Cat implements Cat {
  const _$Cat();

  factory _$Cat.fromJson(Map<String, dynamic> json) => _$$CatFromJson(json);

  @override
  String toString() {
    return 'InnerPet.cat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Cat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cat,
    required TResult Function() dog,
    required TResult Function(bool isVenomous) snake,
  }) {
    return cat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cat,
    TResult Function()? dog,
    TResult Function(bool isVenomous)? snake,
  }) {
    return cat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cat,
    TResult Function()? dog,
    TResult Function(bool isVenomous)? snake,
    required TResult orElse(),
  }) {
    if (cat != null) {
      return cat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cat value) cat,
    required TResult Function(Dog value) dog,
    required TResult Function(Snake value) snake,
  }) {
    return cat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Snake value)? snake,
  }) {
    return cat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Snake value)? snake,
    required TResult orElse(),
  }) {
    if (cat != null) {
      return cat(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CatToJson(this)..['runtimeType'] = 'cat';
  }
}

abstract class Cat implements InnerPet {
  const factory Cat() = _$Cat;

  factory Cat.fromJson(Map<String, dynamic> json) = _$Cat.fromJson;
}

/// @nodoc
abstract class $DogCopyWith<$Res> {
  factory $DogCopyWith(Dog value, $Res Function(Dog) then) =
      _$DogCopyWithImpl<$Res>;
}

/// @nodoc
class _$DogCopyWithImpl<$Res> extends _$InnerPetCopyWithImpl<$Res>
    implements $DogCopyWith<$Res> {
  _$DogCopyWithImpl(Dog _value, $Res Function(Dog) _then)
      : super(_value, (v) => _then(v as Dog));

  @override
  Dog get _value => super._value as Dog;
}

/// @nodoc
@JsonSerializable()
class _$Dog implements Dog {
  const _$Dog();

  factory _$Dog.fromJson(Map<String, dynamic> json) => _$$DogFromJson(json);

  @override
  String toString() {
    return 'InnerPet.dog()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Dog);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cat,
    required TResult Function() dog,
    required TResult Function(bool isVenomous) snake,
  }) {
    return dog();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cat,
    TResult Function()? dog,
    TResult Function(bool isVenomous)? snake,
  }) {
    return dog?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cat,
    TResult Function()? dog,
    TResult Function(bool isVenomous)? snake,
    required TResult orElse(),
  }) {
    if (dog != null) {
      return dog();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cat value) cat,
    required TResult Function(Dog value) dog,
    required TResult Function(Snake value) snake,
  }) {
    return dog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Snake value)? snake,
  }) {
    return dog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Snake value)? snake,
    required TResult orElse(),
  }) {
    if (dog != null) {
      return dog(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DogToJson(this)..['runtimeType'] = 'dog';
  }
}

abstract class Dog implements InnerPet {
  const factory Dog() = _$Dog;

  factory Dog.fromJson(Map<String, dynamic> json) = _$Dog.fromJson;
}

/// @nodoc
abstract class $SnakeCopyWith<$Res> {
  factory $SnakeCopyWith(Snake value, $Res Function(Snake) then) =
      _$SnakeCopyWithImpl<$Res>;
  $Res call({bool isVenomous});
}

/// @nodoc
class _$SnakeCopyWithImpl<$Res> extends _$InnerPetCopyWithImpl<$Res>
    implements $SnakeCopyWith<$Res> {
  _$SnakeCopyWithImpl(Snake _value, $Res Function(Snake) _then)
      : super(_value, (v) => _then(v as Snake));

  @override
  Snake get _value => super._value as Snake;

  @override
  $Res call({
    Object? isVenomous = freezed,
  }) {
    return _then(Snake(
      isVenomous == freezed
          ? _value.isVenomous
          : isVenomous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Snake implements Snake {
  const _$Snake(this.isVenomous);

  factory _$Snake.fromJson(Map<String, dynamic> json) => _$$SnakeFromJson(json);

  @override
  final bool isVenomous;

  @override
  String toString() {
    return 'InnerPet.snake(isVenomous: $isVenomous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Snake &&
            (identical(other.isVenomous, isVenomous) ||
                const DeepCollectionEquality()
                    .equals(other.isVenomous, isVenomous)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isVenomous);

  @JsonKey(ignore: true)
  @override
  $SnakeCopyWith<Snake> get copyWith =>
      _$SnakeCopyWithImpl<Snake>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cat,
    required TResult Function() dog,
    required TResult Function(bool isVenomous) snake,
  }) {
    return snake(isVenomous);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? cat,
    TResult Function()? dog,
    TResult Function(bool isVenomous)? snake,
  }) {
    return snake?.call(isVenomous);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cat,
    TResult Function()? dog,
    TResult Function(bool isVenomous)? snake,
    required TResult orElse(),
  }) {
    if (snake != null) {
      return snake(isVenomous);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cat value) cat,
    required TResult Function(Dog value) dog,
    required TResult Function(Snake value) snake,
  }) {
    return snake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Snake value)? snake,
  }) {
    return snake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cat value)? cat,
    TResult Function(Dog value)? dog,
    TResult Function(Snake value)? snake,
    required TResult orElse(),
  }) {
    if (snake != null) {
      return snake(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SnakeToJson(this)..['runtimeType'] = 'snake';
  }
}

abstract class Snake implements InnerPet {
  const factory Snake(bool isVenomous) = _$Snake;

  factory Snake.fromJson(Map<String, dynamic> json) = _$Snake.fromJson;

  bool get isVenomous => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SnakeCopyWith<Snake> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$PetTearOff {
  const _$PetTearOff();

  _Pet call(String id, String ownedBy, Gender gender, String name, int age,
      InnerPet innerPet) {
    return _Pet(
      id,
      ownedBy,
      gender,
      name,
      age,
      innerPet,
    );
  }
}

/// @nodoc
const $Pet = _$PetTearOff();

/// @nodoc
mixin _$Pet {
  String get id => throw _privateConstructorUsedError;
  String get ownedBy => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  InnerPet get innerPet => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PetCopyWith<Pet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetCopyWith<$Res> {
  factory $PetCopyWith(Pet value, $Res Function(Pet) then) =
      _$PetCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String ownedBy,
      Gender gender,
      String name,
      int age,
      InnerPet innerPet});

  $InnerPetCopyWith<$Res> get innerPet;
}

/// @nodoc
class _$PetCopyWithImpl<$Res> implements $PetCopyWith<$Res> {
  _$PetCopyWithImpl(this._value, this._then);

  final Pet _value;
  // ignore: unused_field
  final $Res Function(Pet) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? ownedBy = freezed,
    Object? gender = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? innerPet = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownedBy: ownedBy == freezed
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      innerPet: innerPet == freezed
          ? _value.innerPet
          : innerPet // ignore: cast_nullable_to_non_nullable
              as InnerPet,
    ));
  }

  @override
  $InnerPetCopyWith<$Res> get innerPet {
    return $InnerPetCopyWith<$Res>(_value.innerPet, (value) {
      return _then(_value.copyWith(innerPet: value));
    });
  }
}

/// @nodoc
abstract class _$PetCopyWith<$Res> implements $PetCopyWith<$Res> {
  factory _$PetCopyWith(_Pet value, $Res Function(_Pet) then) =
      __$PetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String ownedBy,
      Gender gender,
      String name,
      int age,
      InnerPet innerPet});

  @override
  $InnerPetCopyWith<$Res> get innerPet;
}

/// @nodoc
class __$PetCopyWithImpl<$Res> extends _$PetCopyWithImpl<$Res>
    implements _$PetCopyWith<$Res> {
  __$PetCopyWithImpl(_Pet _value, $Res Function(_Pet) _then)
      : super(_value, (v) => _then(v as _Pet));

  @override
  _Pet get _value => super._value as _Pet;

  @override
  $Res call({
    Object? id = freezed,
    Object? ownedBy = freezed,
    Object? gender = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? innerPet = freezed,
  }) {
    return _then(_Pet(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownedBy == freezed
          ? _value.ownedBy
          : ownedBy // ignore: cast_nullable_to_non_nullable
              as String,
      gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      innerPet == freezed
          ? _value.innerPet
          : innerPet // ignore: cast_nullable_to_non_nullable
              as InnerPet,
    ));
  }
}

/// @nodoc

class _$_Pet extends _Pet {
  const _$_Pet(
      this.id, this.ownedBy, this.gender, this.name, this.age, this.innerPet)
      : super._();

  @override
  final String id;
  @override
  final String ownedBy;
  @override
  final Gender gender;
  @override
  final String name;
  @override
  final int age;
  @override
  final InnerPet innerPet;

  @override
  String toString() {
    return 'Pet(id: $id, ownedBy: $ownedBy, gender: $gender, name: $name, age: $age, innerPet: $innerPet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pet &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ownedBy, ownedBy) ||
                const DeepCollectionEquality()
                    .equals(other.ownedBy, ownedBy)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.innerPet, innerPet) ||
                const DeepCollectionEquality()
                    .equals(other.innerPet, innerPet)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ownedBy) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(innerPet);

  @JsonKey(ignore: true)
  @override
  _$PetCopyWith<_Pet> get copyWith =>
      __$PetCopyWithImpl<_Pet>(this, _$identity);
}

abstract class _Pet extends Pet {
  const factory _Pet(String id, String ownedBy, Gender gender, String name,
      int age, InnerPet innerPet) = _$_Pet;
  const _Pet._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get ownedBy => throw _privateConstructorUsedError;
  @override
  Gender get gender => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get age => throw _privateConstructorUsedError;
  @override
  InnerPet get innerPet => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PetCopyWith<_Pet> get copyWith => throw _privateConstructorUsedError;
}
