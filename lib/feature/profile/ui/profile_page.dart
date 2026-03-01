import 'package:flutter/material.dart';
import 'package:prokemn_app/feature/profile/ui/widget/button_linkeding.dart';
import 'package:prokemn_app/feature/profile/ui/widget/my_profile_card.dart';
import 'package:prokemn_app/feature/profile/ui/widget/trainer_information.dart';
import 'package:prokemn_app/feature/profile/ui/widget/trainer_skills.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prokemn_app/feature/profile/ui/widget/header_card.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: AppSpacing.xxl),
            const SizedBox(height: AppSpacing.xxl),
            MyProfileCard(),
            const SizedBox(height: AppSpacing.md),
            HeaderCard(
              title: 'TRAINER INFO',
              headerColor: AppColors.primaryDark.withValues(alpha: 0.5),
              child: const TrainerInformation(
                name: 'Jeison Vargas',
                role: 'Software Engineer',
                location: 'Neiva, Huila, Colombia',
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            HeaderCard(
              title: 'BATTLE EXPERIENCE',
              headerColor: AppColors.success.withValues(alpha: 0.5),
              child: const _BattleExperienceContent(),
            ),
            const SizedBox(height: AppSpacing.md),
            HeaderCard(
              title: 'TRAINER SKILLS',
              headerColor: AppColors.blueLight.withValues(alpha: 0.5),
              child: const TrainerSkillsContent(
                skills: [
                  (Icons.flutter_dash, 'Flutter', Colors.blue),
                  (Icons.local_fire_department, 'Firebase', Colors.orange),
                  (Icons.storage, 'SQL', Colors.grey),
                  (Icons.api, 'API', Colors.amber),
                  (Icons.storage, 'SUPABASE', AppColors.primary),
                  (Icons.data_object_outlined, 'GOOGLE CLOUD', AppColors.error),
                  (Icons.javascript, 'JAVASCRIPT', AppColors.warning),
                  (Icons.devices_fold_rounded, 'Express', AppColors.success),
                ],
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
            ButtonLinkeding(
              onTap: () => _launchUrl(
                'https://www.linkedin.com/in/jeison-manuel-vargas-vargas-64a713170/',
              ),
            ),
            const SizedBox(height: AppSpacing.xl),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}

class _BattleExperienceContent extends StatelessWidget {
  const _BattleExperienceContent();

  @override
  Widget build(BuildContext context) {
    final items = [
      'FlutterLab | 4.8 years',
      'GraciaLab | 1 year',
      'INTEREDES S.A.S. | 1.3 years',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Colors.orange.shade700,
                  ),
                  const SizedBox(width: 8),
                  Expanded(child: Text(e, style: AppTypography.bodyMedium)),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
