import 'package:flutter/material.dart';
import 'package:possystem/models/menu/catalog_model.dart';
import 'package:possystem/models/menu/product_ingredient_model.dart';
import 'package:possystem/models/menu/product_model.dart';

class CatalogObject {
  CatalogObject({
    @required this.id,
    @required this.index,
    @required this.name,
    @required this.createdAt,
    @required this.products,
  });

  final String id;
  final int index;
  final String name;
  final DateTime createdAt;
  final Iterable<ProductObject> products;

  Map<String, dynamic> output() {
    return {
      'index': index,
      'name': name,
      'createdAt': createdAt.toString(),
      'products': {for (var product in products) product.id: product.output()}
    };
  }

  Map<String, dynamic> diff(CatalogModel catalog) {
    final result = <String, dynamic>{};
    if (index != null && index != catalog.index) {
      catalog.index = index;
      result['$id.index'] = index;
    }
    if (name != null && name != catalog.name) {
      catalog.name = name;
      result['$id.name'] = name;
    }
    return result;
  }

  factory CatalogObject.build(Map<String, dynamic> data) {
    Map<String, Map<String, dynamic>> products = data['products'];

    return CatalogObject(
      id: data['id'],
      index: data['index'],
      name: data['name'],
      createdAt: _parseDate(data['createdAt']),
      products: products?.entries?.map<ProductObject>(
        (e) => ProductObject.build({'id': e.key, ...e.value}),
      ),
    );
  }
}

class ProductObject {
  ProductObject({
    @required this.id,
    @required this.price,
    @required this.cost,
    @required this.index,
    @required this.name,
    @required this.createdAt,
    @required this.ingredients,
  });

  final String id;
  final num price;
  final num cost;
  final int index;
  final String name;
  final DateTime createdAt;
  final Iterable<ProductIngredientObject> ingredients;

  Map<String, dynamic> output() {
    return {
      'price': price,
      'cost': cost,
      'index': index,
      'name': name,
      'createdAt': createdAt.toString(),
      'ingredients': {
        for (var ingredient in ingredients) ingredient.id: ingredient.output()
      }
    };
  }

  Map<String, dynamic> diff(ProductModel product) {
    final result = <String, dynamic>{};
    final prefix = product.prefix;
    if (index != null && index != product.index) {
      product.index = index;
      result['$prefix.index'] = index;
    }
    if (price != null && price != product.price) {
      product.price = price;
      result['$prefix.price'] = price;
    }
    if (cost != null && cost != product.cost) {
      product.cost = cost;
      result['$prefix.cost'] = cost;
    }
    if (name != null && name != product.name) {
      product.name = name;
      result['$prefix.name'] = name;
    }
    return result;
  }

  factory ProductObject.build(Map<String, dynamic> data) {
    return ProductObject(
      id: data['id'],
      price: data['price'],
      cost: data['cost'],
      index: data['index'],
      name: data['name'],
      createdAt: _parseDate(data['createdAt']),
      ingredients: data['ingredients']?.entries?.map<ProductIngredientObject>(
            (e) => ProductIngredientObject.build({'id': e.key, ...e.value}),
          ),
    );
  }
}

class ProductIngredientObject {
  ProductIngredientObject({
    @required this.id,
    @required this.amount,
    @required this.cost,
    @required this.quantities,
  });

  final String id;
  final num amount;
  final num cost;
  final Iterable<ProductQuantityObject> quantities;

  Map<String, dynamic> output() {
    return {
      'amount': amount,
      'cost': cost,
      'quantities': {
        for (var quantity in quantities) quantity.id: quantity.output()
      },
    };
  }

  Map<String, dynamic> diff(ProductIngredientModel ingredient) {
    final result = <String, dynamic>{};
    final prefix = ingredient.prefix;

    if (amount != null && amount != ingredient.amount) {
      ingredient.amount = amount;
      result['$prefix.amount'] = amount;
    }
    if (cost != null && cost != ingredient.cost) {
      ingredient.cost = cost;
      result['$prefix.cost'] = cost;
    }
    // after all property set
    if (id != null && id != ingredient.id) {
      ingredient.product.removeIngredient(ingredient);

      ingredient.changeIngredient(id);

      return {prefix: ingredient.toMap().output()};
    }

    return result;
  }

  factory ProductIngredientObject.build(Map<String, dynamic> data) {
    Map<String, Map<String, dynamic>> quantities = data['quantities'];
    return ProductIngredientObject(
      id: data['id'],
      amount: data['amount'],
      cost: data['cost'],
      quantities: quantities.entries.map<ProductQuantityObject>(
        (e) => ProductQuantityObject.build({'id': e.key, ...e.value}),
      ),
    );
  }
}

class ProductQuantityObject {
  ProductQuantityObject({
    @required this.id,
    @required this.amount,
    @required this.additionalCost,
    @required this.additionalPrice,
  });

  final String id;
  final num amount;
  final num additionalCost;
  final num additionalPrice;

  Map<String, dynamic> output() {
    return {
      'amount': amount,
      'additionalCost': additionalCost,
      'additionalPrice': additionalPrice,
    };
  }

  factory ProductQuantityObject.build(Map<String, dynamic> data) {
    return ProductQuantityObject(
      id: data['id'],
      amount: data['amount'],
      additionalCost: data['additionalCost'],
      additionalPrice: data['additionalPrice'],
    );
  }
}

DateTime _parseDate(String createdAt) {
  try {
    return DateTime.parse(createdAt);
  } catch (e) {
    return DateTime.now();
  }
}