abstract class NewseStates{}

// ignore: camel_case_types
class initialStates extends NewseStates{}
// ignore: camel_case_types
class bottomnavStates extends NewseStates{}


class loadingStates extends NewseStates{}
class getBusinessSucess extends NewseStates{}
class getBusinessEroor extends NewseStates{
   late final  String error ;
   getBusinessEroor(this.error);
}
class loadingSportsStates extends NewseStates{}
class getSportsSucess extends NewseStates{}
class getSportsEroor extends NewseStates{
   late final  String error ;
   getSportsEroor(this.error);
}

class loadingScienceStates extends NewseStates{}
class getScienceSucess extends NewseStates{}
class getScienceEroor extends NewseStates{
   late final  String error ;
   getScienceEroor(this.error);
}




