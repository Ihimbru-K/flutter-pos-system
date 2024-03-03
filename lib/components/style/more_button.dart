import 'package:flutter/material.dart';
import 'package:possystem/constants/icons.dart';

class MoreButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MoreButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      enableFeedback: true,
      tooltip: MaterialLocalizations.of(context).moreButtonTooltip,
      icon: const Icon(KIcons.more),
    );
  }
}

class EntryMoreButton extends StatelessWidget {
  final VoidCallback onPressed;

  const EntryMoreButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      enableFeedback: true,
      tooltip: MaterialLocalizations.of(context).moreButtonTooltip,
      icon: const Icon(KIcons.entryMore),
    );
  }
}

class NavToButton extends StatelessWidget {
  final VoidCallback onPressed;

  const NavToButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: '前往',
      icon: const Icon(KIcons.navTo),
    );
  }
}
