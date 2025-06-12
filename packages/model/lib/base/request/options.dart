class ExtraRequestOptions {
  final bool? showGlobalLoading;
  final bool? showFailToast;
  final bool? showSuccessToast;
  final String? failToastMessage;
  final String? failDialogMessage;

  ExtraRequestOptions({
    this.showGlobalLoading = false,
    this.showFailToast = false,
    this.showSuccessToast = false,
    this.failToastMessage,
    this.failDialogMessage,
  });

  Map<String, dynamic> toJson() {
    return {
      'showGlobalLoading': showGlobalLoading,
      'showFailToast': showFailToast,
      'showSuccessToast': showSuccessToast,
      'failToastMessage': failToastMessage,
      'failDialogMessage': failDialogMessage,
    };
  }
}
