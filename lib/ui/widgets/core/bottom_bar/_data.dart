part of 'bottom_bar.dart';

final _tabs = [
  _BottomBar(label: 'Write', path: AppRoutes.write, icon: Iconsax.edit_2),
  _BottomBar(
    label: 'Drafts',
    path: AppRoutes.drafts,
    icon: Iconsax.document_text,
  ),
  _BottomBar(
    label: 'Settings',
    path: AppRoutes.settings,
    icon: Iconsax.setting_3,
  ),
  _BottomBar(label: 'Profile', path: AppRoutes.profile, icon: Iconsax.user),
];
