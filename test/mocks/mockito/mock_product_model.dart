// Mocks generated by Mockito 5.0.9 from annotations
// in possystem/test/models/menu/product_ingredient_model_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i8;
import 'dart:ui' as _i9;

import 'package:mockito/mockito.dart' as _i1;
import 'package:possystem/models/menu/catalog_model.dart' as _i2;
import 'package:possystem/models/menu/product_ingredient_model.dart' as _i4;
import 'package:possystem/models/menu/product_model.dart' as _i6;
import 'package:possystem/models/objects/menu_object.dart' as _i3;
import 'package:possystem/services/storage.dart' as _i7;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeCatalogModel extends _i1.Fake implements _i2.CatalogModel {}

class _FakeDateTime extends _i1.Fake implements DateTime {}

class _FakeProductObject extends _i1.Fake implements _i3.ProductObject {}

/// A class which mocks [ProductModel].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductModel extends _i1.Mock implements _i6.ProductModel {
  MockProductModel() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.CatalogModel get catalog =>
      (super.noSuchMethod(Invocation.getter(#catalog),
          returnValue: _FakeCatalogModel()) as _i2.CatalogModel);
  @override
  set catalog(_i2.CatalogModel? _catalog) =>
      super.noSuchMethod(Invocation.setter(#catalog, _catalog),
          returnValueForMissingStub: null);
  @override
  String get name =>
      (super.noSuchMethod(Invocation.getter(#name), returnValue: '') as String);
  @override
  set name(String? _name) => super.noSuchMethod(Invocation.setter(#name, _name),
      returnValueForMissingStub: null);
  @override
  num get cost =>
      (super.noSuchMethod(Invocation.getter(#cost), returnValue: 0) as num);
  @override
  set cost(num? _cost) => super.noSuchMethod(Invocation.setter(#cost, _cost),
      returnValueForMissingStub: null);
  @override
  num get price =>
      (super.noSuchMethod(Invocation.getter(#price), returnValue: 0) as num);
  @override
  set price(num? _price) =>
      super.noSuchMethod(Invocation.setter(#price, _price),
          returnValueForMissingStub: null);
  @override
  DateTime get createdAt => (super.noSuchMethod(Invocation.getter(#createdAt),
      returnValue: _FakeDateTime()) as DateTime);
  @override
  String get itemCode =>
      (super.noSuchMethod(Invocation.getter(#itemCode), returnValue: '')
          as String);
  @override
  String get code =>
      (super.noSuchMethod(Invocation.getter(#code), returnValue: '') as String);
  @override
  Iterable<_i4.ProductIngredientModel> get ingredientsWithQuantity =>
      (super.noSuchMethod(Invocation.getter(#ingredientsWithQuantity),
          returnValue: []) as Iterable<_i4.ProductIngredientModel>);
  @override
  String get prefix =>
      (super.noSuchMethod(Invocation.getter(#prefix), returnValue: '')
          as String);
  @override
  _i7.Stores get storageStore =>
      (super.noSuchMethod(Invocation.getter(#storageStore),
          returnValue: _i7.Stores.menu) as _i7.Stores);
  @override
  int get index =>
      (super.noSuchMethod(Invocation.getter(#index), returnValue: 0) as int);
  @override
  set index(int? _index) =>
      super.noSuchMethod(Invocation.setter(#index, _index),
          returnValueForMissingStub: null);
  @override
  bool get isEmpty =>
      (super.noSuchMethod(Invocation.getter(#isEmpty), returnValue: false)
          as bool);
  @override
  bool get isNotEmpty =>
      (super.noSuchMethod(Invocation.getter(#isNotEmpty), returnValue: false)
          as bool);
  @override
  List<_i4.ProductIngredientModel> get itemList =>
      (super.noSuchMethod(Invocation.getter(#itemList),
              returnValue: <_i4.ProductIngredientModel>[])
          as List<_i4.ProductIngredientModel>);
  @override
  Iterable<_i4.ProductIngredientModel> get items =>
      (super.noSuchMethod(Invocation.getter(#items),
              returnValue: <_i4.ProductIngredientModel>[])
          as Iterable<_i4.ProductIngredientModel>);
  @override
  int get length =>
      (super.noSuchMethod(Invocation.getter(#length), returnValue: 0) as int);
  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  set id(String? _id) => super.noSuchMethod(Invocation.setter(#id, _id),
      returnValueForMissingStub: null);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  void removeFromRepo() =>
      super.noSuchMethod(Invocation.method(#removeFromRepo, []),
          returnValueForMissingStub: null);
  @override
  _i8.Future<void> addItemToStorage(_i4.ProductIngredientModel? child) =>
      (super.noSuchMethod(Invocation.method(#addItemToStorage, [child]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i8.Future<void>);
  @override
  void notifyItem() => super.noSuchMethod(Invocation.method(#notifyItem, []),
      returnValueForMissingStub: null);
  @override
  _i3.ProductObject toObject() =>
      (super.noSuchMethod(Invocation.method(#toObject, []),
          returnValue: _FakeProductObject()) as _i3.ProductObject);
  @override
  String toString() =>
      (super.noSuchMethod(Invocation.method(#toString, []), returnValue: '')
          as String);
  @override
  void addItem(_i4.ProductIngredientModel? item) =>
      super.noSuchMethod(Invocation.method(#addItem, [item]),
          returnValueForMissingStub: null);
  @override
  _i4.ProductIngredientModel? getItem(String? id) =>
      (super.noSuchMethod(Invocation.method(#getItem, [id]))
          as _i4.ProductIngredientModel?);
  @override
  bool hasItem(String? id) =>
      (super.noSuchMethod(Invocation.method(#hasItem, [id]), returnValue: false)
          as bool);
  @override
  void removeItem(String? id) =>
      super.noSuchMethod(Invocation.method(#removeItem, [id]),
          returnValueForMissingStub: null);
  @override
  void replaceItems(Map<String, _i4.ProductIngredientModel>? map) =>
      super.noSuchMethod(Invocation.method(#replaceItems, [map]),
          returnValueForMissingStub: null);
  @override
  _i8.Future<void> setItem(_i4.ProductIngredientModel? item) =>
      (super.noSuchMethod(Invocation.method(#setItem, [item]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i8.Future<void>);
  @override
  _i8.Future<void> update(_i3.ProductObject? object) =>
      (super.noSuchMethod(Invocation.method(#update, [object]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i8.Future<void>);
  @override
  _i8.Future<void> remove() =>
      (super.noSuchMethod(Invocation.method(#remove, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future.value()) as _i8.Future<void>);
  @override
  void addListener(_i9.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i9.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}