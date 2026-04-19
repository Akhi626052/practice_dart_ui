# practice_dart_ui

A new Flutter project.

## Solution (Fix Remote Repo)

Agar tum apna GitHub repo connect karna chahte ho:

### Step 1: Purana remote hatao
```bash
git remote remove origin
 ```
### Step 2: Apna repo add karo

```bash
git remote add origin https://github.com/your-username/your-repo.git
Akhi626052
practice_dart_ui
git remote add origin https://github.com/Akhi626052/practice_dart_ui.git
- git remote remove origin
- git remote add origin
```
### Step 3: Changes push karo


### Repo name kaise pata kare:
- GitHub open karo
- Login karo
- Top me Repositories tab pe jao
- Jo repo use karna hai uska naam copy karo

## ✅ Ab next step kya hai:
- Ab code push karo:
```bash
git add .
git commit -m "initial commit"
git branch -M main
git push -u origin main

```



### GitHub me Repository kaise create kare:

1. GitHub open karo
2. Login karo
3. Top right corner me "+" icon pe click karo
4. "New repository" option select karo
5. Repository name do
6. "Create repository" button pe click karo
7. Ab tumhara repo ready hai, uska URL copy karo aur Step 2 me use karo.
8. Ab tum apne code ko GitHub pe push kar sakte ho!

### .gitignore kya hai?
- Ye file batati hai ki kaun si files Git track nahi karega
```bash
📌 Kya karta hai:
Unnecessary files ko push hone se rokta hai
Jaise:
build/ folder
node_modules/
.env (password/API keys)
📌 Kab use kare:
Jab project me aisi files ho jo GitHub pe nahi dalni chahiye
Har project me almost use hota hai ✔️
```

### 🔹 License kya hai?
- Ye batata hai ki log tumhare code ko kaise use kar sakte hain
```agsl
 Kya karta hai:
  Legal permission deta hai
  Define karta hai:
  Use kar sakte hai ya nahi
  Modify kar sakte hai ya nahi
  Commercial use allowed hai ya nahi
 Common licenses:
  MIT → Free use (most common)
  Apache 2.0 → Free + protection
  GPL → Open source hi rakhna padega
```
##  ️Code push karo
- git add .
- git commit -m "initial commit"
- git branch -M main
- git push -u origin main

```bash
🔍 Step-by-step samajh lo:
1️⃣ git add .

👉 Kyun?
Tumhare project ki files abhi Git ke paas “tracked” nahi hoti
Isliye pehle unhe select (stage) karna padta hai

👉 Simple:
“Ye saari files push karni hain” batana Git ko

2️⃣ git commit -m "initial commit"

👉 Kyun?
Git directly push nahi karta, pehle commit chahiye hota hai

👉 Simple:
Files ka ek snapshot/save bana diya (local me)

3️⃣ git branch -M main

👉 Kyun?
Default branch kabhi master hoti hai, GitHub pe main hoti hai

👉 Simple:
Branch ka naam match kar diya

4️⃣ git push -u origin main

👉 Kyun?
Ab finally code GitHub pe bhejna hai

👉 Simple:
Local → GitHub upload.
```
```bash
##  Next time kya karna padega?
First time ke baad itna lamba process nahi:

git add .
git commit -m "update"
git push
## 🎯 Short flow:
add → files select
commit → save
push → GitHub pe upload
```
```bash
⚠️ Note:
git branch -M main ❌ dobara nahi karna
git push -u origin main ❌ sirf first time hota hai
```

```bash
🔍 Kyun har baar?

Git ka flow fix hota hai:

add → kaunse changes bhejne hain
commit → unka record banana
push → GitHub pe bhejna

👉 Chahe tumne sirf ek ElevatedButton hi banaya ho, Git ke liye wo bhi ek change hai.
```
----------------------------------------------------------------------------------------------

- git branch -M main
## Ek nayi branch create ho gayi ✔️
- git branch login-feature

## ✅ New branch bana sakte ho:
- git branch login-feature

## ✅ Switch kar sakte ho:
- git checkout login-feature

## ✅ Kaam kar sakte ho alag se:
- Bug fix
- New feature
- Testing

-----------------------------------------------------------------
## 🔍 Kaise dekho?
## ✅ 1. Terminal me
- git branch

## 👉 Output:

* main

ya

* master

👉 * = current branch

🎯 Short me:
Branch = code ka version/line
main = default branch
git branch -M main = branch ka naam set karna

🔥 Real scenario:
- git init
- git branch -M main   # branch ko main bana diya
- git add .
- git commit -m "first commit"
- git push -u origin main
⚠️ Important:
Ye command har baar nahi chalani ❌
Sirf initial setup ya rename ke time ✔️

## chalani hai keval
har change ke liye 3 commands chalti hain
- git add .
- git commit -m "button added"
- git push

## Git ka flow fix hota hai:

add → kaunse changes bhejne hain
commit → unka record banana
push → GitHub pe bhejna

👉 Chahe tumne sirf ek ElevatedButton hi banaya ho, Git ke liye wo bhi ek change hai.
git commit -m "added elevated button UI"

- git branch -M main
🔹 git branch -M main kya hai?
👉 Ye command branch ka naam change (rename) karti hai
🔍 main ka matlab:
Ye default branch ka naam hota hai (GitHub me)
Ye koi file nahi hai ❌
Ye ek branch (line of work) hai ✔️
🔹 Branch kya hota hai?

👉 Branch = alag version / line of code

Example:
main → stable code (final version)
feature-login → login feature ka kaam
bug-fix → bug fix ka kaam



- git branch // check current branch
- git branch login-feature // new branch create
- git checkout login-feature // switch to new branch
- git push -u origin login-feature
- git checkout main // switch back to main branch
- git merge login-feature // merge login-feature into main
- git push // push changes to GitHub
- git branch -d login-feature // delete the feature branch after merging
- git branch -M main // rename current branch to main (if needed)
- git push -u origin main // push the renamed branch to GitHub
## branch create karna code
- git branch branch-name
## branch switch karna code
- git checkout main
## 🔥 Direct create + switch (best use)
- git checkout -b branch-name
- git branch
- 
- Short:
  Create → git branch name
  Create + switch → git checkout -b name 👍


🎯 Short:
Local → git branch se dikhegi
GitHub → git push ke baad dikhegi
Naam → login-feature hi rahega


🔹 Best practice (companies me):

👉 Meaningful naam use karo:

Feature ke liye → feature/login
Bug fix → bugfix/header-issue
UI change → ui/home-screen
- git branch feature/payment



git checkout branch-name
# code change
- git add .
- git commit -m ""
- git push

- git checkout main
- git merge branch-name
- git push

-----------------------------------------------------------------------
🔹 git init kya karta hai?
- git init
👉 Ye tumhare folder ko Git project (repository) bana deta hai
🔍 Kya hota hai andar?
Ek hidden folder banta hai → .git
Ye folder Git ka pura data store karta hai
(commits, branches, history, etc.)

🔹 Kab use karte hain?
👉 Jab:
Tum naya project start kar rahe ho
Aur usko Git se track karna chahte ho
🔹 Example:
- mkdir my_project
- cd my_project
- git init
👉 Ab:
Ye folder Git repo ban gaya ✔️
Tum changes track kar sakte ho
⚠️ Important:
git init sirf ek baar chalate hain (starting me)
Baar-baar chalane ki zarurat nahi

  ✅ 1. Command se check karo
  git status

👉 Agar output aata hai (error nahi):

On branch main
No commits yet

✔️ Matlab folder Git repo hai

❌ Agar repo nahi hota to:
fatal: not a git repository


# Delete branch code rong push karne ke baad branch delete karna hai to: but delete nahi hota hai to yah process karo:
- git branch
output: * login-feature
          master
- git rebase --abort
output: No rebase in progress?
- git checkout -f master,main
output: Switched to branch 'master'
- git branch -D login-feature
output: Deleted branch login-feature (was 1234567).
- git branch
output: * master

# check project clean hai ya nahi
- git status
- 