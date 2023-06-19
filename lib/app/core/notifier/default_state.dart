class DefaultState {
  final bool loading;
  final String? error;
  final bool success;

  DefaultState({
   this.loading = false,
   this.error,
   this.success = false
  });

  DefaultState copyWith({
    bool? loading,
    String? error,
    bool? success
  }) {
    return DefaultState(
      loading: loading ?? this.loading,
      error: error ?? this.error,
      success: success ?? this.success
    );
  }
}