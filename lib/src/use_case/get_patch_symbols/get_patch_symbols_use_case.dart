import 'package:user_management_module/src/view/_classes/other_classes/patch_symbol.dart';

import 'get_patch_symbols_service.dart';

class GetPatchSymbolsUseCase {
  GetPatchSymbolsUseCase(GetPatchSymbolsService getPatchSymbolsService)
      : _getPatchSymbolsService = getPatchSymbolsService;

  final GetPatchSymbolsService _getPatchSymbolsService;

  Stream<PatchSymbol> getPatchSymbols() =>
      _getPatchSymbolsService.stream().map((getPatchSymbolServiceResponse) {
        return getPatchSymbolServiceResponse.patchSymbol;
      });
}