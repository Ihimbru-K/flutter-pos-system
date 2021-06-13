import 'package:mockito/annotations.dart';
import 'package:possystem/models/repository/menu_model.dart';
import 'package:possystem/models/repository/quantity_repo.dart';
import 'package:possystem/models/repository/stock_batch_repo.dart';
import 'package:possystem/models/repository/stock_model.dart';
import 'package:possystem/services/storage.dart';

import 'mocks.mocks.dart';

final storage = MockStorage();
final stock = MockStockModel();
final menu = MockMenuModel();
final batches = MockStockBatchRepo();
final quantities = MockQuantityRepo();

@GenerateMocks([
  Storage,
  StockModel,
  MenuModel,
  StockBatchRepo,
  QuantityRepo,
])
void _initialize() {
  Storage.instance = storage;
  StockModel.instance = stock;
  MenuModel.instance = menu;
  StockBatchRepo.instance = batches;
  QuantityRepo.instance = quantities;
  _finished = true;
}

var _finished = false;
void initialize() {
  if (!_finished) {
    _initialize();
  }
}