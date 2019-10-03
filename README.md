# dev-setup

This cookbook is used to setup my dev environment.

The default recipe installs everything.

- [x] Basic tools and code editor
- [x] C related packages and IDE
- [x] Python related packages and IDE
- [x] Basic web related packages and IDE
- [ ] React-native configuration
- [ ] Androit App related packages and IDE
- [ ] Bashrc and Vim customization
- [ ] Ubuntu environment customization

Once you have created you chef folder and downloaded this cookbook,
you can run the recipes with this command, from the chef folder root:

    sudo chef-client -z -o dev-setup::<recipeName>

    ex.
    sudo chef-client -z -o dev-setup::basictools

