```text
nvim scripts/apex/water_if_else.apex
```

Add 
```apex
String waterLevel = 'full'; /*This variable keeps track of the water level status: full or empty*/
if (waterLevel == 'empty') {
    System.debug('Fill the tea kettle');
    waterLevel = 'full'; /*Once the tea kettle is filled the variable is changed to full*/
} else {
    System.debug('The tea kettle is full');
}

```

* Run
```bash
sf apex run --file scripts/apex/water_if_else.apex --target-org trailheadPlayground
```
and Look for a USER_DEBUG line saying “The tea kettle is full”

```text
nvim scripts/apex/water_if_elseif.apex
```

Prerequisites
Make sure the Salesforce CLI is installed and that you have already authenticated to your Trailhead Playground or dev org.

Recommended one-time checks:

bash
sf org list
sf config set target-org=trailheadPlayground
mkdir -p scripts/apex
sf org list shows your authorized orgs, and setting target-org lets later commands omit the org flag if you want a shorter workflow.

Workflow pattern
Whenever Trailhead says:

Debug -> Open Execute Anonymous Window

Paste code

Check Open Log

Click Execute

View Debug Only

Use this local workflow instead:

Create a .apex file in scripts/apex/.

Paste the anonymous Apex snippet into that file.

Run it with sf apex run --file <file> --target-org trailheadPlayground.

Read the USER_DEBUG lines in the terminal output.

While loop exercise
Create the file:

bash
nvim scripts/apex/while_loop_teatime.apex
Paste this code:

```apex
//Declare an Integer variable called totalGuests and set it to 100
Integer totalGuests = 100;
//Declare an Integer variable called totalAmountSugar and set it to 159 (number of teaspoons in a bag of sugar).
Integer totalAmountSugar = 159;
//Declare an Integer variable called totalAmountTea and set it to 35 (number of teabags).
Integer totalAmountTea = 35;
//Loop: Add a teaspoon of sugar and one tea bag to a tea cup. Serve until there is no sugar or tea left.
while (totalGuests > 0) {
    System.debug(totalGuests + ' Guests Remaining');
    //check ingredients
    if (totalAmountSugar == 0 || totalAmountTea == 0) {
        System.debug('Out of ingredients! Sugar: ' + totalAmountSugar + ' Tea: ' + totalAmountTea);
        break; //ends the while loop
    }
    //add sugar
    totalAmountSugar--;
    //add tea
    totalAmountTea--;
    //guest served
    totalGuests--;
}
```apex
```
Run it:

```bash
sf apex run --file scripts/apex/while_loop_teatime.apex --target-org trailheadPlayground
```

This demonstrates a while loop, which checks its condition before each iteration and may run zero times if the condition starts false.

Do-while loop exercise
Create the file:

```bash
nvim scripts/apex/do_while_loop_teatime.apex
```
Paste this code:

```apex
//Declare an Integer variable called totalGuests and set it to 100
Integer totalGuests = 100;
//Declare an Integer variable called totalAmountSugar and set it to 159 (number of teaspoons in a bag of sugar).
Integer totalAmountSugar = 159;
//Declare an Integer variable called totalAmountTea and set it to 35 (number of teabags).
Integer totalAmountTea = 35;
do {
    //deduct sugar serving
    totalAmountSugar--;
    //deduct tea serving
    totalAmountTea--;
    //deduct guest
    totalGuests--;
    System.debug(totalGuests + ' Guests Remaining!');
    //check ingredients
    if (totalAmountSugar == 0 || totalAmountTea == 0) {
        System.debug('Out of ingredients!');
        break; //ends the loop
    }
} while (totalGuests > 0);
```
Run it:

```bash
sf apex run --file scripts/apex/do_while_loop_teatime.apex --target-org trailheadPlayground
```
This demonstrates a do-while loop, which executes the body once before checking the condition.

Optional log commands
If you want more than the immediate terminal output, Salesforce CLI also includes Apex log commands for listing and tailing logs.

Useful extras:

bash
sf apex tail log --color
sf apex log list
sf apex tail log streams logs in the terminal, which is useful when you want a CLI-first version of watching debug output continuously.

Suggested Neovim flow
A fast Neovim loop for this module is:

Open a new anonymous Apex file under scripts/apex/.

Paste the Trailhead snippet.

Save the file.

Run your Neovim mapping or terminal command for sf apex run --file %.

Read the USER_DEBUG output in the terminal split.

If you added a mapping like :SfApexRun, then each exercise becomes:

text
:edit scripts/apex/while_loop_teatime.apex
:write
:SfApexRun
Minimal command list

```bash
mkdir -p scripts/apex
nvim scripts/apex/while_loop_teatime.apex
sf apex run --file scripts/apex/while_loop_teatime.apex --target-org trailheadPlayground
nvim scripts/apex/do_while_loop_teatime.apex
sf apex run --file scripts/apex/do_while_loop_teatime.apex --target-org trailheadPlayground
```
