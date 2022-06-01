
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzapp/bloc/cubitApp/state.dart';
import 'package:quizzapp/model/user.dart';


class SocialCubit extends Cubit<SocialStates> {
  SocialCubit() : super(SocialInitialState());

  static SocialCubit get(context) => BlocProvider.of(context);

 UserModel? userModel;

  void getUserData() {
    emit(SocialGetUserLoadingState());

   FirebaseFirestore.instance.collection('users').doc("uId").get().then((value) {
      //print(value.data());
      userModel = UserModel.fromJson(value.data()!);
      emit(SocialGetUserSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(SocialGetUserErrorState(error.toString()));
    });
  }




  void updateUser({
    required String name,
    required String phone,
  }) {
  UserModel model = UserModel(
      name: name,
      phone: phone,
      email: userModel!.email,
      uId: userModel!.uId,

    );

    FirebaseFirestore.instance
        .collection('users')
        .doc(userModel!.uId)
        .update(model.toMap())
        .then((value) {
      getUserData();
    }).catchError((error) {
      emit(SocialUserUpdateErrorState());
    });
  }


}