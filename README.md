## Project Matcher

Each user inputs the name of other users they would be willing to work 
with. A bash script then matches all the different users that can "work 
together"


A user can create their profile or update by running:

```
./create.sh _USERNAME_
```


This will prompt the user with the following:

```
jaafarrammal@Sableur-Mac:Project Matcher$ ./create.sh Jaafar

Welcome back Jaafar!


Your current list is:
Omar
Majo
Raphael
Daryl
Hussain
Spyro
Filip


Would you like any users to your preferred partners list? (enter N for
no or a  list of the names otherwise. Please use spaces only to separate
the different user names): Thomas


The following names were successfully added:

Thomas


Your list is now:

Omar
Majo
Raphael
Daryl
Hussain
Spyro
Filip
Thomas
```


To obtain the results, run the results script on the directory with user 
files:

```
./results.sh _USERFILESDIR_
```

An example of a results log:

```
jaafarrammal@Sableur-Mac:Sample1$ cat ResultsJaafar.txt

Jaafar matches are:
Omar
Daryl
Hussain
```

An nice extension for this little script is to run it on a public VM on 
the campus network, with access to college identifiers. This would allow 
people to setup project folders, and sub folders with interest lists 
between the users to match people for projects
