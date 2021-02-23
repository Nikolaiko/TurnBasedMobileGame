import 'package:freezed_annotation/freezed_annotation.dart';
import 'ui_tile_type.dart';

part 'ui_tile.freezed.dart';

@freezed
abstract class UITile with _$UITile {
  const factory UITile(
    UITileType type,
    int row,
    int column
  ) = _UITile;  
}