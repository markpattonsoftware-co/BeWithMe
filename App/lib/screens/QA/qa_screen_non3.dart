import 'package:flutter/material.dart';
import 'package:be_with_me/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/user_role.dart';
import '../../widgets/gradient_background.dart';
import 'qa_screen_non4.dart';

/// QA step 2: relationship between user and elder. Two radio groups (elder role, your role).
class QAScreenNon3 extends StatefulWidget {
  const QAScreenNon3({super.key, required this.userRoleIndex});

  /// Index into [UserRole.values]; 0=guardian, 1=elderlyWithGuardian, 2=elderlyNoGuardian.
  final int userRoleIndex;

  UserRole get userRole =>
      UserRole.values[userRoleIndex.clamp(0, UserRole.values.length - 1)];

  @override
  State<QAScreenNon3> createState() => _QAScreenNon3State();
}

class _QAScreenNon3State extends State<QAScreenNon3> {
  /// 0=Daddy, 1=Mommy, 2=Grandpa, 3=Grandma, 4=Other
  int _elderIndex = 0;

  final TextEditingController _otherController = TextEditingController();  

  @override
  void dispose() {
    _otherController.dispose();
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
    
    final elderString = _elderIndex == 4
        ? _otherController.text.trim()
        : [
            l10n.qa2ElderDaddy,
            l10n.qa2ElderMommy,
            l10n.qa2ElderGrandpa,
            l10n.qa2ElderGrandma,
            l10n.qa2ElderOther,
          ][_elderIndex];
    
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('nonGuardianQA3Elder', elderString);
    
    if (!context.mounted) return;
    
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => QAScreenNon4(userRoleIndex: widget.userRoleIndex),
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
                        '3.',
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
                        l10n.nonGuardianQA3,
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
                            SizedBox(height: 8),
                            _radio(
                              l10n.qa2ElderDaddy,
                              0,
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
                              l10n.qa2ElderOther,
                              4,
                              _elderIndex,
                              (v) => setState(() => _elderIndex = v),
                            ),
                            
                          ],
                        ),
                      ),
                      SizedBox(width: 3),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 8),
                            _radio(
                              l10n.qa2ElderMommy,
                              1,
                              _elderIndex,
                              (v) => setState(() => _elderIndex = v),
                            ),
                            
                            _radio(
                              l10n.qa2ElderGrandma,
                              3,
                              _elderIndex,
                              (v) => setState(() => _elderIndex = v),
                            ),
                            if (_elderIndex == 4) ...[
                              
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
