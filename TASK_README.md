# Iepazīšanās uzdevums

Šis uzdevums Tev liks vairāk iepazīties ar mūsu izstrādes vidi.
Sagatavos tev idarbam ar Ruby konteinerizētā vidē.

Tavs uzdevums ir izveidot `Fork` šim repositorijam, tas ļaus saglabāt Tavas izmaiņas Tavā repositorijā, kas būs kā "Klons" šim orģinālajam.

Vairāk par Fork funkciju vari palasīt [šeit](https://docs.github.com/en/get-started/quickstart/fork-a-repo)

:heavy_exclamation_mark: Svarīgi :heavy_exclamation_mark: izņemiet "Ķeksi" no opcijas `Copy the main branch only`

Izmanto Fork opciju GitHub, pēc tam atver šo failu savā repositorijā.

Tagad Tev pašam ir sava kopija ar visu izstrādes vidi, varēsi šeit darboties, zinot, ka orģināls ir neskarts.

## Repositorija klonēšana uz lokālas iekārtas (Git repository cloning)

Šobrīd vis kods atrodas versiju kontroles serverī GitHub.

Šeit to ir ērti apskatīt, kopīgot, veikt komentārus un citādi pārvaldīt. GitHub nav ērta vieta, kur izstrādāt kodu. Līdz ar to mums nepieciešams pārnest kodu uz Tavu iekārtu.

### Pieslēdzies Ubuntu

- Atver CMD logu uz Windows iekārtas
- Pieslēdzies uzstādītajai Ubuntu distribūcijai ar komandu `Ubuntu`. Piemērs apskatāms zemāk.

```Windows terminal
Microsoft Windows [Version 10.0.22621.2215]
(c) Microsoft Corporation. All rights reserved.

C:\Users\jener> Ubuntu
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

andris@Tinkijs:~$
```

### Izveido direktoriju priekš visiem Taviem projektiem

Lai viss kods būtu vienuviet iesaku izveidot jaunu direktoriju ar nosaukumu `code`. Parasti šo direktoriju izmanto visu nesaistīto projektu glabāšanai. Viena vieta, kur dzīvo viss Tavs kods.

Izmanto Linux komandu `mkdir` - make directory

Vairāk par šo komandu lasi [šeit](https://www.geeksforgeeks.org/mkdir-command-in-linux-with-examples/)

``` bash
mkdir code
```

Pēc tam izmantojot komandu `ls` - list, var apskatīt visus failus esošajā direktorijā. Kopā ar komandu izmantosim papildu opcijas `-la` jeb `-l -a`. Tas ļaus mums redzēt visus failus, direktorijas ar papildu informāciju.

Vari pamēģināt `ls` komandu gan ar opcijām, gan bez, lai redzētu atšķirību.

Vairāk par šo komandu lasi [šeit](https://www.geeksforgeeks.org/ls-command-in-linux/)

``` bash
ls -la
```

Tev vajadzētu redzēt sarakstu, kur viena no direktorijām ir tikko izveidotā `code`

```bash
andris@Tinkijs:~$ ls -la
total 28
drwxr-x--- 4 andris andris 4096 Sep  8 08:53 .
drwxr-xr-x 3 root   root   4096 Sep  8 08:16 ..
-rw-r--r-- 1 andris andris  220 Sep  8 08:16 .bash_logout
-rw-r--r-- 1 andris andris 3771 Sep  8 08:16 .bashrc
drwx------ 2 andris andris 4096 Sep  8 08:17 .cache
-rw-r--r-- 1 andris andris    0 Sep  8 08:17 .motd_shown
-rw-r--r-- 1 andris andris  807 Sep  8 08:16 .profile
drwxr-xr-x 2 andris andris 4096 Sep  8 08:53 code
```

Lai pārvietotos uz `code` direktoriju izmanto komandu `cd` - change directory

``` bash
cd code
```

Šī komanda ļauj pārvietoties starp direktorijām, pa vienai vai vairākām uzreiz, šo komandu nāksies izmantot ļoti bieži, iepazīsties ar tās aprakstu [šeit](https://www.geeksforgeeks.org/cd-command-in-linux-with-examples/)

Jautājumi par ko vērts padomāt:

- Kā pārvietoties uz "atpakaļu"
- Kā pārvietoties 2 vai vairāk direktoirjas uz priekšu ar vienu komandu

Lai pārliecinātos, ka esi pareizajā direktorijā, vari izmantot komandu `pwd` - print working directory

``` bash
andris@Tinkijs:~$ cd code/
andris@Tinkijs:~/code$ pwd
/home/andris/code
```

### Repositorija klonēšana - clonting the repository

Ubuntu bez papildus instalēšanas ir pieejams git package, tādēļ varam izmantot `git` komandas.

Izmantosim komandu `git clone`, lai klonētu Tavu fork repositoriju uz Tavas iekārtas.

Vairāk par šo procesu lasi [šeit](https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository)

``` bash
git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY
```

Piemērs:

``` bash
andris@Tinkijs:~/code$ git clone https://github.com/JenertsA/spv-prog-II
Cloning into 'spv-prog-II'...
remote: Enumerating objects: 39, done.
remote: Counting objects: 100% (39/39), done.
remote: Compressing objects: 100% (26/26), done.
remote: Total 39 (delta 7), reused 39 (delta 7), pack-reused 0
Receiving objects: 100% (39/39), done.
Resolving deltas: 100% (7/7), done.
```

### Koda bāzes atvēršana

Galvenokārt koda rakstīšanai izmantosim Visual Studio code.
Linux pieejama komanda `code`, kas atver norādīto direktoriju vai failu Visual Studio code. Tā kā izmantoja WSL, VSCode iestatīs visu nepieciešamo, lai pieslēgtos WSL failu sistēmai.

Tip: failu un direktoriju nosaukumi nav jāraksta pilnā formātā. Ieraksti pirmo atslēgas vārdu, piemēram `spv` un piespied `tab` taustiņu. Nostrādāt automātiskā pabeigšana, ja ir tikai viens iespējamais rezultāts.

``` bash
code spv-prog-II
```

Veiksmīga izpilde izskatīsies šādi:

``` bash
andris@Tinkijs:~/code$ code spv-prog-II/
Installing VS Code Server for x64 (6c3e3dba23e8fadc360aed75ce363ba185c49794)
Downloading: 100%
Unpacking: 100%
Unpacked 1797 files and folders to /home/andris/.vscode-server/bin/6c3e3dba23e8fadc360aed75ce363ba185c49794.
```

## Hello World

Mēģināsim palaist Ruby kodu izmantojot mūsu Docker vidi. Izmēģināsim Git un Github lietošanu.

Apskati failu `backend/ruby_app/app/bin/hello.rb`

Kodam vajadzetu būt pašsaprotamam, bet jautājums kā šo failu palaist un izpildīt šo komandu. 

### Docker palaišanai

No Ubuntu konsoles, atrodoties `spv-prog-II` direktorijā palaidiet komandu:

```
bin/spv up
```

Šī komanda startēs mūsu izstrādes konteineri. Gadījuma, ja saņem kļūdu par permission trūkumu, palaid komandu ar `sudo` - ar administratora tiesībām

```
sudo bin/spv up
```

veiksmīgā izpildes gadījumā palaidīsies Jūsu konteineris

```bash
andris@Tinkijs:~/code/spv-prog-II$ bin/spv up
[+] Running 1/0
 ✔ Container spv-ruby-app  Created                                                                                 0.0s
Attaching to spv-ruby-app
spv-ruby-app  | The Gemfile specifies no dependencies
spv-ruby-app  | Bundle complete! 0 Gemfile dependencies, 1 gem now installed.
spv-ruby-app  | Bundled gems are installed into `/bundled_gems`
spv-ruby-app  | development-session: 1 windows (created Fri Sep  8 08:12:27 2023)
spv-ruby-app  | tail: cannot open 'log/development.log' for reading: No such file or directory
```

Šis termināļa logs ir Tavs Docker terminālis. Atstāj to vaļā un jaunā tabā vai logā atver jaunu ubuntu instanci

### Pieslēgšanās Docker konteinera terminālim

Jaunajā Ubutnu termināļa logā dodies uz `spv-prog-II` projektu

```bash
cd code/spv-prog-II
```

Izpildi komandu, lai pieslēgtos konteinerim

```bash
bin/spv console
```

Veiksmīgs iznākums:

```bash
andris@Tinkijs:~/code/spv-prog-II$ bin/spv console
root@930b4b7620b4:/app#
```

Šis ir Bash terminālis Docker konteinerī. Šeit ir pieejami ne tikai visi mūsu izstrādes vides faili, bet arī Ruby izstrādes rīki

### Ruby faila palaišana

Izpildiet komandu `ruby` norādot kuru failu palaist

Šajā gadījumā:

```bash
ruby bin/hello.rb
```

veiksmīgs iznākums:

```bash
root@52a0109e4701:/ruby/app# ruby bin/hello.rb
Hello World!
```

Esi veiksmīgi izpildījis ruby programmu!


## Hello World pārveidošana
Lai atkārotu programmēšanas algoritmus un domāšanu, mēģināsim vienkāršoti modificēt šo iepazīšanās programmu. 

Kods atrodams failā `backend/ruby_app/app/bin/hello.rb`

### Jauna Git zara izveide

Labā prakse pirms koda pārveidošana ir izveidot jaunu git zaru, kurā strādāsi un veiksi uzdevumu.
Šādā veidā vienmēr saglabāsi esošo kodu stāvoklī, kas nav salauzts un varēsi strādāt pie sava risinājuma netraucēti. 

Ubunutu terminālī (wsl terminālis), atrodoties repositorijā (spv-prog-II) ievadi git komandu, kas izveido jaunu zaru.

`git checkout -b task/spv-1/hello-world-modification`

analizējot komandu: 
- `git` - izsaucam git komandu
- `checkout` - pārslēgties uz citu zaru
- papildus opcija `-b` izveidot jaunu zaru
- `task/spv-1-1/hello-world-modification` zara nosaukums

zara nosaukumam izmantosim šādu paternu. Viegli saprast, ka šis zars ir uzdevuma pildīšanai, uzdevuma numurs ir `1` un uzdevums saistīts ar hello-world koda modifikāciju. 

Vairāk par [git checkout](https://www.atlassian.com/git/tutorials/using-branches/git-checkout)

### Pirmais uzdevums

pārveido kodu sekojot šīm norādēm:
 - izveidot masīvu (*array*) ar nosaukumu `hello_messages`, kas satur sveicienus vismaz 5 dažādās valodās
 - izmantojot `each` enumeratoru (*enumerator*) tikko izveidotajam masīvam, izvadi katru no sveicieniem. 

 Aptuvenais iegūstamais rezultāts konsolē:

```
Hello World
Esi sveika Pasaule
...
```

Resursi uzdevuma izpildei: 
 - [Ruby dokumentācija `Array` klasei](https://ruby-doc.org/3.2.0/Array.html)
 - [Ruby dokumentācija enumeratoru metodēm, t.sk. `each`](https://ruby-doc.org/3.2.0/Enumerator.html#method-i-each)


#### Versiju kontroles izmantošana

Kad esi pabeidzis uzdevumu vai nokļuvis līdz svarīgam pieturas punktam ir vērts iekomitēt (*commit*) izmaiņas versiju kontrolē (saglabāt izmaiņas uz zara). 

Var izmantot VSCode iebūvētos palīgrīkus vai izmantot CLI (termināļa rīkus)

Vairāk par VSCode versijas kontrolēs rīkiem [šeit](https://code.visualstudio.com/docs/sourcecontrol/overview)

Primajā reizē izmantojot `git commit` būs nepieciešamas iestatīt konfigurāciju. 
Seko norādēm `GIT_SETUP_README.md` failā, lai iestatītu visu nepieciešamo.

Komitiem izmanto aprakstošus komentārus un pievieno tikai tos failus,
kas saistīti ar vienu funkcionalitāti vai izstrādes posmu.
Labāk daudz mazu komitu, nekā viens liels. 


### Otrais uzdevums

Izveido jaunu branchu ar nosaukumu `task/spv-1-2/...`.
Tu gribi, lai iepriekšējais izpildītais uzdevums paliek neskarts, kad veiksi jaunas modifikācijas priekš 1.2 uzdevuma izpildes.
Daudzpunktes vietā izdomā atbilstošu nosaukumu pēc uzdevuma izpildes. 

Šobrīd mūsu sveicieni ielikti vienā sarakstā, bez nekādas identifikācijas kādā valodā tas ir. 

Tavs uzdevums ir pārveidot esošo kodu, lai tas izmantotu `hash` datu struktūru.
Hasham `key` norādi valodas nosaukumu, `latvian`, bet `value` ieraksti attiecīgo sveicienu. 

Tā kā jaunais mainīgais ne tikai apraksta sveicienu ziņas,
bet satur arī informāciju kādā valodās tās rakstītas, mainīgā nosaukums `hello_messges` vairs nav atbilstošs. 

Šādus mainīgos parasti sauc par mappingiem. Tas nozīmē, ka mēs sasaistām vienu lielumu ar citu. 
Šajā gadījumā valodu ar sveicienu. Mans piedāvātais nosaukums ir `language_hello_message_map`

Pārveido kodu tā, lai katra izvadītā rindiņa būtu apmēram šāda:

```
Hello World in English: "Hello World"
Hello World in Latvian: "Esi sveika Pasaule"
```

Izpēti norādītos resursu, tas palīdzēs gan ar teksta interpolāciju, gan cietiem noderīgiem padomiem. 

Pēc uzdevuma izpildes vai tā izpildes laikā neaizmirsti veikt komitus, lai saglabātos Tavs izmaiņas versiju kontrolē. 

Resursi uzdevuma izpildei: 
- [Ruby dokumentācija `Hash` klasei](https://ruby-doc.org/3.2.0/Hash.html)
- [Tekstu interpolācija Ruby valodā](https://ruby-for-beginners.rubymonstas.org/bonus/string_interpolation.html)
- [Simbolu izmantošana kā `key`](https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-hashes-and-symbols-u/cheatsheet)
- [Konstanšu definēšana Ruby](https://www.rubyguides.com/2017/07/ruby-constants/)

### Trešais uzdevums 

Izveido jaunu zaru pēc iepriekšējās nosaukumu stratēģijas priekš 1.3 uzdevuma.

Pārveido kodu tā, lai lietotājs var ievadīt kādu valodu angļu valodā,
piemēram, `latvian` un viņam tiktu izvadīts atbilstošais sveiciens. 

Padomā par šādiem gadījumiem un izdomā tiem piemērotus risinājumus:
 - palaižot programmu kā lietotājs zinās kas jādara? 
 - lietotājs ievad valodu, kas nav Tavā sarakstā
 - lietotājs grib ievadīt pieprasījumu vairākas reizes bez nepieciešamības palaist to katru reizi
 - citu tā saucamos 'edge cases', ko lietotājs varētu ievadīt un programma varētu 'salūzt'

## Neliela pārbaude pēc uzdevumu izpildes

Izpēti ruby dokumentāciju un atbildi uz jautājumiem:
 - Ko dara `each` metode?
 - Kādiem objektiem pieejama each metode? 
 - Kā iespējams ievietot mainīgo tekstā ruby valodā? 
 - Ar ko atšķiras `Hash` no `Array`? 








