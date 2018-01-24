# dca-demo-custom

# Example Adding InSpec Profile to BJC/DCA Demo

This example shows the implementation of an InSpec profile created
by a user. It runs in conjunction with the BJC-DCA demo. This is
using an existing profile called "ini" and a remediation cookbook
called "my_ini". Basically, the profile is looking for a file called
'/opt/foo.ini' with the line "foo = bar". It's simple, but effectively
shows the process of using a locally developed custom profile,
uploading to Chef Automate, and then applying it to a node. The recipe,
of course, remediates the control in the profile.

Please feel free to use your versions, as the procedures should be about
the same. Note that recipe 'audit-ini' calls the same dca_audit_baseline::audit
recipe but resets the attribute 'audit' 'profiles' to also run the new profile.
If you want to use your own profile, make sure this value is changed.

To make this demo flow smoothly, it is good practice to have it pre-loaded
before the demo begins so you can ready if the customer has the question,
"Can I use my own profiles?" This is premise for the following instructions.

I have included one personal choice, that of loading the profile using
the Chef Automate UI. I know this can done in Visual Studio, but I
believe this "shows" better in the UI, especially since one of the
goals of the demo is to highlight the usability of the Chef Automate
interface. Feel free to change it for your own demo if you disagree.

PREPARATION 
There are 2 ways you can update the existing demo with the custom profile and recipe.
  1.a   Replace existing dca_demo cookbook with the attached version.
        This is the easiest way but if there are future updates to the cookbook  
        the demo may not work properly. It was tested successfully with version 4.2.1.

  1.b   Add the attached dca_demo cookbook artifacts to existing cookbook.
        This is the safest way but make sure all files are copied.
        - recipe audit-ini.rb
        - recipe foobar.rb
        - template foobar.erb
        Increment version in metadata.rb

  2.    From c:\Users\chef\cookbooks execute 'knife cookbook upload dca_demo'
  3.    Copy attached "ini-0.1.0.tar.gz" to c:\users\chef\profiles directory.
  4.    Start the DCA demo and run normally

DEMO PROFILE
1.  In CA, upload c:\users\chef\profiles\ini-0.1.0.tar.gz  into profiles
2.  Open and show the control.
3.  Execute 'Update-RunLists development audit-ini'
4.  Execute 'Invoke-ChefClient development'
5.  Show results

DEMO RECIPE
1.  Open and show the recipe 'foobar.rb'
3.  Execute 'Update-RunLists development foobar'
4.  Execute 'Invoke-ChefClient development'
5.  Show results
