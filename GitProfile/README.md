# GitProfile

Script to switch between git user profiles when working on a shared system.  
  
Create a file called ```.gitprofiles``` in the same directory. Use the following template for profile config.  
```
[profile_name1]
name=UserName1
email=UserEmail1

[profile_name2]
name=UserName2
email=UserEmail2

[profile_name3]
name=UserName3
email=UserEmail3
```
See [example](https://github.com/kienme/Scripts/blob/master/GitProfile/.gitprofiles).

## Usage
```
./reconfig.sh profile_name
```