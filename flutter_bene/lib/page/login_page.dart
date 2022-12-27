import 'package:flutter/material.dart';
import 'package:flutter_bene/utils/custom_color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> _isShowPass = ValueNotifier(true);
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Create Personal Account',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: const [
                        Text('Email'),
                        Text('Phone Number'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Username'),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Nusatech',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('Phone Number'),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: '+62 | 872362382',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text('Password'),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text('Refferal ID(Optional)'),
                    const SizedBox(height: 15),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colornusa,
                          minimumSize: const Size.fromHeight(50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Create Account',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
