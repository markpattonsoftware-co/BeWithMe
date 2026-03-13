import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_role.dart';
import '../../widgets/gradient_background.dart';
import 'qa_screen7.dart';

/// One hobby row: checkbox + label or TextField + optional remove.
class _HobbyItem {
  _HobbyItem({required this.label, this.checked = false, this.controller});
  String label;
  bool checked;
  TextEditingController? controller;
  bool get isCustom => controller != null;
}

/// QA step 6: "What are [elder]'s hobbies?" with predefined list + custom entries.
class QAScreen6 extends StatefulWidget {
  const QAScreen6({super.key, required this.userRoleIndex});

  /// Index into [UserRole.values]; 0=guardian, 1=elderlyWithGuardian, 2=elderlyNoGuardian.
  final int userRoleIndex;

  UserRole get userRole =>
      UserRole.values[userRoleIndex.clamp(0, UserRole.values.length - 1)];

  @override
  State<QAScreen6> createState() => _QAScreen6State();
}

class _QAScreen6State extends State<QAScreen6> {
  static const _keyGuardianQA2Elder = 'GuardianQA2Elder';
  static const _keyGuardianQA6HobbiesData = 'GuardianQA6HobbiesData';

  final List<_HobbyItem> _predefinedHobbies = [];
  final List<_HobbyItem> _customHobbies = [];
  bool _hobbiesInitialized = false;

  Future<String> _loadElderRelation() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyGuardianQA2Elder) ?? 'elder';
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_hobbiesInitialized) {
      _hobbiesInitialized = true;
      final l10n = AppLocalizations.of(context)!;
      _predefinedHobbies.addAll([
        _HobbyItem(label: l10n.guardianQA6ReadingBooks, checked: false),
        _HobbyItem(label: l10n.guardianQA6Praying, checked: false),
        _HobbyItem(label: l10n.guardianQA6Meditation, checked: false),
        _HobbyItem(label: l10n.guardianQA6GrowingPlants, checked: false),
        _HobbyItem(label: l10n.guardianQA6WatchingFilms, checked: false),
        _HobbyItem(label: l10n.guardianQA6ListeningToRadio, checked: false),
        _HobbyItem(label: l10n.guardianQA6Writing, checked: false),        
      ]);
    }
  }

  void _addCustomHobby() {
    setState(() {
      _customHobbies.add(_HobbyItem(label: '', checked: false, controller: TextEditingController()));
    });
  }

  void _removeCustomHobby(_HobbyItem item) {
    item.controller?.dispose();
    setState(() => _customHobbies.remove(item));
  }

  @override
  void dispose() {
    for (final item in _customHobbies) {
      item.controller?.dispose();
    }
    super.dispose();
  }

  Future<void> _onNextPressed() async {
    final list = <Map<String, dynamic>>[
      ..._predefinedHobbies.map((item) => {'title': item.label, 'checked': item.checked}),
      ..._customHobbies.map((item) => {'title': item.controller?.text ?? '', 'checked': item.checked}),
    ];
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyGuardianQA6HobbiesData, jsonEncode(list));
    if (!mounted) return;
    // TODO: navigate to QAScreen7 when available

    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => QAScreen7(userRoleIndex: widget.userRoleIndex),
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
                  child: FutureBuilder<String>(
                    future: _loadElderRelation(),
                    builder: (context, snapshot) {
                      final elder = snapshot.data ?? 'elder';
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '6.',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23,
                                    height: 1.2,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Expanded(
                                  child: Text(
                                    l10n.guardianQA6(elder),
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2,
                                      shadows: [
                                        Shadow(
                                          offset: const Offset(0, 2),
                                          blurRadius: 4,
                                          color: Colors.black.withValues(alpha: 0.25),
                                        ),
                                        Shadow(
                                          offset: const Offset(0, 1),
                                          blurRadius: 2,
                                          color: Colors.white.withValues(alpha: 0.15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ..._predefinedHobbies.map(_buildPredefinedRow),
                                  ..._customHobbies.map(_buildCustomRow),
                                  const SizedBox(height: 16),
                                  Center(
                                    child: IconButton.filled(
                                      onPressed: _addCustomHobby,
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
                              ),
                            ),
                          ),
                        ],
                      );
                    },
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

  Widget _buildPredefinedRow(_HobbyItem item) {
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
        ],
      ),
    );
  }

  Widget _buildCustomRow(_HobbyItem item) {
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
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => _removeCustomHobby(item),
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
}

