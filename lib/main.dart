import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

// この辺はテンプレ
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  // FirebaseAuthのインスタンス
  FirebaseAuth? firebaseAuth;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firebaseSetUp();
  }

  void firebaseSetUp() async {
    firebaseAuth = FirebaseAuth.instance;
    // ↓認証の状態が変わったら実行されるリスナ webのaddEventListenerみたいなやつ
    firebaseAuth!.authStateChanges()
    .listen((user) {
      print("listening...");
      if(user != null) {
        print("user is not null");
        // ↓もしメールの認証がされていなければ
        if(!user.emailVerified) {
          print("send verify email");
          // 登録したメールアドレスに認証メールを送る処理
          user.sendEmailVerification();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                const Text("メールアドレス"),
                Expanded(child: TextField(controller: emailController,))
              ],
            ),
            Row(
              children: [
                const Text("ぱすわーど"),
                Expanded(child: TextField(controller: passController))
              ],
            ),
            ElevatedButton(onPressed: () {
              // 登録する処理
              String email = emailController.text.toString();
              String pass = passController.text.toString();
              print("pass: ${email} pass: ${pass}");
              if(pass.isEmpty || email.isEmpty) {
                Fluttertoast.showToast(msg: "すべて入力してください");
                return;
              }
              firebaseAuth!.createUserWithEmailAndPassword(email: email, password: pass);
            }, child: const Text("登録")),
            const SizedBox(height: 60,),
            ElevatedButton(onPressed: () {

            }, child: const Text("登録済みの方はこちら"))

          ],
        ),
      ),

    );
  }
}
