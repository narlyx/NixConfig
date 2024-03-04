{ pkgs, ... }:
{
  users.users = {
    narlyx = {
      name = "narlyx";
      home = "/Users/narlyx";
    };
  };
}