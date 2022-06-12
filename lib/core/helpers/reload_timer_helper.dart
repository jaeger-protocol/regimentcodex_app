import 'dart:async';

import 'dart:developer';

class ReloadTimerHelper {
  ReloadTimerHelper({
    required this.duration,
    this.message,
    this.showLogs = true,
  });

  String? message;
  final Duration duration;
  final bool showLogs;

  Timer? _timer;

  bool get isActive => _timer?.isActive ?? false;

  Future<void> initPeriodReload({required void Function() onReload}) async {
    _cancelTimerIfActive();
    _timer = Timer.periodic(duration, (internalTimer) {
      if (!isActive) {
        internalTimer.cancel();
        return;
      }
      if (showLogs) {
        message ??= '[ReloadTimerHelper] RELOADING DATA';
        log('$message');
      }
      return onReload();
    });
  }

  void _cancelTimerIfActive() {
    if (_timer == null) return;

    if (isActive) {
      if (showLogs) log('[ReloadTimerHelper] CANCELLING TIMER');
      _timer?.cancel();
    }
  }

  void dispose() {
    return _cancelTimerIfActive();
  }
}
