import 'package:github/github.dart';

class GithubService {

  GitHub _gitHub = GitHub();

  Future<List> getRepolist()async{
    List finalrepo = List();
    var repo = await _gitHub.repositories.listUserRepositories('ASSASSIN-363').toList();
    repo.forEach((element) {finalrepo.add(element.name);});
    return finalrepo;
  }


}