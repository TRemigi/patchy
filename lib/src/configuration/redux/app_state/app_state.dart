class AppState {
  AppState({required this.patchSymbols,});
  AppState.initial(): this(patchSymbols: []);

  final List<String?> patchSymbols;

  AppState copyWith({List<String?> patchSymbols = const [],}) {
    return AppState(
      patchSymbols: patchSymbols,
    );
  }
}