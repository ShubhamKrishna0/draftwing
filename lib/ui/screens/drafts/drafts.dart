import 'package:draftwing/blocs/draft/bloc.dart';
import 'package:draftwing/models/response/draft_response.dart';
import 'package:draftwing/router/routes.dart';
import 'package:draftwing/services/fault/faults.dart';
import 'package:draftwing/ui/animations/bottom_animation.dart';
import 'package:draftwing/ui/widgets/core/header/core_header.dart';
import 'package:draftwing/ui/widgets/design/button/button.dart';
import 'package:draftwing/ui/widgets/design/chip/chip.dart';
import 'package:draftwing/ui/widgets/design/gradients/icon.dart';
import 'package:draftwing/ui/widgets/design/modal/_preview_modal.dart';
import 'package:draftwing/ui/widgets/design/modal/guidelines/guidelines.dart';
import 'package:draftwing/ui/widgets/headless/scroll_column_expandable.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:provider/provider.dart';

import 'package:draftwing/configs/configs.dart';

import 'package:draftwing/ui/widgets/core/screen/screen.dart';
import 'package:shimmer/shimmer.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:draftwing/utils/flash.dart';
import 'package:draftwing/ui/widgets/design/full_screen_loader/full_screen_loader.dart';

part 'widgets/_body.dart';
part 'widgets/_card.dart';
part 'widgets/_skeleton.dart';
part 'widgets/_delete_alert.dart';

part 'listeners/_delete_draft.dart';
part '_state.dart';

class DraftsScreen extends StatefulWidget {
  const DraftsScreen({super.key});

  @override
  State<DraftsScreen> createState() => _DraftsScreenState();
}

class _DraftsScreenState extends State<DraftsScreen> {
  @override
  void initState() {
    super.initState();
    final bloc = DraftBloc.b(context);
    final state = bloc.state;
    bloc.add(DraftFetchEvent(force: state.drafts.isDefault));
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return ChangeNotifierProvider<_ScreenState>(
      create: (_) => _ScreenState(),
      child: const _Body(),
    );
  }
}
