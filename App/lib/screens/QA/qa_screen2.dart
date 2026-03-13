import 'package:flutter/material.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_role.dart';
import '../../widgets/gradient_background.dart';
import 'qa_screen3.dart';

/// QA step 2: relationship between user and elder. Two radio groups (elder role, your role).
class QAScreen2 extends StatefulWidget {
  const QAScreen2({super.key, required this.userRoleIndex});

  /// Index into [UserRole.values]; 0=guardian, 1=elderlyWithGuardian, 2=elderlyNoGuardian.
  final int userRoleIndex;

  UserRole get userRole =>
      UserRole.values[userRoleIndex.clamp(0, UserRole.values.length - 1)];

  @override
  State<QAScreen2> createState() => _QAScreen2State();
}

class _QAScreen2State extends State<QAScreen2> {
  /// 0=Daddy, 1=Mommy, 2=Grandpa, 3=Grandma, 4=Other
  int _elderIndex = 0;

  /// 0=Son, 1=Daughter, 2=Nephew, 3=Niece, 4=Other
  int _youIndex = 0;

  final TextEditingController _otherController = TextEditingController();
  final TextEditingController _youOtherController = TextEditingController();

  @override
  void dispose() {
    _otherController.dispose();
    _youOtherController.dispose();
    super.dispose();
  }

  Future<void> _onNextPressed() async {
    final l10n = AppLocalizations.of(context)!;
    // If "Other" is selected, TextField must have a value
    if (_elderIndex == 4 && _otherController.text.trim().isEmpty) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(l10n.qa2OtherRequired),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.dialogOk),
            ),
          ],
        ),
      );
      return;
    }
    if (_youIndex == 4 && _youOtherController.text.trim().isEmpty) {
      await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(l10n.qa2OtherRequired),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(l10n.dialogOk),
            ),
          ],
        ),
      );
      return;
    }

    final elderString = _elderIndex == 4
        ? _otherController.text.trim()
        : [
            l10n.qa2ElderDaddy,
            l10n.qa2ElderMommy,
            l10n.qa2ElderGrandpa,
            l10n.qa2ElderGrandma,
            l10n.qa2ElderOther,
          ][_elderIndex];
    final youString = _youIndex == 4
        ? _youOtherController.text.trim()
        : [
            l10n.qa2YouSon,
            l10n.qa2YouDaughter,
            l10n.qa2YouNephew,
            l10n.qa2YouNiece,
          ][_youIndex];

    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('GuardianQA2Elder', elderString);
    await prefs.setString('GuardianQA2You', youString);

    if (!context.mounted) return;
    
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => QAScreen3(userRoleIndex: widget.userRoleIndex),
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
              // Question (fixed, not scrollable)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        '2.',
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
                        l10n.guardianQA2,
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
                              offset: Offset(0, 1),
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
              SizedBox(height: 24),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 24,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  l10n.qa2ElderLabel,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            _radio(
                              l10n.qa2ElderDaddy,
                              0,
                              _elderIndex,
                              (v) => setState(() => _elderIndex = v),
                            ),
                            _radio(
                              l10n.qa2ElderMommy,
                              1,
                              _elderIndex,
                              (v) => setState(() => _elderIndex = v),
                            ),
                            _radio(
                              l10n.qa2ElderGrandpa,
                              2,
                              _elderIndex,
                              (v) => setState(() => _elderIndex = v),
                            ),
                            _radio(
                              l10n.qa2ElderGrandma,
                              3,
                              _elderIndex,
                              (v) => setState(() => _elderIndex = v),
                            ),
                            _radio(
                              l10n.qa2ElderOther,
                              4,
                              _elderIndex,
                              (v) => setState(() => _elderIndex = v),
                            ),
                            if (_elderIndex == 4) ...[
                              const SizedBox(height: 8),
                              TextField(
                                controller: _otherController,
                                decoration: InputDecoration(
                                  hintText: l10n.qa2OtherHint,
                                  border: const OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 10,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                      SizedBox(width: 3),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 24,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  l10n.qa2YouAreLabel,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            _radio(
                              l10n.qa2YouSon,
                              0,
                              _youIndex,
                              (v) => setState(() => _youIndex = v),
                            ),
                            _radio(
                              l10n.qa2YouDaughter,
                              1,
                              _youIndex,
                              (v) => setState(() => _youIndex = v),
                            ),
                            _radio(
                              l10n.qa2YouNephew,
                              2,
                              _youIndex,
                              (v) => setState(() => _youIndex = v),
                            ),
                            _radio(
                              l10n.qa2YouNiece,
                              3,
                              _youIndex,
                              (v) => setState(() => _youIndex = v),
                            ),
                            _radio(
                              l10n.qa2ElderOther,
                              4,
                              _youIndex,
                              (v) => setState(() => _youIndex = v),
                            ),
                            if (_youIndex == 4) ...[
                              const SizedBox(height: 8),
                              TextField(
                                controller: _youOtherController,
                                decoration: InputDecoration(
                                  hintText: l10n.qa2OtherHint,
                                  border: const OutlineInputBorder(),
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 10,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
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

  Widget _radio(
    String label,
    int value,
    int groupValue,
    ValueChanged<int> onChanged,
  ) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<int>(
              value: value,
              groupValue: groupValue,
              onChanged: (v) {
                if (v != null) onChanged(v);
              },
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              fillColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) return Colors.black;
                return null;
              }),
            ),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 20,
                  shadows: [
                    Shadow(
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                      color: Colors.black.withValues(alpha: 0.25),
                    ),
                    Shadow(
                      offset: const Offset(0, 2),
                      blurRadius: 1,
                      color: Colors.white.withValues(alpha: 0.15),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
