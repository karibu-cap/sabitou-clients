import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/pages_routes.dart';
import '../../themes/app_colors.dart';
import '../../utils/app_layout.dart';
import '../../widgets/base_page.dart';
import '../../widgets/components/sb_container.dart';

/// User profile screen.
class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePageView(
      itemPage: DashboardLabelPage.profile.name,
      child: const Center(
        child: _ProfileBody(),
      ),
    );
  }
}

class _ProfileBody extends StatelessWidget {
  const _ProfileBody();

  @override
  Widget build(BuildContext context) {
    final User user = adminUser;
    final bool isAdmin = user.role == UserType.admin;

    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Account',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    isAdmin ? 'Admin Manager' : 'Inventory Manager',
                  ),
                ],
              ),
              if (isAdmin)
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add_alt_1,
                    color: Colors.blue,
                  ),
                ),
            ],
          ),
          const _Spacer(),
          LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _UserAvatar(
                    imageUrl: user.imageUrl,
                    fullName: '${user.firstName} ${user.lastName}',
                    isOnline: true,
                  ),
                  const SizedBox(width: 20.0),
                  if (isAdmin)
                    const Expanded(
                      child: _AvatarEditButtons(),
                    ),
                ],
              );
            },
          ),
          const SizedBox(height: 16.0),
          _NameFields(firstName: user.firstName, lastName: user.lastName),
          const _Spacer(),
          const Text(
            'Contact Email',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            'Manage your account email address',
          ),
          const SizedBox(height: 16.0),
          _EmailPasswordFields(
            email: user.email,
            password: user.password,
          ),
          const _Spacer(),
          _BusinessSection(business: user.business, isAdmin: isAdmin),
          const SizedBox(height: 10.0),
          _StoreSection(store: user.store, isAdmin: isAdmin),
          const SizedBox(height: 16.0),
          const Text(
            'Account Security',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text(
            'Manage your account security',
          ),
        ],
      ),
    );
  }
}

class _UserAvatar extends StatelessWidget {
  final String fullName;
  final String imageUrl;
  final bool isOnline;

  const _UserAvatar({
    required this.imageUrl,
    required this.fullName,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SbContainer(
          height: 100.0,
          width: 100.0,
          borderRadius: const BorderRadius.all(Radius.circular(100)),
          child: Badge(
            label: const SizedBox.shrink(),
            offset: const Offset(-10, -30),
            alignment: Alignment.bottomRight,
            smallSize: 50,
            backgroundColor:
                isOnline ? AppColors.success500 : AppColors.error500,
            child: ClipOval(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fullName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class _AvatarEditButtons extends StatelessWidget {
  const _AvatarEditButtons();

  @override
  Widget build(BuildContext context) {
    final AppLayout appLayout = AppLayout(context);

    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        runSpacing: 16.0,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(
                (MediaQuery.sizeOf(context).width * 0.3).clamp(90, 250),
                appLayout.isMobile
                ? (MediaQuery.sizeOf(context).height * 0.08).clamp(50, 100)
                : 50,
              ),
            ),
            child: const Text(
              'Upload New Picture',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 16.0),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              fixedSize: Size(
                (MediaQuery.sizeOf(context).width * 0.3).clamp(90, 250),
                50,
              ),
            ),
            child: const Text('Delete Picture', textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}

class _NameFields extends StatelessWidget {
  final String firstName;
  final String lastName;

  const _NameFields({
    required this.firstName,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
            final AppLayout appLayout = AppLayout(context);

        return Wrap(
          runSpacing: 16.0,
          spacing: 16.0,
          children: [
            SizedBox(
              width: !appLayout.isMobile ? (constraints.maxWidth / 2 - 8) : double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('First Name'),
                  TextField(
                    controller: TextEditingController(text: firstName),
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 2.0,        
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400, 
                          width: 2.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2.5,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                        ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: !appLayout.isMobile ? (constraints.maxWidth / 2 - 8) : double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Last Name'),
                  TextField(
                    controller: TextEditingController(text: lastName),
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 2.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 2.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2.5,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                        ),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 15.0, horizontal: 10.0,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _EmailPasswordFields extends StatelessWidget {
  final String email;
  final String password;
  final RxBool isPasswordVisible = false.obs;

  _EmailPasswordFields({
    required this.email,
    required this.password,
  });

  void _togglePassword() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
    final AppLayout appLayout = AppLayout(context);

        return Wrap(
          runSpacing: 16.0,
          spacing: 16.0,
          children: [
            SizedBox(
              width: !appLayout.isMobile ? (constraints.maxWidth / 2 - 8) : double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email'),
                  TextField(
                    controller: TextEditingController(text: email),
                    readOnly: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 2.0,         
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                          width: 2.0,
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      ),
                     focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2.5,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                        ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      prefixIcon: const Icon(Icons.email_outlined),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: !appLayout.isMobile ? (constraints.maxWidth / 2 - 8) : double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Password'),
                  Obx(
                    () => TextField(
                      controller: TextEditingController(text: password),
                      readOnly: true,
                      obscureText: !isPasswordVisible.value,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey.shade400,
                            width: 2.5,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                        prefixIcon: IconButton(
                          icon: Icon(
                            isPasswordVisible.value ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                          ),
                          onPressed: _togglePassword,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _Spacer extends StatelessWidget {
  const _Spacer();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 5.0),
        Divider(thickness: 3.0),
        SizedBox(height: 10.0),
      ],
    );
  }
}


class _BusinessSection extends StatelessWidget {
  final String business;
  final bool isAdmin;
  const _BusinessSection({
    required this.business,
    required this.isAdmin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Business',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text('Manage your business'),
        const SizedBox(
          height: 5.0,
        ),
        Wrap(
          runSpacing: 16.0,
            spacing: 16.0,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green, width: 2.0),
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
              ),
              child: Text(
                business,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            if (isAdmin)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                ),
                child: const Text(
                  'Change the business',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}


class _StoreSection extends StatelessWidget {
  final String store;
  final bool isAdmin;
  const _StoreSection({
    required this.store,
    required this.isAdmin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Store',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text('Manage the store'),
        const SizedBox(height: 5.0),
        Wrap(
          runSpacing: 16.0,
          spacing: 16.0,
          children: [
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.green, width: 2.0),
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 24.0,
                ),
              ),
              child: Text(
                store,
                style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            if (isAdmin)
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                ),
                child: const Text(
                  'Change the store',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}


/// Mock user data.
class User {
  final String imageUrl;
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String contact;
  final String business;
  final UserType role;
  final String store;
  final String password;

  User({
    required this.imageUrl,
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.password,
    required this.email,
    required this.contact,
    required this.business,
    required this.store,
    required this.role,
  });
}

final adminUser = User(
  imageUrl: 'assets/images/avatar-placeholder.png',
  id: '0',
  firstName: 'John',
  lastName: 'Doe',
  email: 'johndoe@sab.tu',
  contact: '+2377777777',
  business: 'Santa Lucia',
  store: 'Santal Lucia-Mendon',
  role: UserType.admin,
  password: 'password',
);

final manUser = User(
  imageUrl: 'assets/images/avatar-placeholder.png',
  id: '0',
  firstName: 'John',
  lastName: 'Doe',
  email: 'johdoe@sab.tu',
  contact: '+2377777777',
  business: 'Santa Lucia',
  store: 'Santal Lucia-Mendon',
  role: UserType.manager,
  password: 'password',
);

enum UserType {
  admin,
  manager,
}
