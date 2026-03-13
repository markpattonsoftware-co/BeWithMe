import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_role.dart';
import '../../widgets/gradient_background.dart';
import 'qa_screen_non5.dart';
/// Parameter for the QA5 option bottom sheet.
enum NonGuardianQA4SheetType { dailyActivity, health }

/// QA step 5: "Let me know what you want me to take care of your [elder] about." with 2 checkboxes.
class QAScreenNon4 extends StatefulWidget {
  const QAScreenNon4({super.key, required this.userRoleIndex});

  /// Index into [UserRole.values]; 0=guardian, 1=elderlyWithGuardian, 2=elderlyNoGuardian.
  final int userRoleIndex;

  UserRole get userRole =>
      UserRole.values[userRoleIndex.clamp(0, UserRole.values.length - 1)];

  @override
  State<QAScreenNon4> createState() => _QAScreenNon4State();
}

class _QAScreenNon4State extends State<QAScreenNon4> {
  static const _keyNonGuardianQA5DailyActivities = 'NonGuardianQA5DailyActivities';
  static const _keyNonGuardianQA5Health = 'NonGuardianQA5Health';

  bool _dailyActivities = false;
  bool _health = false;

  
  void _showOptionSheet(NonGuardianQA4SheetType type) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _NonQA4OptionSheet(type: type),
    );
  }

  Future<void> _onNextPressed() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyNonGuardianQA5DailyActivities, _dailyActivities);
    await prefs.setBool(_keyNonGuardianQA5Health, _health);

    if (!mounted) return;
    
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => QAScreenNon5(userRoleIndex: widget.userRoleIndex),
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth / 2;

    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 50),
              Image.asset(
                'assets/images/QA.png',
                fit: BoxFit.contain,
                width: iconSize,
                height: iconSize,
              ),
              SizedBox(height: 40),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SingleChildScrollView(                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: const Text(
                                      '4.',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: Text(
                                      l10n.nonGuardianQA4,
                                      style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                        height: 1.2,
                                        shadows: [
                                          Shadow(
                                            offset: const Offset(0, 2),
                                            blurRadius: 4,
                                            color: Colors.black.withValues(
                                              alpha: 0.25,
                                            ),
                                          ),
                                          Shadow(
                                            offset: const Offset(0, 1),
                                            blurRadius: 2,
                                            color: Colors.white.withValues(
                                              alpha: 0.15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            _buildCheckbox(
                              value: _dailyActivities,
                              onChanged: (v) {
                                final checked = v ?? false;
                                setState(() => _dailyActivities = checked);
                                if (checked)
                                  _showOptionSheet(
                                    NonGuardianQA4SheetType.dailyActivity,
                                  );
                              },
                              label: l10n.guardianQA5DailyActivities,
                            ),

                            _buildCheckbox(
                              value: _health,
                              onChanged: (v) {
                                final checked = v ?? false;
                                setState(() => _health = checked);
                                if (checked)
                                  _showOptionSheet(NonGuardianQA4SheetType.health);
                              },
                              label: l10n.guardianQA5Health,
                            ),
                          ],
                        ),
                      ),                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: Row(
                    children: [
                      Expanded(
                        child: FilledButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: const Color(0xFFE8B931),
                            elevation: 4,
                          ),
                          child: Text(
                            l10n.dialogBack,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                        child: FilledButton(
                          onPressed: _onNextPressed,
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: const Color(0xFF14AE5C),
                            elevation: 4,
                          ),
                          child: Text(
                            l10n.dialogNext,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCheckbox({
    required bool value,
    required ValueChanged<bool?> onChanged,
    required String label,
  }) {
    return InkWell(
      onTap: () => onChanged(!value),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.black,
            fillColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return Colors.black;
              }
              return null;
            }),
          ),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}

/// One item in the option sheet list: checkbox + label or TextField + time.
class _NonQA4SheetItem {
  _NonQA4SheetItem({this.checked = false, this.label = '', required this.time, this.controller});
  bool checked;
  String label;
  String time;
  TextEditingController? controller;
  bool get isNew => controller != null;
}

/// Health sheet measurement row: label + checkbox + time (no TextField).
class _HealthMeasurementItem {
  _HealthMeasurementItem({required this.label, this.checked = false, this.time = '9:41 AM'});
  final String label;
  bool checked;
  String time;
}

/// Bottom sheet for QA5 option (daily_activity or health) with [GradientBackground].
class _NonQA4OptionSheet extends StatefulWidget {
  const _NonQA4OptionSheet({required this.type});

  final NonGuardianQA4SheetType type;

  @override
  State<_NonQA4OptionSheet> createState() => _NonQA4OptionSheetState();
}

class _NonQA4OptionSheetState extends State<_NonQA4OptionSheet> {
  static const _keyGuardianQA5DailyActivitiesData = 'GuardianQA5DailyActivitiesData';
  static const _keyGuardianQA5HealthData = 'GuardianQA5HealthData';

  final List<_NonQA4SheetItem> _items = [];
  bool _dailyActivityInitialized = false;

  bool _medicineSectionChecked = false;
  bool _vitaminSectionChecked = false;
  final List<_NonQA4SheetItem> _medicineItems = [];
  final List<_NonQA4SheetItem> _vitaminItems = [];
  final List<_HealthMeasurementItem> _healthMeasurements = [];
  final List<_NonQA4SheetItem> _customMeasurementItems = [];
  bool _healthInitialized = false;

  static const _defaultTime = '9:41 AM';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.type == NonGuardianQA4SheetType.dailyActivity &&
        !_dailyActivityInitialized) {
      _dailyActivityInitialized = true;
      final l10n = AppLocalizations.of(context)!;
      final labels = [
        l10n.guardianQA5Breakfast,
        l10n.guardianQA5Lunch,
        l10n.guardianQA5Dinner,
        l10n.guardianQA5Super,
        l10n.guardianQA5DrinkWater,
        l10n.guardianQA5DoExercise,
      ];
      for (final label in labels) {
        _items.add(_NonQA4SheetItem(
          checked: false,
          label: label,
          time: _defaultTime,
        ));
      }
    }
    if (widget.type == NonGuardianQA4SheetType.health && !_healthInitialized) {
      _healthInitialized = true;
      _loadElderAndMeasurements();
    }
  }

  Future<void> _loadElderAndMeasurements() async {
    
    if (!mounted) return;
    final l10n = AppLocalizations.of(context)!;
    setState(() {
      if (_healthMeasurements.isEmpty) {
        _healthMeasurements.addAll([
          _HealthMeasurementItem(label: l10n.guardianQA5HealthMeasureBloodPressure, checked: false, time: _defaultTime),
          _HealthMeasurementItem(label: l10n.guardianQA5HealthCheckBloodSugar, checked: false, time: _defaultTime),
          _HealthMeasurementItem(label: l10n.guardianQA5HealthMonitorHeartRate, checked: false, time: _defaultTime),
          _HealthMeasurementItem(label: l10n.guardianQA5HealthCheckBodyTemp, checked: false, time: _defaultTime),
          _HealthMeasurementItem(label: l10n.guardianQA5HealthWeigh, checked: false, time: _defaultTime),
          _HealthMeasurementItem(label: l10n.guardianQA5HealthTrackSpO2, checked: false, time: _defaultTime),
        ]);
      }
      if (_medicineItems.isEmpty) {
        final c = TextEditingController();
        _medicineItems.add(_NonQA4SheetItem(checked: false, label: '', time: _defaultTime, controller: c));
      }
      if (_vitaminItems.isEmpty) {
        final c = TextEditingController();
        _vitaminItems.add(_NonQA4SheetItem(checked: false, label: '', time: _defaultTime, controller: c));
      }
    });
  }

  static String _formatTime(DateTime d) {
    final hour = d.hour > 12 ? d.hour - 12 : (d.hour == 0 ? 12 : d.hour);
    final period = d.hour >= 12 ? 'PM' : 'AM';
    final minute = d.minute.toString().padLeft(2, '0');
    return '$hour:$minute $period';
  }

  /// Parse "9:41 AM" style string to DateTime (today at that time). Returns 9:41 if parse fails.
  static DateTime _parseTime(String timeStr) {
    try {
      final re = RegExp(r'(\d{1,2}):(\d{2})\s*(AM|PM)', caseSensitive: false);
      final m = re.firstMatch(timeStr);
      if (m != null) {
        var h = int.parse(m.group(1)!);
        final min = int.parse(m.group(2)!);
        final pm = m.group(3)!.toUpperCase() == 'PM';
        if (pm && h != 12) h += 12;
        if (!pm && h == 12) h = 0;
        final now = DateTime.now();
        return DateTime(now.year, now.month, now.day, h, min);
      }
    } catch (_) {}
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 9, 41);
  }

  void _removeItem(_NonQA4SheetItem item, [List<_NonQA4SheetItem>? fromList]) {
    if (!item.isNew) return;
    item.controller?.dispose();
    setState(() => (fromList ?? _items).remove(item));
  }

  Future<void> _pickTime(_NonQA4SheetItem item) async {
    final initial = _parseTime(item.time);
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initial),
    );
    if (picked != null) {
      final now = DateTime.now();
      final dt = DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
      setState(() => item.time = _formatTime(dt));
    }
  }

  void _addItem() {
    final controller = TextEditingController();
    setState(() {
      _items.add(_NonQA4SheetItem(
        checked: false,
        label: '',
        time: _formatTime(DateTime.now()),
        controller: controller,
      ));
    });
  }

  void _addMedicineItem() {
    final controller = TextEditingController();
    setState(() {
      _medicineItems.add(_NonQA4SheetItem(
        checked: false,
        label: '',
        time: _formatTime(DateTime.now()),
        controller: controller,
      ));
    });
  }

  void _addVitaminItem() {
    final controller = TextEditingController();
    setState(() {
      _vitaminItems.add(_NonQA4SheetItem(
        checked: false,
        label: '',
        time: _formatTime(DateTime.now()),
        controller: controller,
      ));
    });
  }

  void _addCustomMeasurementItem() {
    final controller = TextEditingController();
    setState(() {
      _customMeasurementItems.add(_NonQA4SheetItem(
        checked: false,
        label: '',
        time: _formatTime(DateTime.now()),
        controller: controller,
      ));
    });
  }

  Future<void> _pickMeasurementTime(_HealthMeasurementItem item) async {
    final initial = _parseTime(item.time);
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(initial),
    );
    if (picked != null) {
      final now = DateTime.now();
      final dt = DateTime(now.year, now.month, now.day, picked.hour, picked.minute);
      setState(() => item.time = _formatTime(dt));
    }
  }

  /// Save sheet data to SharedPreferences then close. Daily: checked items only (name + time). Health: three groups.
  Future<void> _saveAndPop() async {
    final prefs = await SharedPreferences.getInstance();
    if (widget.type == NonGuardianQA4SheetType.dailyActivity) {
      final checkedItems = _items
          .where((item) => item.checked)
          .map((item) => {
                'name': item.isNew ? (item.controller?.text ?? '') : item.label,
                'time': item.time,
              })
          .toList();
      await prefs.setString(_keyGuardianQA5DailyActivitiesData, jsonEncode(checkedItems));
    } else {
      final medicineItems = _medicineItems
          .map((item) => {
                'text': item.controller?.text ?? '',
                'time': item.time,
              })
          .toList();
      final vitaminItems = _vitaminItems
          .map((item) => {
                'text': item.controller?.text ?? '',
                'time': item.time,
              })
          .toList();
      final measurementList = [
        ..._healthMeasurements.map((m) => {'label': m.label, 'checked': m.checked, 'time': m.time}),
        ..._customMeasurementItems.map((item) => {
              'label': item.controller?.text ?? '',
              'checked': item.checked,
              'time': item.time,
            }),
      ];
      final healthData = {
        'medicine': {'sectionChecked': _medicineSectionChecked, 'items': medicineItems},
        'vitamin': {'sectionChecked': _vitaminSectionChecked, 'items': vitaminItems},
        'measurements': measurementList,
      };
      await prefs.setString(_keyGuardianQA5HealthData, jsonEncode(healthData));
    }
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    for (final item in _items) {
      item.controller?.dispose();
    }
    for (final item in _medicineItems) {
      item.controller?.dispose();
    }
    for (final item in _vitaminItems) {
      item.controller?.dispose();
    }
    for (final item in _customMeasurementItems) {
      item.controller?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final title = widget.type == NonGuardianQA4SheetType.dailyActivity
        ? l10n.guardianQA5DailyActivities
        : l10n.guardianQA5Health;

    return DraggableScrollableSheet(
      initialChildSize: 0.8,
      minChildSize: 0.25,
      maxChildSize: 0.9,
      builder: (context, scrollController) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: GradientBackground(
                child: SafeArea(
                  top: false,
                  child: SizedBox(
                    height: constraints.maxHeight,
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(48, 5, 0, 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      title,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () => Navigator.of(context).pop(),
                                    icon: const Icon(Icons.close),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              child: SingleChildScrollView(
                                controller: scrollController,
                                padding: const EdgeInsets.fromLTRB(24, 0, 24, 100),
                                child: widget.type == NonGuardianQA4SheetType.health
                                    ? _buildHealthContent(l10n)
                                    : Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: [
                                          for (final item in _items) _buildListItem(item),
                                          const SizedBox(height: 16),
                                        ],
                                      ),
                              ),
                            ),
                            if (widget.type == NonGuardianQA4SheetType.dailyActivity) ...[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(24, 8, 24, 12),
                                child: Center(
                                  child: IconButton.filled(
                                    onPressed: _addItem,
                                    icon: const Icon(Icons.add),
                                    style: IconButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(255, 82, 2, 242),
                                      foregroundColor: Colors.white,
                                      padding: const EdgeInsets.all(16),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                            const SizedBox(height: 70),
                          ],
                        ),
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
                            child: SizedBox(
                              width: double.infinity,
                              height: 48,
                              child: FilledButton(
                                onPressed: _saveAndPop,
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFF14AE5C),
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 4,
                                ),
                                child: Text(
                                  l10n.guardianQA5Done,
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildHealthContent(AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
              value: _medicineSectionChecked,
              onChanged: (v) => setState(() => _medicineSectionChecked = v ?? false),
              activeColor: Colors.black,
              fillColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) return Colors.black;
                return null;
              }),
            ),
            Expanded(
              child: Text(
                l10n.nonGuardianQA4HealthMedicineQuestion,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ..._medicineItems.map((item) => _buildHealthEntryRow(item, _medicineItems)),
        const SizedBox(height: 8),
        Center(
          child: IconButton.filled(
            onPressed: _addMedicineItem,
            icon: const Icon(Icons.add),
            style: IconButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Checkbox(
              value: _vitaminSectionChecked,
              onChanged: (v) => setState(() => _vitaminSectionChecked = v ?? false),
              activeColor: Colors.black,
              fillColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) return Colors.black;
                return null;
              }),
            ),
            Expanded(
              child: Text(
                l10n.nonGuardianQA4HealthVitaminsQuestion,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        ..._vitaminItems.map((item) => _buildHealthEntryRow(item, _vitaminItems)),
        const SizedBox(height: 8),
        Center(
          child: IconButton.filled(
            onPressed: _addVitaminItem,
            icon: const Icon(Icons.add),
            style: IconButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          l10n.nonGuardianQA4HealthNeedsHeading,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 12),
        ..._healthMeasurements.map(_buildMeasurementRow),
        ..._customMeasurementItems.map((item) => _buildListItem(item, fromList: _customMeasurementItems)),
        const SizedBox(height: 8),
        Center(
          child: IconButton.filled(
            onPressed: _addCustomMeasurementItem,
            icon: const Icon(Icons.add),
            style: IconButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(16),
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }

  /// Row for medicine/vitamin entries: TextField + time + remove (no checkbox).
  Widget _buildHealthEntryRow(_NonQA4SheetItem item, List<_NonQA4SheetItem> fromList) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: TextField(
              controller: item.controller,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFF757575)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFF757575)),
                ),
              ),
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => _pickTime(item),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 118, 128).withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(item.time, style: const TextStyle(fontSize: 16)),
            ),
          ),
          const SizedBox(width: 8),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => _removeItem(item, fromList),
              customBorder: const CircleBorder(),
              child: Container(
                width: 24,
                height: 24,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE53935),
                ),
                child: const Icon(Icons.remove, color: Colors.white, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMeasurementRow(_HealthMeasurementItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: item.checked,
            onChanged: (v) => setState(() => item.checked = v ?? false),
            activeColor: Colors.black,
            fillColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) return Colors.black;
              return null;
            }),
          ),
          Expanded(
            child: Text(item.label, style: const TextStyle(fontSize: 16)),
          ),
          GestureDetector(
            onTap: () => _pickMeasurementTime(item),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 118, 128).withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(item.time, style: const TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(_NonQA4SheetItem item, {List<_NonQA4SheetItem>? fromList}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: item.checked,
            onChanged: (v) => setState(() => item.checked = v ?? false),
            activeColor: Colors.black,
            fillColor: WidgetStateProperty.resolveWith((states) {
              if (states.contains(WidgetState.selected)) return Colors.black;
              return null;
            }),
          ),
          Expanded(
            child: item.isNew
                ? TextField(
                    controller: item.controller,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF757575)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xFF757575)),
                      ),
                    ),
                    style: const TextStyle(fontSize: 16),
                  )
                : Text(
                    item.label.isEmpty ? 'New item' : item.label,
                    style: const TextStyle(fontSize: 16),
                  ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => _pickTime(item),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 118, 118, 128).withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                item.time,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          if (item.isNew) ...[
            const SizedBox(width: 8),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => _removeItem(item, fromList ?? _items),
                customBorder: const CircleBorder(),
                child: Container(
                  width: 25,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFE53935),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
