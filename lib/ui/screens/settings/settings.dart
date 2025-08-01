import 'package:draftwing/providers/app.dart';
import 'package:draftwing/services/version.dart';
import 'package:draftwing/ui/widgets/core/header/core_header.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

import 'package:draftwing/configs/configs.dart';

import 'package:draftwing/ui/widgets/core/screen/screen.dart';

part 'widgets/_body.dart';

part '_state.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
