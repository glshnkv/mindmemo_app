import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mindmemo_app/mindmemo_app.dart';
import 'package:mindmemo_app/models/note_model.dart';
import 'package:mindmemo_app/screens/notes/notes_bloc/notes_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox('notes');

  runApp(MultiBlocProvider(
      providers: [
        BlocProvider<NotesBloc>(create: (context) => NotesBloc()),
      ],
      child: MindMemoApp()));
}
