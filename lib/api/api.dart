
import 'package:harvest/models/harvest.dart';
import 'package:harvest/models/seed.dart';
import 'package:harvest/models/song.dart';
import 'package:harvest/models/user.dart';

abstract class Api {
  //get the user
  Future<User> getUser(int userID);

  //get list of users that follow userID
  Future<List<User>> getFollowersFromUser(int userID);

  //get list of users that userID follows
  Future<List<User>> getFollowingFromUser(int userID);
  
  //get playlists that this user has sync'd
  Future<List<Harvest>> getHarvestsFromUser(int userID);

  //create a harvest for a user
  Future<bool> postUserHarvests(int userID, String harvestName, List<int> trends, List<String> playlists);

  //get the seeds that make up a harvest
  Future<List<Seed>> getSeedsFromHarvest(int harvestID);

  //get the up-to-date songs from a harvest
  Future<List<Song>> getSongsFromHarvest(int harvestID);

}