import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:prokemn_app/uikit/pokemn_ui_kit.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            _buildMainProfileCard(),
            const SizedBox(height: AppSpacing.md),
            _buildInfoCard(
              title: 'TRAINER INFO',
              headerColor: AppColors.warning,
              child: const _TrainerInfoContent(),
            ),
            const SizedBox(height: AppSpacing.md),
            _buildInfoCard(
              title: 'BATTLE EXPERIENCE',
              headerColor: AppColors.success,
              child: const _BattleExperienceContent(),
            ),
            const SizedBox(height: AppSpacing.md),
            _buildInfoCard(
              title: 'TRAINER SKILLS',
              headerColor: AppColors.blueLight,
              child: const _TrainerSkillsContent(),
            ),
            const SizedBox(height: AppSpacing.xl),
            _buildLinkedInButton(context),
            const SizedBox(height: AppSpacing.xl),
          ],
        ),
      ),
    );
  }

  Widget _buildMainProfileCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.pokemonIce.withValues(alpha: 0.6),
        border: Border.all(color: AppColors.primary, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.8),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.primary),
                ),
                child: Icon(
                  Icons.person,
                  size: 48,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jeison Vargas',
                      style: AppTypography.h4.copyWith(
                        color: AppColors.primaryDark,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text('Age: 26', style: AppTypography.bodyMedium),
                    Text('Location: Colombia', style: AppTypography.bodyMedium),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Icon(
              Icons.sports_esports,
              size: 32,
              color: Colors.red.shade400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required Color headerColor,
    required Widget child,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: .all(color: AppColors.primary, width: 2),
        borderRadius: .circular(12),
      ),
      clipBehavior: .antiAlias,
      child: Column(
        crossAxisAlignment: .stretch,
        children: [
          Container(
            padding: .symmetric(vertical: 10, horizontal: 12),
            color: headerColor,
            child: Row(
              crossAxisAlignment: .center,
              mainAxisAlignment: .spaceBetween,
              children: [
                Icon(Icons.eco, size: 18, color: Colors.green.shade800),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: AppTypography.h6.copyWith(
                    color: Colors.black87,
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(width: 8),
                Icon(Icons.eco, size: 18, color: Colors.green.shade800),
              ],
            ),
          ),
          Padding(padding: const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }

  Widget _buildLinkedInButton(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchUrl('https://www.linkedin.com/in/tu-perfil'),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.15),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.link, color: Colors.white, size: 24),
            const SizedBox(width: 12),
            Text(
              'VIEW PROFILE ON LINKEDIN',
              style: AppTypography.button.copyWith(
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
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

class _TrainerInfoContent extends StatelessWidget {
  const _TrainerInfoContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _InfoRow(label: 'Name:', value: 'Jeison Vargas'),
        const SizedBox(height: 8),
        _InfoRow(label: 'Role:', value: 'Software Engineer'),
        const SizedBox(height: 8),
        _InfoRow(label: 'Location:', value: 'Neiva, Huila, Colombia'),
      ],
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 90,
          child: Text(
            label,
            style: AppTypography.label.copyWith(color: AppColors.textSecondary),
          ),
        ),
        Expanded(child: Text(value, style: AppTypography.bodyMedium)),
      ],
    );
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

class _TrainerSkillsContent extends StatelessWidget {
  const _TrainerSkillsContent();

  @override
  Widget build(BuildContext context) {
    final skills = [
      (Icons.flutter_dash, 'Flutter', Colors.blue),
      (Icons.local_fire_department, 'Firebase', Colors.orange),
      (Icons.storage, 'SQL', Colors.grey),
      (Icons.api, 'API', Colors.amber),
      (Icons.storage, 'SUPABASE', AppColors.primary),
      (Icons.data_object_outlined, 'GOOGLE CLOUD', AppColors.error),
      (Icons.javascript, 'JAVASCRIPT', AppColors.warning),
      (Icons.devices_fold_rounded, 'Express', AppColors.success),
    ];
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      alignment: WrapAlignment.center,
      children: skills
          .map(
            (s) => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: .circle,
                    border: .all(color: s.$3, width: 2),
                    color: s.$3.withValues(alpha: 0.3),
                  ),
                  child: Icon(s.$1, color: s.$3, size: 28),
                ),
                const SizedBox(height: 4),
                Text(s.$2, style: AppTypography.caption),
              ],
            ),
          )
          .toList(),
    );
  }
}
