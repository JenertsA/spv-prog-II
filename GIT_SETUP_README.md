# Git iestatīšana izstrādes vidē

Lai veiksmīgi lietotu git mūsu wsl sistēmā, nepieciešams veikt vairāks darbības

## Git konfigurācijas iestatīšana

Ubuntu termināli izpildi komandas:

``` bash
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
```

Pēdiņās norādītos piemēru aizpildi ar saviem datiem. Pie E-pasta norādi to pašu, ko izmanto GitHub kontā.

## SSH atslēgas ģenerēšana un pievienošana GitHub

Lai komunicētu ar GitHub servriem ir nepieciešams uzstādīt drošibas atslēgas.
Šīs atslēgas nodrošina to, ka GitHub var uzticēties, ka tieši Tu esi tas, kas mēģina iepušot koda izmaiņas, nevis kāds cits. 

### SSH atslēgas ģenerēšana

GitHub dokumentācijas par atslēgu ģenerēšanu pieejama [šeit](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

Linux pieejami iebūvēti rīki, kas palīdz ar doršības atslēgu ģenerēšanu. 

Ar sekojošo komandu iespējams uzģenirēt privāto/publisko atslēgas pāri. Piemērā esošo epastu nomaini ar epastu, ko izmanto Tavs GitHub. 

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Pie jautājuma - `Enter file in which to save the key (/home/andris/.ssh/id_ed25519):` - spiežam enter (saglabāsim defaultajā lokācijā)
Pie lūguma ievadīt paroli - `Enter passphrase (empty for no passphrase):` - neko neivadam un spiežam enter.

Uzģenerēto atlēgu pāri iespējams atrast `.ssh` direktorijā. 

Kā tur nokļūt? 

1. dodies uz root direktoriju

```bash
cd ~
```

2. apskaties vai `.ssh` direkotrija ir izveidota - izmanto `ls -la` komandu. Ieej `.ssh` direkotirjā

```bash
cd .ssh
```

Šajā direktorijā redzēsi 2 atslēgas: vienu ar `.pub` un otru bez. 
Atlēga ar `.pub` ir publiskā atslēga un būs jāpievieno GitHub.

Otra atslēga ir privātā un nekad nebūtu jāizpauž citiem. 

Seko GitHub instrukcijā, lai pievienotu publisko atslēgu. Instrukcijas pieejama [šeit](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account)

Pēc publiskās atslēgas pielikšanas, izmanto komandu `ssh -T git@github.com`, lai pārbaudītu vai savienojums ir veiksmīgs

```bash
andris@Tinkijs:~$ ssh -T git@github.com
Hi JenertsA! You've successfully authenticated, but GitHub does not provide shell access.
```

