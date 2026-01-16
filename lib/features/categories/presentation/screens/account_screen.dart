import 'package:flutter/material.dart';
import 'package:mahmoud_task_trust/l10n/app_localizations.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Avatar
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
              const SizedBox(height: 20),

              // User Name
              Text(
                'مستخدم',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              Text(
                'user@email.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 30),

              // Account Menu Items
              _buildMenuTile(
                context,
                icon: Icons.person_outline,
                title: 'تعديل الملف الشخصي',
                onTap: () {},
              ),
              _buildMenuTile(
                context,
                icon: Icons.location_on_outlined,
                title: 'العناوين',
                onTap: () {},
              ),
              _buildMenuTile(
                context,
                icon: Icons.payment,
                title: 'طرق الدفع',
                onTap: () {},
              ),
              _buildMenuTile(
                context,
                icon: Icons.history,
                title: 'سجل الطلبات',
                onTap: () {},
              ),
              _buildMenuTile(
                context,
                icon: Icons.support_agent,
                title: 'خدمة العملاء',
                onTap: () {},
              ),
              _buildMenuTile(
                context,
                icon: Icons.settings,
                title: 'الإعدادات',
                onTap: () {},
              ),
              const SizedBox(height: 30),

              // Logout Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                  label: const Text('تسجيل الخروج'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
